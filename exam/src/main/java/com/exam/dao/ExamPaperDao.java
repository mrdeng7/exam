package com.exam.dao;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.exam.po.ExamPaperBean;
import org.apache.ibatis.annotations.Mapper;

/**
 * <p>
 *  Mapper 接口
 * </p>
 *
 * @author jone
 * @since 2024-03-29
 */
@Mapper
public interface ExamPaperDao extends BaseMapper<ExamPaperBean> {

}
