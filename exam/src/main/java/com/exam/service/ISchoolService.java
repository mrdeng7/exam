package com.exam.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.exam.dto.QueryClassInfoParam;
import com.exam.dto.QuerySchoolInfoParam;
import com.exam.entity.DataWithNum;
import com.exam.po.SchoolBean;
import com.exam.vo.ClassResp;
import com.exam.vo.SchoolResp;

import java.util.List;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author jone
 * @since 2024-03-26
 */
public interface ISchoolService extends IService<SchoolBean> {

    DataWithNum<List<SchoolResp>> querySchoolInfo(QuerySchoolInfoParam param);

}
