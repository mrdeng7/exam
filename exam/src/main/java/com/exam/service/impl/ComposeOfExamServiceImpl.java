package com.exam.service.impl;

import com.exam.dao.ComposeOfExamDao;
import com.exam.po.ComposeOfExamBean;
import com.exam.service.IComposeOfExamService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author jone
 * @since 2024-03-29
 */
@Service
public class ComposeOfExamServiceImpl extends ServiceImpl<ComposeOfExamDao, ComposeOfExamBean> implements IComposeOfExamService {

    @Override
    public List<ComposeOfExamBean> queryNoSubjectWhetherInfo(Integer examPaperId) {
        return baseMapper.queryNoSubjectWhetherInfo(examPaperId);
    }
}
