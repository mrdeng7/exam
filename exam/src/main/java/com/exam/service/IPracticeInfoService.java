package com.exam.service;

import com.exam.config.exception.CommonException;
import com.exam.dto.BatchSubmitPracticeParam;
import com.exam.dto.QueryClassifyInfoParam;
import com.exam.dto.ReviewOfIncorrectQuestionsParam;
import com.exam.dto.SubmitPracticeParam;
import com.exam.entity.DataWithNum;
import com.exam.po.PracticeInfoBean;
import com.baomidou.mybatisplus.extension.service.IService;
import com.exam.vo.BatchSubmitPracticeResp;
import com.exam.vo.KpsClassifyInfoResp;
import com.exam.vo.PracticeResultResp;
import com.exam.vo.ReviewOfIncorrectQuestionsResp;

import java.util.List;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author jone
 * @since 2024-03-24
 */
public interface IPracticeInfoService extends IService<PracticeInfoBean> {

    PracticeResultResp submitPractice(SubmitPracticeParam param) throws CommonException;

    DataWithNum<List<ReviewOfIncorrectQuestionsResp>> reviewOfIncorrectQuestions(ReviewOfIncorrectQuestionsParam param);

    DataWithNum<List<KpsClassifyInfoResp>> queryKpsClassifyInfo();

    DataWithNum<List<KpsClassifyInfoResp>> queryWrongQuestionClassifyInfo();


    List<BatchSubmitPracticeResp> batchSubmitPractice(BatchSubmitPracticeParam param) throws CommonException;
}
