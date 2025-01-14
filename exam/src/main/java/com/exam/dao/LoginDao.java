package com.exam.dao;

import com.exam.po.UserBean;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

/**
 * @className: loginDao
 * @description: TODO
 * @author: jone
 * @date: 2024-03-23 16:55
 */
@Mapper
public interface LoginDao{

    @Select("select * from user where type #{type} and phone = #{phone} limit 1")
    UserBean findUserByTypeAndPhone(Integer type, String phone);
    @Select("select * from user where phone = #{phone} limit 1")
    UserBean findUserByPhone(String phone);
    @Select("select * from user where phone = #{phone} and school_id = #{schoolId} limit 1")
    UserBean findUserByPhoneAndSchoolId(String phone, Integer schoolId);
}
