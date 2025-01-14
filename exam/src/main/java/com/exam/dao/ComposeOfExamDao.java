package com.exam.dao;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.exam.po.ComposeOfExamBean;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * <p>
 *  Mapper 接口
 * </p>
 *
 * @author jone
 * @since 2024-03-29
 */
@Mapper
public interface ComposeOfExamDao extends BaseMapper<ComposeOfExamBean> {

    List<ComposeOfExamBean> queryNoSubjectWhetherInfo(@Param("examPaperId") Integer examPaperId);

}
