package com.exam.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.exam.dto.QueryUserParam;
import com.exam.entity.DataWithNum;
import com.exam.po.StudentBean;
import com.exam.po.TeacherBean;
import com.exam.vo.TeacherResp;

import java.util.List;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author jone
 * @since 2024-03-24
 */
public interface ITeacherService extends IService<TeacherBean> {

    DataWithNum<List<TeacherResp>> queryUserList(QueryUserParam param);

}
