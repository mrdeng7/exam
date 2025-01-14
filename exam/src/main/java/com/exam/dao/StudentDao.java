package com.exam.dao;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.exam.po.StudentBean;
import com.exam.po.UserBean;
import io.swagger.models.auth.In;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 *@className: UserDao
 *@description: TODO
 *@author: jone
 *@date: 2024-03-25 23:11
 */
@Mapper
public interface StudentDao extends BaseMapper<StudentBean> {

    List<StudentBean> queryReferenceList(@Param("examId") Integer examId, @Param("start") Integer start, @Param("pageSize") Integer pageSize);
    Integer countReferenceList(@Param("examId") Integer examId);
}