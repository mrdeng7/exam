package com.exam.service.impl;

import cn.hutool.core.bean.BeanUtil;
import cn.hutool.core.util.StrUtil;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.exam.dao.SchoolDao;
import com.exam.dto.QuerySchoolInfoParam;
import com.exam.entity.DataWithNum;
import com.exam.po.ClassBean;
import com.exam.po.SchoolBean;
import com.exam.service.ISchoolService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.exam.vo.SchoolResp;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author jone
 * @since 2024-03-26
 */
@Service
public class SchoolServiceImpl extends ServiceImpl<SchoolDao, SchoolBean> implements ISchoolService {

    @Override
    public DataWithNum<List<SchoolResp>> querySchoolInfo(QuerySchoolInfoParam param) {
        Integer pageIndex = param.getPageIndex();
        Integer pageSize = param.getPageSize();

        List<SchoolBean> records = new ArrayList<>();
        long total = 0;
        // -1 时 查询所有
        if (pageSize == -1){
            records = this.list();
            total = records.size();
        } else {
            Page<SchoolBean> page = new Page<>(pageIndex, pageSize);

            Page<SchoolBean> page1 = null;
            // 支持根据 班级名称 模糊检索
            if (StrUtil.isNotBlank(param.getSchoolName())){
                page1 = this.page(page, new QueryWrapper<SchoolBean>().lambda().like(SchoolBean::getSchoolName, param.getSchoolName()));
            }else {
                page1 = this.page(page);
            }
            records = page1.getRecords();
            total = page1.getTotal();
        }

        List<SchoolResp> datas = records.stream().map(sig -> {
            SchoolResp tmp = new SchoolResp();
            tmp.setSchoolId(sig.getSchoolId());
            tmp.setSchoolName(sig.getSchoolName());
            tmp.setSchoolAddress(sig.getSchoolAddress());
            tmp.setSchoolPhone(sig.getSchoolPhone());
            return tmp;
        }).collect(Collectors.toList());
        return new DataWithNum<>(datas, total);
    }
}
