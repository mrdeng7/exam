package com.exam.service.impl;

import cn.hutool.core.bean.BeanUtil;
import cn.hutool.core.collection.CollectionUtil;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.exam.dto.QueryQuestionParam;
import com.exam.entity.DataWithNum;
import com.exam.po.QuestionTypeBean;
import com.exam.dao.QuestionTypeDao;
import com.exam.po.SchoolBean;
import com.exam.service.IQuestionTypeService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.exam.vo.QuestionResp;
import com.exam.vo.QuestionTypeResp;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.stream.Collectors;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author jone
 * @since 2024-03-24
 */
@Service
public class QuestionTypeServiceImpl extends ServiceImpl<QuestionTypeDao, QuestionTypeBean> implements IQuestionTypeService {


    @Override
    public DataWithNum<List<QuestionTypeResp>> queryQuestionTypeInfo() {
        List<QuestionTypeBean> list = this.list();
        //List<QuestionTypeBean> list = new ArrayList<>();
        //list.add(new QuestionTypeBean(1, "选择题", false));
        //list.add(new QuestionTypeBean(2, "判断题", false));
        if (CollectionUtil.isEmpty(list)){
            return new DataWithNum<>(Collections.emptyList(), 0L);
        }
        long total = list.size();
        List<QuestionTypeResp> datas = list.stream().map(sig -> {
            QuestionTypeResp tmp = new QuestionTypeResp();
            BeanUtil.copyProperties(sig, tmp);
            return tmp;
        }).collect(Collectors.toList());
        return new DataWithNum<>(datas, total);
    }

}
