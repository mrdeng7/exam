package com.exam.service.impl;

import cn.hutool.core.collection.CollectionUtil;
import cn.hutool.core.util.ObjectUtil;
import cn.hutool.core.util.StrUtil;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.exam.config.exception.CommonException;
import com.exam.dto.*;
import com.exam.entity.DataWithNum;
import com.exam.po.*;
import com.exam.dao.ModuleDao;
import com.exam.service.IKpsService;
import com.exam.service.IModuleService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.exam.service.IOptionService;
import com.exam.service.IQuestionService;
import com.exam.vo.ModuleAndKpsResp;
import com.exam.vo.ModuleResp;
import com.exam.vo.PracticeClassifyResp;
import com.exam.vo.SchoolResp;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
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
public class ModuleServiceImpl extends ServiceImpl<ModuleDao, ModuleBean> implements IModuleService {

    @Resource
    IKpsService kpsService;
    @Resource
    IQuestionService questionService;
    @Resource
    IOptionService optionService;

    @Override
    public Boolean addModuleInfo(AddModuleInfo param) throws CommonException {
        String moduleName = param.getModuleName();
        // 重名校验
        int count = this.count(new QueryWrapper<ModuleBean>().lambda().eq(ModuleBean::getModuleName, moduleName));
        if (count > 0){
            throw CommonException.exception_400("存在同名的模块");
        }
        ModuleBean moduleBean = new ModuleBean();
        moduleBean.setModuleName(moduleName);
        moduleBean.setModuleDescription(param.getModuleDescription());
        moduleBean.setCreateTime(System.currentTimeMillis());
        moduleBean.setUpdateTime(System.currentTimeMillis());
        return this.save(moduleBean);
    }

    @Override
    public DataWithNum<List<ModuleResp>> queryModule(QueryModuleParam param) {
        Integer pageIndex = param.getPageIndex();
        Integer pageSize = param.getPageSize();
        Page<ModuleBean> page = new Page<>(pageIndex, pageSize);

        String moduleName = param.getModuleName();
        Page<ModuleBean> page1 = this.page(page, new QueryWrapper<ModuleBean>().lambda().like(StrUtil.isNotBlank(moduleName),ModuleBean::getModuleName, moduleName));
        List<ModuleBean> records = page1.getRecords();

        List<ModuleResp> datas = records.stream().map(sig -> {
            ModuleResp tmp = new ModuleResp();
            tmp.setModuleId(sig.getModuleId());
            tmp.setModuleName(sig.getModuleName());
            tmp.setModuleDescription(sig.getModuleDescription());
            return tmp;
        }).collect(Collectors.toList());
        return new DataWithNum<>(datas, page1.getTotal());
    }

    @Override
    public List<ModuleAndKpsResp> queryModuleAndKps() {
        // 查询所有模块
        List<ModuleBean> moduleBeans = this.list();
        if (CollectionUtil.isEmpty(moduleBeans)){
            return Collections.emptyList();
        }
        // 查询所有知识点
        List<KpsBean> kpsBeans = kpsService.list();

        List<ModuleAndKpsResp> datas = moduleBeans.stream().map(sig -> {
            ModuleAndKpsResp tmp = new ModuleAndKpsResp();
            tmp.setModuleId(sig.getModuleId());
            tmp.setModuleName(sig.getModuleName());

            if (CollectionUtil.isNotEmpty(kpsBeans)){
                List<KpsBean> kpsTmps = kpsBeans.stream().filter(item -> ObjectUtil.equal(item.getModuleId(), sig.getModuleId())).collect(Collectors.toList());
                tmp.setKpsBeanList(kpsTmps);
            }
            return tmp;
        }).collect(Collectors.toList());

        return datas;
    }

    @Override
    public Boolean updateModuleInfo(UpdateModuleParam param) throws CommonException {
        Integer moduleId = param.getModuleId();
        String moduleName = param.getModuleName();
        String moduleDescription = param.getModuleDescription();

        // 判断 模块名称  是否存在相同的
        // 重名校验
        int count = this.count(new QueryWrapper<ModuleBean>().lambda().eq(ModuleBean::getModuleName, moduleName).ne(ModuleBean::getModuleId, moduleId));
        if (count > 0){
            throw CommonException.exception_400("存在同名的模块");
        }

        ModuleBean moduleBean = new ModuleBean();
        moduleBean.setModuleId(moduleId);
        moduleBean.setModuleName(moduleName);
        moduleBean.setModuleDescription(moduleDescription);
        moduleBean.setUpdateTime(System.currentTimeMillis());

        return this.updateById(moduleBean);
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public Boolean delModuleInfo(DelModuleParam param) {
        Integer moduleId = param.getModuleId();

        // 删除模块
        boolean removeModule = this.removeById(moduleId);

        // 删除知识点
        kpsService.remove(new QueryWrapper<KpsBean>().lambda().eq(KpsBean::getModuleId, moduleId));

        // 删除题目
        List<QuestionBean> list = questionService.list(new QueryWrapper<QuestionBean>().lambda().eq(QuestionBean::getModuleId, moduleId));
        List<Integer> questionIds = list.stream().map(QuestionBean::getQuestionId).collect(Collectors.toList());
        questionService.remove(new QueryWrapper<QuestionBean>().lambda().eq(QuestionBean::getModuleId, moduleId));
        // 题目 的选项 也要删除
        if (CollectionUtil.isNotEmpty(questionIds)){
            optionService.remove(new QueryWrapper<OptionBean>().lambda().in(OptionBean::getQuestionId, questionIds));
        }

        return removeModule;
    }
}
