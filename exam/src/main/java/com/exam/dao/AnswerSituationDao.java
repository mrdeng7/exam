package com.exam.dao;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.exam.po.AnswerSituationBean;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.math.BigDecimal;

/**
 * <p>
 *  Mapper 接口
 * </p>
 *
 * @author jone
 * @since 2024-03-29
 */
@Mapper
public interface AnswerSituationDao extends BaseMapper<AnswerSituationBean> {

    Boolean updateTotalScoreById(@Param("answerSituationId") Integer answerSituationId, @Param("score") BigDecimal score);
}
