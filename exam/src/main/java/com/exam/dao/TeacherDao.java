package com.exam.dao;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.exam.po.StudentBean;
import com.exam.po.TeacherBean;
import org.apache.ibatis.annotations.Mapper;

/**
 *@className: UserDao
 *@description: TODO
 *@author: jone
 *@date: 2024-03-25 23:11
 */
@Mapper
public interface TeacherDao extends BaseMapper<TeacherBean> {

}