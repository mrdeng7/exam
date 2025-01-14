package com.exam.service;

import com.exam.po.ComposeOfExamBean;
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
public interface IComposeOfExamService extends IService<ComposeOfExamBean> {

    List<ComposeOfExamBean> queryNoSubjectWhetherInfo(Integer examPaperId);
}
