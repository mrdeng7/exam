package com.exam.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.exam.dto.DelClassInfoParam;
import com.exam.dto.QueryClassInfoParam;
import com.exam.dto.QueryKpsParam;
import com.exam.dto.UpdateClassInfoParam;
import com.exam.entity.DataWithNum;
import com.exam.po.ClassBean;
import com.exam.po.KpsBean;
import com.exam.vo.ClassResp;
import com.exam.vo.KpsResp;

import java.util.List;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author jone
 * @since 2024-03-24
 */
public interface IClassService extends IService<ClassBean> {

    DataWithNum<List<ClassResp>> queryClassInfo(QueryClassInfoParam param);

    Boolean updateClassInfo(UpdateClassInfoParam param);

    Boolean delClassInfo(DelClassInfoParam param);
}
