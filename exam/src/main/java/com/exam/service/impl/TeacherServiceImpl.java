package com.exam.service.impl;

import cn.hutool.core.collection.CollectionUtil;
import cn.hutool.core.util.StrUtil;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.exam.dao.StudentDao;
import com.exam.dao.TeacherDao;
import com.exam.dto.QueryUserParam;
import com.exam.entity.DataWithNum;
import com.exam.po.*;
import com.exam.service.ISchoolService;
import com.exam.service.IStudentService;
import com.exam.service.ITeacherService;
import com.exam.service.IUserManagerService;
import com.exam.vo.StudentResp;
import com.exam.vo.TeacherResp;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.*;
import java.util.stream.Collectors;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author jone
 * @since 2024-03-24
 */
@Service
public class TeacherServiceImpl extends ServiceImpl<TeacherDao, TeacherBean> implements ITeacherService {
    @Resource
    IUserManagerService userManagerService;

    @Resource
    ISchoolService schoolService;
    @Override
    public DataWithNum<List<TeacherResp>> queryUserList(QueryUserParam param) {
        Integer pageIndex = param.getPageIndex();
        Integer pageSize = param.getPageSize();
        String searchWord = param.getSearchWord();

        Page<TeacherBean> page = new Page<>(pageIndex, pageSize);
        Page<TeacherBean> page1 = this.page(page, new QueryWrapper<TeacherBean>().lambda().like(StrUtil.isNotBlank(searchWord), TeacherBean::getTeacherName, searchWord));
        List<TeacherBean> records = page1.getRecords();
        long total = page1.getTotal();
        if (CollectionUtil.isEmpty(records)){
            return new DataWithNum<>(Collections.emptyList(), total);
        }
        // 获取用户信息
        Set<Integer> userIds = records.stream().map(TeacherBean::getUserId).collect(Collectors.toSet());
        List<UserBean> list = userManagerService.list(new QueryWrapper<UserBean>().lambda().in(UserBean::getUserId, userIds));
        Map<Integer, UserBean> userBeanMap = list.stream().collect(Collectors.toMap(UserBean::getUserId, sig -> sig));

        // 获取学校信息
        Set<Integer> schoolIds = records.stream().map(TeacherBean::getSchoolId).collect(Collectors.toSet());
        Map<Integer, String> schoolMap = new HashMap<>();
        if (CollectionUtil.isNotEmpty(schoolIds)){
            List<SchoolBean> list1 = schoolService.list(new QueryWrapper<SchoolBean>().lambda().in(SchoolBean::getSchoolId, schoolIds));
            schoolMap = list1.stream().collect(Collectors.toMap(SchoolBean::getSchoolId, SchoolBean::getSchoolName));
        }
        Map<Integer, String> finalSchoolMap = schoolMap;
        List<TeacherResp> datas = records.stream().map(sig -> {
            TeacherResp tmp = new TeacherResp();
            tmp.setTeacherId(sig.getTeacherId());
            tmp.setTeacherName(sig.getTeacherName());
            tmp.setGender(sig.getGender());
            tmp.setEmail(sig.getEmail());
            tmp.setEmployeeId(sig.getEmployeeId());

            Integer userId = sig.getUserId();
            tmp.setUserId(userId);
            if (userBeanMap.containsKey(userId)) {
                tmp.setPhone(userBeanMap.get(userId).getPhone());
                tmp.setStatus(userBeanMap.get(userId).getStatus());
                tmp.setExpireTime(userBeanMap.get(userId).getExpireTime());
            }

            Integer schoolId = sig.getSchoolId();
            tmp.setSchoolId(schoolId);
            if (finalSchoolMap.containsKey(schoolId)){
                tmp.setSchoolName(finalSchoolMap.get(schoolId));
            }
            return tmp;
        }).collect(Collectors.toList());
        return new DataWithNum<>(datas, total);
    }
}
