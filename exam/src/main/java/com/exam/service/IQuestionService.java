package com.exam.service;

import com.exam.config.exception.CommonException;
import com.exam.dto.*;
import com.exam.entity.DataWithNum;
import com.exam.entity.ErrorRateEntity;
import com.exam.po.QuestionBean;
import com.baomidou.mybatisplus.extension.service.IService;
import com.exam.vo.AnalysisAndJudgmentResp;
import com.exam.vo.PracticeResultResp;
import com.exam.vo.QuestionResp;
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
public interface IQuestionService extends IService<QuestionBean> {

    List<QuestionBean> randomQueryQuestionInfo(Integer questionTypeId, Integer moduleId, Integer kpsId,Integer topN);
    List<QuestionBean> randomQueryQuestionInfoByModuleIds(Integer questionTypeId,
                                                          List<Integer> moduleIds,
                                                          Integer topN);
    List<QuestionBean> batchRandomQueryQuestionInfo(Integer questionTypeId, List<Integer> moduleIds, List<Integer> kpsIds,Integer topN);

    AnalysisAndJudgmentResp analysisAndJudgment(AnalysisAndJudgmentParam param) throws CommonException;

    List<ErrorRateEntity> queryKpsErrorRate(Integer questionTypeId,
                                            Integer studentId,
                                            Integer topN);

    DataWithNum<List<QuestionResp>> queryQuestions(QueryQuestionParam param);

    Boolean updateQuestions(UpdateQuestionParam param);

    Boolean delQuestions(UpdateQuestionParam param);

    Boolean addQuestions(AddQuestionParam param);
}
