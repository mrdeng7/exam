package com.exam.service;

import com.exam.config.exception.CommonException;
import com.exam.dto.*;
import com.exam.entity.DataWithNum;
import com.exam.po.ModuleBean;
import com.baomidou.mybatisplus.extension.service.IService;
import com.exam.vo.ModuleAndKpsResp;
import com.exam.vo.ModuleResp;
import com.exam.vo.PracticeClassifyResp;

import java.util.List;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author jone
 * @since 2024-03-24
 */
public interface IModuleService extends IService<ModuleBean> {


    Boolean addModuleInfo(AddModuleInfo param) throws CommonException;

    DataWithNum<List<ModuleResp>> queryModule(QueryModuleParam param);

    List<ModuleAndKpsResp> queryModuleAndKps();

    Boolean updateModuleInfo(UpdateModuleParam param) throws CommonException;

    Boolean delModuleInfo(DelModuleParam param);
}
