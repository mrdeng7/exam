package com.exam.service.impl;

import cn.dev33.satoken.secure.BCrypt;
import cn.hutool.core.bean.BeanUtil;
import cn.hutool.core.collection.CollectionUtil;
import cn.hutool.core.lang.Snowflake;
import cn.hutool.core.util.ObjectUtil;
import cn.hutool.core.util.RandomUtil;
import cn.hutool.core.util.StrUtil;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.exam.config.exception.CommonException;
import com.exam.dao.TeacherDao;
import com.exam.dao.UserDao;
import com.exam.dto.*;
import com.exam.entity.CodeConstant;
import com.exam.entity.DataWithNum;
import com.exam.po.StudentBean;
import com.exam.po.TeacherBean;
import com.exam.po.UserBean;
import com.exam.po.UserRoleBean;
import com.exam.service.IStudentService;
import com.exam.service.ITeacherService;
import com.exam.service.IUserManagerService;
import com.exam.service.IUserRoleService;
import com.exam.vo.TouristResp;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.time.LocalDateTime;
import java.time.ZoneOffset;
import java.util.Collections;
import java.util.List;
import java.util.Random;
import java.util.stream.Collectors;

/**
 * @author jone
 * @Description TODO
 * @Date 2024/03/26/9:17
 * @Version 1.0
 */
@Service
public class UserManagerServiceImpl extends ServiceImpl<UserDao, UserBean> implements IUserManagerService {
    @Resource
    private Snowflake snowflake;
    @Resource
    IStudentService studentService;
    @Resource
    ITeacherService teacherService;
    @Resource
    IUserRoleService userRoleService;


    @Override
    public String touristRegistration(AddTouristRegistrationParam param) throws CommonException {
        String phone = param.getPhone();
        // 判断是否存在重复的数据
        int count = this.count(new QueryWrapper<UserBean>().lambda().eq(UserBean::getPhone, phone));
        if (count > 0){
            throw CommonException.exception_401(CodeConstant.USERNAME_ALREADY_EXISTS);
        }

        // 如果没有输入密码，随机生成一个
        String password = param.getPassword();
        if (StrUtil.isBlank(password)){
            //生成随机数字加字母的8位密码
            password = getStringRandom();
        }
        // 密码加密
        String hashpw = BCrypt.hashpw(password);

        // 添加用户信息
        UserBean userBean = new UserBean();
        userBean.setPassword(hashpw);
        userBean.setStatus(0);
        userBean.setType(3); // 游客
        userBean.setPhone(param.getPhone());
        userBean.setSchoolId(param.getSchoolId());
        userBean.setAllowOtherLogin(1);
        // 默认 一年
        LocalDateTime now = LocalDateTime.now();
        LocalDateTime localDateTime = now.plusYears(1);
        long epochMilli = localDateTime.toInstant(ZoneOffset.ofHours(8)).toEpochMilli();
        userBean.setExpireTime(epochMilli);

        userBean.setCreateTime(System.currentTimeMillis());
        userBean.setUpdateTime(System.currentTimeMillis());
        boolean save = this.save(userBean);
        if (save){
            return String.valueOf(userBean.getUserId());
        }
        return null;
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public String addUser(AddUserParam param) throws CommonException {
        String phone = param.getPhone();
        // 判断是否存在重复的数据
        int count = this.count(new QueryWrapper<UserBean>().lambda().eq(UserBean::getPhone, phone));
        if (count > 0){
            throw CommonException.exception_401(CodeConstant.USERNAME_ALREADY_EXISTS);
        }
        // 如果没有输入密码，随机生成一个
        String password = param.getPassword();
        if (StrUtil.isBlank(password)){
            //生成随机数字加字母的8位密码
            password = getStringRandom();
        }
        // 密码加密
        String hashpw = BCrypt.hashpw(password);

        Integer type = param.getType();

        // 添加用户信息
        UserBean userBean = new UserBean();
        userBean.setPassword(hashpw);
        userBean.setStatus(0);
        userBean.setType(type);
        userBean.setPhone(param.getPhone());
        userBean.setSchoolId(param.getSchoolId());
        userBean.setAllowOtherLogin(1);
        userBean.setExpireTime(param.getExpireTime());
        userBean.setCreateTime(System.currentTimeMillis());
        userBean.setUpdateTime(System.currentTimeMillis());

        boolean save = this.save(userBean);
        if (!save){
            return null;
        }
        // 添加学生or老师的消息
        if (ObjectUtil.equal(type, 1)){
            StudentBean studentBean = new StudentBean();
            studentBean.setStudentName(param.getName());
            studentBean.setUserId(userBean.getUserId());
            studentBean.setStudentId(param.getSchoolId());
            studentBean.setClassId(param.getClassId());
            studentBean.setGender(param.getGender());
            studentBean.setEmail(param.getEmail());
            studentBean.setStudentNo(param.getStudentNo());

            studentService.save(studentBean);
        }else if (ObjectUtil.equal(type, 2)){
            TeacherBean teacherBean = new TeacherBean();
            teacherBean.setTeacherName(param.getName());
            teacherBean.setUserId(userBean.getUserId());
            teacherBean.setGender(param.getGender());
            teacherBean.setSchoolId(param.getSchoolId());
            teacherBean.setEmail(param.getEmail());
            teacherBean.setEmployeeId(param.getEmployee());

            teacherService.save(teacherBean);
        }

        // 添加用户角色信息
        List<Integer> roleIds = param.getRoleIds();
        if (CollectionUtil.isNotEmpty(roleIds)){
            List<UserRoleBean> userRoleBeans = roleIds.stream().map(sig -> {
                UserRoleBean userRoleBean = new UserRoleBean();
                userRoleBean.setUserId(userBean.getUserId());
                userRoleBean.setRoleId(sig);
                return userRoleBean;
            }).collect(Collectors.toList());
            userRoleService.saveBatch(userRoleBeans);
        }

        return password;
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public boolean deleteUserAllInfo(String userId) {
        UserBean one = this.getOne(new QueryWrapper<UserBean>().lambda().eq(UserBean::getUserId, userId));
        if (one == null) {
            return true;
        }
        // 删除用户表中的记录
        boolean finalResult = this.removeById(one.getUserId());

        Integer type = one.getType();
        // 然后根据用户信息,删除老师or学生
        if (ObjectUtil.equal(type, 1)){
            // 删除学生表中的记录
            finalResult = finalResult && studentService.remove(new QueryWrapper<StudentBean>().lambda().eq(StudentBean::getUserId, one.getUserId()));
        }
        else if (ObjectUtil.equal(type, 2)){
            finalResult = finalResult && teacherService.remove(new QueryWrapper<TeacherBean>().lambda().eq(TeacherBean::getUserId, one.getUserId()));
        }
        // 删除用户的角色信息
        userRoleService.remove(new QueryWrapper<UserRoleBean>().lambda().eq(UserRoleBean::getUserId, userId));

        return finalResult;
    }

    @Override
    public boolean updateUserInfo(UpdateUserInfoParam param) {

        return false;
    }

    @Override
    public String resetPassword(String userId) {
        //生成随机数字加字母的8位密码
        String password = getStringRandom();

        //密码加密
        UserBean userBean = new UserBean();
        userBean.setUserId(Integer.valueOf(userId));
        String pePassword = BCrypt.hashpw(password, BCrypt.gensalt());
        userBean.setPassword(pePassword);
        userBean.setUpdateTime(System.currentTimeMillis());
        int i = baseMapper.updateById(userBean);
        return password;
    }

    @Override
    public boolean changeStatus(UpdateUserStatusParam param) {
        Integer userId = param.getUserId();
        UserBean userBean = new UserBean();
        userBean.setUserId(userId);
        userBean.setStatus(param.getStatus());
        userBean.setUpdateTime(System.currentTimeMillis());
        int i = baseMapper.updateById(userBean);
        return i > 0;
    }


    @Override
    public boolean updatePassword(UpdateUserPsdParam param) {
        UserBean userBean = new UserBean();
        userBean.setUserId(param.getUserId());
        String pePassword = BCrypt.hashpw(param.getPassword(), BCrypt.gensalt());
        userBean.setPassword(pePassword);
        userBean.setUpdateTime(System.currentTimeMillis());
        int i = baseMapper.updateById(userBean);

        return i > 0;
    }

    @Override
    public DataWithNum<List<TouristResp>> queryTouristInfo(QueryUserParam param) {
        Integer pageIndex = param.getPageIndex();
        Integer pageSize = param.getPageSize();

        Page<UserBean> page = new Page<>(pageIndex, pageSize);
        Page<UserBean> page1 = this.page(page, new QueryWrapper<UserBean>().lambda().eq(UserBean::getType, 3).like(StrUtil.isNotBlank(param.getSearchWord()), UserBean::getPhone, param.getSearchWord()));
        List<UserBean> records = page1.getRecords();
        long total = page1.getTotal();
        if (CollectionUtil.isEmpty(records)){
            return new DataWithNum<>(Collections.emptyList(), total);
        }
        List<TouristResp> datas = records.stream().map(sig -> {
            TouristResp tmp = new TouristResp();
            BeanUtil.copyProperties(sig, tmp);
            return tmp;
        }).collect(Collectors.toList());

        return new DataWithNum<>(datas, total);
    }


    /**
     * 生成随机数字和字母
     * @return
     */
    public static String getStringRandom() {
        StringBuilder val = new StringBuilder();
        Random random = new Random();
        //length为几位密码
        for (int i = 0; i < 8; i++) {
            String charOrNum = random.nextInt(2) % 2 == 0 ? "char" : "num";
            //输出字母还是数字
            if ("char".equalsIgnoreCase(charOrNum)) {
                //输出是大写字母还是小写字母
                int temp = random.nextInt(2) % 2 == 0 ? 65 : 97;
                val.append((char) (random.nextInt(26) + temp));
            } else {
                val.append(random.nextInt(10));
            }
        }
        return val.toString();
    }

}
