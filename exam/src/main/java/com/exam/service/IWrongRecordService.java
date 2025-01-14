package com.exam.service;

import com.exam.po.AnswerRecordBean;
import com.exam.po.WrongRecordBean;
import com.baomidou.mybatisplus.extension.service.IService;

import java.util.List;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author jone
 * @since 2024-03-29
 */
public interface IWrongRecordService extends IService<WrongRecordBean> {

    List<WrongRecordBean> queryWrongModuleAndKps();
}
