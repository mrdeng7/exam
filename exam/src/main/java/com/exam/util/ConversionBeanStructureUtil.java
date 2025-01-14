package com.exam.util;

import com.exam.po.StudentBean;
import com.exam.po.TeacherBean;
import com.exam.vo.LoginRespVO;

/**
 *@className: ConversionBeanStructureUtil
 *@description: TODO
 *@author: jone
 *@date: 2024-03-25 23:58
 */
public class ConversionBeanStructureUtil {

    /**
     * 转换 学生实体 为 登录接口返回实体
     * @param studentBean
     * @return
     */
    public static LoginRespVO conversionStudent2LoginRespVO(StudentBean studentBean){
        if (studentBean == null){
            return null;
        }
        LoginRespVO loginRespVO = new LoginRespVO();
        loginRespVO.setUserName(studentBean.getStudentName());
        loginRespVO.setUserType("1");
        loginRespVO.setEmail(studentBean.getEmail());
        loginRespVO.setGender(studentBean.getGender());
        loginRespVO.setTeacherOrStudentId(studentBean.getStudentId());
        return loginRespVO;

    }

    /**
     * 转换 教师实体 为 登录接口返回实体
     * @param teacherBean
     * @return
     */
    public static LoginRespVO conversionTeacher2LoginRespVO(TeacherBean teacherBean){
        if (teacherBean == null){
            return null;
        }
        LoginRespVO loginRespVO = new LoginRespVO();
        loginRespVO.setUserName(teacherBean.getTeacherName());
        loginRespVO.setUserType("2");
        loginRespVO.setEmail(teacherBean.getEmail());
        loginRespVO.setGender(teacherBean.getGender());
        loginRespVO.setTeacherOrStudentId(teacherBean.getTeacherId());
        return loginRespVO;
    }
}
