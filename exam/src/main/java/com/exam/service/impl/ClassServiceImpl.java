package com.exam.service.impl;

import cn.hutool.core.util.StrUtil;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.exam.dao.ClassDao;
import com.exam.dto.DelClassInfoParam;
import com.exam.dto.QueryClassInfoParam;
import com.exam.dto.UpdateClassInfoParam;
import com.exam.entity.DataWithNum;
import com.exam.po.ClassBean;
import com.exam.po.SchoolBean;
import com.exam.service.IClassService;
import com.exam.vo.ClassResp;
import com.exam.vo.SchoolResp;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

/**
 *@className: ClassServiceImpl
 *@description: TODO
 *@author: si_lijing
 *@date: 2024-03-28 19:51
 */
@Service
public class ClassServiceImpl extends ServiceImpl<ClassDao, ClassBean> implements IClassService {
    @Override
    public DataWithNum<List<ClassResp>> queryClassInfo(QueryClassInfoParam param) {

        Integer pageIndex = param.getPageIndex();
        Integer pageSize = param.getPageSize();
        List<ClassBean> records = new ArrayList<>();
        long total = 0;
        if (pageSize == -1){
            records = this.list(new QueryWrapper<ClassBean>().lambda().eq(StrUtil.isNotBlank(param.getClassName()), ClassBean::getClassName, param.getClassName()));
            total = records.size();
        }else {
            Page<ClassBean> page = new Page<>(pageIndex, pageSize);

            Page<ClassBean> page1 = null;
            // 支持根据 班级名称 模糊检索
            if (StrUtil.isNotBlank(param.getClassName())){
                page1 = this.page(page, new QueryWrapper<ClassBean>().lambda().like(ClassBean::getClassName, param.getClassName()));
            }else {
                page1 = this.page(page);
            }
            records = page1.getRecords();
            total = page1.getTotal();
        }
        List<ClassResp> datas = records.stream().map(sig -> {
            ClassResp tmp = new ClassResp();
            tmp.setClassId(sig.getClassId());
            tmp.setClassName(sig.getClassName());
            return tmp;
        }).collect(Collectors.toList());
        return new DataWithNum<>(datas, total);
    }

    @Override
    public Boolean updateClassInfo(UpdateClassInfoParam param) {
        Integer classId = param.getClassId();
        String className = param.getClassName();


        ClassBean classBean = new ClassBean();
        classBean.setClassId(classId);
        classBean.setClassName(className);
        classBean.setTeacherId(param.getTeacherId());

        return this.updateById(classBean);
    }

    @Override
    public Boolean delClassInfo(DelClassInfoParam param) {
        Integer classId = param.getClassId();
        return this.removeById(classId);
    }
}
