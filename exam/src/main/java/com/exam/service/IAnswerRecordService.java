package com.exam.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.exam.entity.ErrorRateEntity;
import com.exam.entity.FrequencyEntity;
import com.exam.po.AnswerRecordBean;
import com.exam.po.PracticeRecordBean;
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
public interface IAnswerRecordService extends IService<AnswerRecordBean> {

    List<ErrorRateEntity> queryKpsErrorRate(Integer questionTypeId,
                                            Integer studentId,
                                            Integer topN);

    List<FrequencyEntity> lowFrequency(Integer studentId, Integer topN);

    List<AnswerRecordBean> queryWrongModuleAndKps();
}
