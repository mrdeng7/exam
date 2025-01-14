package com.exam.service;

import com.exam.dto.QueryQuestionParam;
import com.exam.entity.DataWithNum;
import com.exam.po.QuestionTypeBean;
import com.baomidou.mybatisplus.extension.service.IService;
import com.exam.vo.QuestionResp;
import com.exam.vo.QuestionTypeResp;

import java.util.List;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author jone
 * @since 2024-03-24
 */
public interface IQuestionTypeService extends IService<QuestionTypeBean> {

    DataWithNum<List<QuestionTypeResp>> queryQuestionTypeInfo();

}
