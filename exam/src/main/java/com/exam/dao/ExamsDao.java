package com.exam.dao;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.exam.entity.ExamPaperQuestionOfKeyEntity;
import com.exam.entity.ExamsEntity;
import com.exam.po.ExamsBean;
import io.swagger.models.auth.In;
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
public interface ExamsDao extends BaseMapper<ExamsBean> {


    List<ExamsEntity> queryRecentExams(@Param("classId") String classIdStr, @Param("pageIndex") Integer pageIndex, @Param("pageSize") Integer pageSize);
    List<ExamPaperQuestionOfKeyEntity> queryExamPaperQuestionOfKey(@Param("questionTypeIds") List<Integer> questionTypeIds,
                                                                   @Param("examPaperQuestionIds") List<Integer> examPaperQuestionIds);

    ExamsBean queryExamsByAnswerSituationId(@Param("answerSituationId") Integer answerSituationId);
}
