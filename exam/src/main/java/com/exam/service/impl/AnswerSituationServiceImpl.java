package com.exam.service.impl;

import cn.hutool.core.util.ObjectUtil;
import com.exam.dao.AnswerSituationDao;
import com.exam.po.AnswerSituationBean;
import com.exam.service.IAnswerSituationService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

import java.math.BigDecimal;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author jone
 * @since 2024-03-29
 */
@Service
public class AnswerSituationServiceImpl extends ServiceImpl<AnswerSituationDao, AnswerSituationBean> implements IAnswerSituationService {

    @Override
    public Boolean updateTotalScoreById(Integer answerSituationId, BigDecimal score) {
        if (ObjectUtil.isNull(answerSituationId)){
            return true;
        }
        return baseMapper.updateTotalScoreById(answerSituationId, score);
    }
}
