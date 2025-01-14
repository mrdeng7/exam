package com.exam.service.impl;

import cn.hutool.core.util.ObjectUtil;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.exam.config.exception.CommonException;
import com.exam.dto.AddKpsInfoParam;
import com.exam.dto.DelKpsParam;
import com.exam.dto.QueryKpsParam;
import com.exam.dto.UpdateKpsInfoParam;
import com.exam.entity.DataWithNum;
import com.exam.po.KpsBean;
import com.exam.dao.KpsDao;
import com.exam.po.ModuleBean;
import com.exam.service.IKpsService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.exam.vo.KpsResp;
import com.exam.vo.ModuleResp;
import org.springframework.stereotype.Service;

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
public class KpsServiceImpl extends ServiceImpl<KpsDao, KpsBean> implements IKpsService {

    @Override
    public DataWithNum<List<KpsResp>> queryKpsInfo(QueryKpsParam param) {
        Integer pageIndex = param.getPageIndex();
        Integer pageSize = param.getPageSize();
        Page<KpsBean> page = new Page<>(pageIndex, pageSize);

        Page<KpsBean> page1 = this.page(page);
        List<KpsBean> records = page1.getRecords();

        List<KpsResp> datas = records.stream().map(sig -> {
            KpsResp tmp = new KpsResp();
            tmp.setKpsId(sig.getKpsId());
            tmp.setKpsName(sig.getKpsName());
            return tmp;
        }).collect(Collectors.toList());
        return new DataWithNum<>(datas, page1.getTotal());
    }

    @Override
    public List<Integer> queryNoPracticeKpsId(Integer studentId) {
        if (ObjectUtil.isNull(studentId)){
            return Collections.emptyList();
        }

        return baseMapper.queryNoPracticeKpsId(studentId);
    }

    @Override
    public Boolean updateKpsInfo(UpdateKpsInfoParam param) throws CommonException {
        Integer kpsId = param.getKpsId();
        String kpsName = param.getKpsName();
        Integer moduleId = param.getModuleId();
        int count = this.count(new QueryWrapper<KpsBean>().lambda().eq(KpsBean::getModuleId, moduleId).eq(KpsBean::getKpsName, kpsName));
        if (count > 0){
            throw CommonException.exception_400("相同章节下存在同名知识点");
        }
        KpsBean kpsBean = new KpsBean();
        kpsBean.setKpsId(kpsId);
        kpsBean.setKpsName(kpsName);
        kpsBean.setModuleId(moduleId);
        return this.updateById(kpsBean);
    }

    @Override
    public Boolean addKpsInfo(AddKpsInfoParam param) throws CommonException {
        Integer moduleId = param.getModuleId();
        String kpsName = param.getKpsName();

        // 判断该模块下是否存在同名的知识点

        int count = this.count(new QueryWrapper<KpsBean>().lambda().eq(KpsBean::getModuleId, moduleId).eq(KpsBean::getKpsName, kpsName));
        if (count > 0){
            throw CommonException.exception_400("相同章节下存在同名知识点");
        }
        KpsBean kpsBean = new KpsBean();
        kpsBean.setKpsName(kpsName);
        kpsBean.setModuleId(moduleId);
        return this.save(kpsBean);
    }

    @Override
    public Boolean delKpsInfo(DelKpsParam param) {
        String kpsId = param.getKpsId();
        return this.removeById(kpsId);
    }
}
