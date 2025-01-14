package com.exam.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.exam.config.exception.CommonException;
import com.exam.dto.*;
import com.exam.entity.DataWithNum;
import com.exam.po.TeacherBean;
import com.exam.po.UserBean;
import com.exam.vo.TouristResp;
import com.exam.vo.UserResp;

import java.util.List;

/**
 * @author jone
 * @Description TODO
 * @Date 2024/03/26/9:17
 * @Version 1.0
 */
public interface IUserManagerService extends IService<UserBean> {
    String touristRegistration(AddTouristRegistrationParam param) throws CommonException;

    String addUser(AddUserParam param) throws CommonException;

    boolean deleteUserAllInfo(String userId);

    boolean updateUserInfo(UpdateUserInfoParam param);

    String resetPassword(String userId);

    boolean changeStatus(UpdateUserStatusParam param);


    boolean updatePassword(UpdateUserPsdParam param);

    DataWithNum<List<TouristResp>> queryTouristInfo(QueryUserParam param);
}
