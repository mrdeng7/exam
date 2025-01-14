package com.exam.dao;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.exam.entity.ErrorRateEntity;
import com.exam.po.QuestionBean;
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
public interface QuestionDao extends BaseMapper<QuestionBean> {

    List<QuestionBean> randomQueryQuestionInfo(@Param("questionTypeId")Integer questionTypeId,
                                               @Param("moduleId") Integer moduleId,
                                               @Param("kpsId") Integer kpsId,
                                               @Param("topN") Integer topN);

    List<QuestionBean> batchRandomQueryQuestionInfo(@Param("questionTypeId")Integer questionTypeId,
                                               @Param("moduleIds") List<Integer> moduleIds,
                                               @Param("kpsIds") List<Integer> kpsIds,
                                               @Param("topN") Integer topN);


    List<QuestionBean> randomQueryQuestionInfoByModuleIds(@Param("questionTypeId")Integer questionTypeId,
                                                          @Param("moduleIds") List<Integer> moduleIds,
                                                    @Param("topN") Integer topN);
}
