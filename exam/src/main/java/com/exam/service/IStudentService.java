package com.exam.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.exam.dto.QueryUserParam;
import com.exam.entity.DataWithNum;
import com.exam.po.KpsBean;
import com.exam.po.StudentBean;
import com.exam.vo.StudentResp;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author jone
 * @since 2024-03-24
 */
public interface IStudentService extends IService<StudentBean> {

    List<StudentBean> queryReferenceList(Integer examId, Integer start, Integer pageSize);
    Integer countReferenceList(Integer examId);

    DataWithNum<List<StudentResp>> queryUserList(QueryUserParam param);

}
