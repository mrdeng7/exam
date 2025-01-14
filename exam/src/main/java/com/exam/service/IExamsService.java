package com.exam.service;

import com.exam.config.exception.CommonException;
import com.exam.dto.*;
import com.exam.entity.DataWithNum;
import com.exam.po.ExamsBean;
import com.baomidou.mybatisplus.extension.service.IService;
import com.exam.vo.*;

import java.math.BigDecimal;
import java.util.List;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author jone
 * @since 2024-03-29
 */
public interface IExamsService extends IService<ExamsBean> {


    DataWithNum<List<ExamInfoResp>> queryRecentExams(QueryRecentExamsParam param) throws CommonException;


    List<ExamsClassifyResp> queryExamsClassifyInfo(QueryExamsClassifyInfoParam param);

    List<ExamsDetailResp> queryExamsDetail(QueryExamsDetailParam param) throws CommonException;

    Boolean addExams(AddExamParam param) throws CommonException;

    Boolean submitExams(SubmitExamsParam param) throws CommonException;

    BigDecimal markingPapers(MarkingPapersParam param);

    List<ExamsPaperInfoResp> showExamsPaperInfo(ShowExamsPaperInfoParam param);

    DataWithNum<List<ExamsResp>> queryExamsInfo(QueryExamParam param);

    Boolean updateExamsInfo(UpdateExamsInfoParam param);


    DataWithNum<List<StudentExamsResp>> queryReferenceList(QueryReferenceListParam param);
}
