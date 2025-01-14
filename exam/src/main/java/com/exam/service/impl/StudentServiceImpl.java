package com.exam.service.impl;

import cn.hutool.core.collection.CollectionUtil;
import cn.hutool.core.util.ObjectUtil;
import cn.hutool.core.util.StrUtil;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.exam.dao.KpsDao;
import com.exam.dao.StudentDao;
import com.exam.dto.QueryUserParam;
import com.exam.entity.DataWithNum;
import com.exam.po.ClassBean;
import com.exam.po.KpsBean;
import com.exam.po.StudentBean;
import com.exam.po.UserBean;
import com.exam.service.IClassService;
import com.exam.service.IKpsService;
import com.exam.service.IStudentService;
import com.exam.service.IUserManagerService;
import com.exam.vo.StudentResp;
import io.swagger.models.auth.In;
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
public class StudentServiceImpl extends ServiceImpl<StudentDao, StudentBean> implements IStudentService {
    @Resource
    IUserManagerService userManagerService;
    @Resource
    IClassService classService;

    @Override
    public List<StudentBean> queryReferenceList(Integer examId, Integer start, Integer pageSize) {
        if (ObjectUtil.isNull(examId)){
            return Collections.emptyList();
        }
        return baseMapper.queryReferenceList(examId, start, pageSize);
    }

    @Override
    public Integer countReferenceList(Integer examId) {
        if (ObjectUtil.isNull(examId)){
            return 0;
        }
        return baseMapper.countReferenceList(examId);
    }

    @Override
    public DataWithNum<List<StudentResp>> queryUserList(QueryUserParam param) {
        Integer pageIndex = param.getPageIndex();
        Integer pageSize = param.getPageSize();
        String searchWord = param.getSearchWord();

        Page<StudentBean> page = new Page<>(pageIndex, pageSize);
        Page<StudentBean> page1 = this.page(page, new QueryWrapper<StudentBean>().lambda().like(StrUtil.isNotBlank(searchWord), StudentBean::getStudentName, searchWord));
        List<StudentBean> records = page1.getRecords();
        long total = page1.getTotal();
        if (CollectionUtil.isEmpty(records)){
            return new DataWithNum<>(Collections.emptyList(), total);
        }
        // 获取用户信息
        Set<Integer> userIds = records.stream().map(StudentBean::getUserId).collect(Collectors.toSet());
        List<UserBean> list = userManagerService.list(new QueryWrapper<UserBean>().lambda().in(UserBean::getUserId, userIds));
        Map<Integer, UserBean> userBeanMap = list.stream().collect(Collectors.toMap(UserBean::getUserId, sig -> sig));

        // 获取班级信息
        Set<Integer> classIds = records.stream().map(StudentBean::getClassId).collect(Collectors.toSet());
        Map<Integer, String> classMap = new HashMap<>();
        if (CollectionUtil.isNotEmpty(classIds)){
            List<ClassBean> list1 = classService.list(new QueryWrapper<ClassBean>().lambda().in(ClassBean::getClassId, classIds));
            classMap = list1.stream().collect(Collectors.toMap(ClassBean::getClassId, ClassBean::getClassName));
        }

        Map<Integer, String> finalClassMap = classMap;
        List<StudentResp> datas = records.stream().map(sig -> {
            StudentResp tmp = new StudentResp();
            tmp.setStudentId(sig.getStudentId());
            tmp.setStudentName(sig.getStudentName());
            tmp.setGender(sig.getGender());
            tmp.setEmail(sig.getEmail());
            tmp.setStudentNo(sig.getStudentNo());

            Integer userId = sig.getUserId();
            tmp.setUserId(userId);
            if (userBeanMap.containsKey(userId)) {
                tmp.setPhone(userBeanMap.get(userId).getPhone());
                tmp.setStatus(userBeanMap.get(userId).getStatus());
                tmp.setExpireTime(userBeanMap.get(userId).getExpireTime());
            }
            Integer classId = sig.getClassId();
            tmp.setClassId(classId);
            if (finalClassMap.containsKey(classId)){
                tmp.setClassName(finalClassMap.get(classId));
            }
            return tmp;
        }).collect(Collectors.toList());
        return new DataWithNum<>(datas, total);
    }
}
