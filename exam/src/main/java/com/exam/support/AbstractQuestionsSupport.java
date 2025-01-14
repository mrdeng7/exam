package com.exam.support;

import cn.hutool.core.collection.CollectionUtil;
import cn.hutool.core.date.DateUtil;
import cn.hutool.core.util.ObjectUtil;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.exam.config.exception.CommonException;
import com.exam.config.satoken.SecurityUtils;
import com.exam.dto.GenerateQuestionsParam;
import com.exam.dto.QueryClassifyInfoParam;
import com.exam.entity.CodeConstant;
import com.exam.entity.DataWithNum;
import com.exam.po.*;
import com.exam.service.IOptionService;
import com.exam.service.IPracticeDetailService;
import com.exam.service.IPracticeInfoService;
import com.exam.service.IQuestionTypeService;
import com.exam.vo.PracticeClassifyResp;
import com.exam.vo.PracticeResp;
import lombok.extern.slf4j.Slf4j;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.PostConstruct;
import javax.annotation.Resource;
import java.math.BigDecimal;
import java.util.*;
import java.util.stream.Collectors;

@Slf4j
public abstract class AbstractQuestionsSupport {
    @Resource
    private QuestionsSupportContext questionsSupportContext;

    @Resource
    IOptionService optionService;
    @Resource
    IPracticeInfoService practiceInfoService;
    @Resource
    IPracticeDetailService practiceDetailService;
    @Resource
    IQuestionTypeService questionTypeService;


    protected abstract Integer generateQuestionsType();

    @PostConstruct
    protected void add() {
        questionsSupportContext.add(this);
    }


    /**
     * 获取左侧分类
     * @param param
     * @return
     */
    public abstract DataWithNum<List<PracticeClassifyResp>> queryClassifyInfo(QueryClassifyInfoParam param);

    /**
     * 生成试卷/练习题
     * @return
     */
    public abstract List<PracticeResp> generateQuestions(GenerateQuestionsParam param) throws CommonException;


    public List<PracticeResp> saveAndGeneratePracticeInfo(List<QuestionBean> questionBeans, String practiceInfoName, Integer questionTypeId){
        if (CollectionUtil.isEmpty(questionBeans)){
            return Collections.emptyList();
        }
        List<PracticeResp> finalResult = new ArrayList<>(questionBeans.size());

        // 如果是选择题、判断题 需要查询 题目的选项信息
        QuestionTypeBean one = questionTypeService.getOne(new QueryWrapper<QuestionTypeBean>().lambda().eq(QuestionTypeBean::getQuestionTypeId, questionTypeId));

        // 查询选项信息
        List<OptionBean> optionBeans = null;
        if (ObjectUtil.equal(questionTypeId, 1) || ObjectUtil.equal(questionTypeId, 2)){
            List<String> questionIds = questionBeans.stream().map(QuestionBean::getQuestionId).map(String::valueOf).collect(Collectors.toList());
            if (CollectionUtil.isNotEmpty(questionIds)){
                optionBeans = optionService.list(new QueryWrapper<OptionBean>().lambda().in(OptionBean::getQuestionId, questionIds));
            }
        }


        // 存储生成的练习试卷信息(概要信息)
        PracticeInfoBean practiceInfoBean = new PracticeInfoBean();
        // 练习题 随机生成 一个名称
        practiceInfoBean.setName(practiceInfoName+"\t"+  one.getQuestionTypeName()+ "\t"+ DateUtil.format(new Date(),"YYYY-MM-dd hh-mm"));
        // 获取当前登录的学生id
        Integer studentId = SecurityUtils.getUser().getTeacherOrStudentId();
        practiceInfoBean.setStudentId(studentId);
        practiceInfoBean.setCreateTime(System.currentTimeMillis());
        practiceInfoBean.setUpdateTime(System.currentTimeMillis());
        // 暂定失效时间为 半小时
        practiceInfoBean.setExpireTime(CodeConstant.HALF_AN_HOUR + System.currentTimeMillis());

        BigDecimal totalScore = new BigDecimal(0);
        // 记录做了哪些题
        List<PracticeDetailBean> practiceDetailBeans = new ArrayList<>(questionBeans.size());
        for (QuestionBean questionBean : questionBeans) {
            BigDecimal score = questionBean.getScore();
            totalScore = totalScore.add(score);

            PracticeDetailBean tmp = new PracticeDetailBean();
            tmp.setQuestionId(questionBean.getQuestionId());
            tmp.setQuestionTypeId(questionBean.getQuestionTypeId());
            tmp.setCreateTime(System.currentTimeMillis());
            tmp.setUpdateTime(System.currentTimeMillis());

            PracticeResp practiceResp = new PracticeResp();
            practiceResp.setQuestionId(questionBean.getQuestionId());
            practiceResp.setQuestion(questionBean.getQuestion());
            practiceResp.setQuestionTypeId(questionBean.getQuestionTypeId());
            // 选择题、判断题 ，必须要有选项
            if (ObjectUtil.notEqual(questionBean.getQuestionTypeId(), 1) && ObjectUtil.notEqual(questionBean.getQuestionTypeId(), 2)){
                finalResult.add(practiceResp);
                practiceDetailBeans.add(tmp);
            }

            // 没有 选项 直接跳过，题目 录入时 存在异常
            if (CollectionUtil.isEmpty(optionBeans)){
                continue;
            }
            List<PracticeResp.OptionInfo> optionInfoList = optionBeans.stream().filter(sig -> sig.getQuestionId().equals(questionBean.getQuestionId()))
                    .sorted(Comparator.comparing(OptionBean::getOptionNumber))
                    .map(sig -> {
                        PracticeResp.OptionInfo optionInfo = new PracticeResp.OptionInfo();
                        optionInfo.setOptionNumber(sig.getOptionNumber());
                        optionInfo.setContent(sig.getContent());
                        return optionInfo;
                    })
                    .collect(Collectors.toList());

            practiceResp.setOptionInfos(optionInfoList);
            finalResult.add(practiceResp);
            practiceDetailBeans.add(tmp);
        }

        practiceInfoBean.setScore(totalScore);
        boolean save = practiceInfoService.save(practiceInfoBean);
        if (!save){
            return Collections.emptyList();
        }

        // 存储生成的练习试卷信息(试卷上有哪些题,类似一张新的、未动的试卷)
        practiceDetailBeans.forEach(sig -> sig.setPracticeInfoId(practiceInfoBean.getPracticeInfoId()));
        boolean b = practiceDetailService.saveBatch(practiceDetailBeans);
        if (b){
            Map<Integer, PracticeDetailBean> map = new HashMap<>(practiceDetailBeans.size());

            for (PracticeDetailBean practiceDetailBean : practiceDetailBeans) {
                map.put(practiceDetailBean.getQuestionId(), practiceDetailBean);
            }
            for (PracticeResp practiceResp : finalResult) {
                PracticeDetailBean practiceDetailBean = map.get(practiceResp.getQuestionId());
                if (practiceDetailBean != null){
                    practiceResp.setPracticeDetailId(practiceDetailBean.getPracticeDetailId());
                    practiceResp.setPracticeInfoId(practiceDetailBean.getPracticeInfoId());
                }
            }
            return finalResult;
        }
        return Collections.emptyList();
    }
}
