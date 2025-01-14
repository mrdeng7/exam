package com.exam.dao;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.exam.po.KpsBean;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * <p>
 *  Mapper 接口
 * </p>
 *
 * @author jone
 * @since 2024-03-24
 */
@Mapper
public interface KpsDao extends BaseMapper<KpsBean> {

    List<Integer> queryNoPracticeKpsId(@Param("studentId") Integer studentId);
}
