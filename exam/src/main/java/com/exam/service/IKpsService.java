package com.exam.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.exam.config.exception.CommonException;
import com.exam.dto.AddKpsInfoParam;
import com.exam.dto.DelKpsParam;
import com.exam.dto.QueryKpsParam;
import com.exam.dto.UpdateKpsInfoParam;
import com.exam.entity.DataWithNum;
import com.exam.po.KpsBean;
import com.exam.vo.KpsResp;
import io.swagger.models.auth.In;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author jone
 * @since 2024-03-24
 */
public interface IKpsService extends IService<KpsBean> {

    DataWithNum<List<KpsResp>> queryKpsInfo(QueryKpsParam param);

    List<Integer> queryNoPracticeKpsId(Integer studentId);

    Boolean updateKpsInfo(UpdateKpsInfoParam param) throws CommonException;

    Boolean addKpsInfo(AddKpsInfoParam param) throws CommonException;

    Boolean delKpsInfo(DelKpsParam param);
}
