package com.exam.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.exam.dao.AnswerRecordDao;
import com.exam.entity.ErrorRateEntity;
import com.exam.entity.FrequencyEntity;
import com.exam.po.AnswerRecordBean;
import com.exam.service.IAnswerRecordService;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author jone
 * @Description TODO
 * @Date 2024/03/28/23:49
 * @Version 1.0
 */
@Service
public class AnswerRecordServiceImpl extends ServiceImpl<AnswerRecordDao, AnswerRecordBean> implements IAnswerRecordService {

    @Override
    public List<ErrorRateEntity> queryKpsErrorRate(Integer questionTypeId, Integer studentId, Integer topN) {
        return baseMapper.queryKpsErrorRate(questionTypeId, studentId, topN);
    }

    @Override
    public List<FrequencyEntity> lowFrequency(Integer studentId, Integer topN) {
        return baseMapper.lowFrequency(studentId, topN);
    }

    @Override
    public List<AnswerRecordBean> queryWrongModuleAndKps() {
        return baseMapper.queryWrongModuleAndKps();
    }
}
