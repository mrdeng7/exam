package com.exam.service;

import com.exam.po.AnswerSituationBean;
import com.baomidou.mybatisplus.extension.service.IService;
import io.swagger.models.auth.In;

import java.math.BigDecimal;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author jone
 * @since 2024-03-29
 */
public interface IAnswerSituationService extends IService<AnswerSituationBean> {

    Boolean updateTotalScoreById(Integer answerSituationId, BigDecimal score);
}
