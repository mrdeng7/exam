package com.exam.dao;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.exam.entity.ErrorRateEntity;
import com.exam.entity.FrequencyEntity;
import com.exam.po.AnswerRecordBean;
import com.exam.po.PracticeRecordBean;
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
public interface AnswerRecordDao extends BaseMapper<AnswerRecordBean> {

    List<ErrorRateEntity> queryKpsErrorRate(@Param("questionTypeId")Integer questionTypeId,
                                            @Param("studentId") Integer studentId,
                                            @Param("topN") Integer topN);


    List<FrequencyEntity> lowFrequency(@Param("studentId") Integer studentId, @Param("topN") Integer topN);

    List<AnswerRecordBean> queryWrongModuleAndKps();


}
