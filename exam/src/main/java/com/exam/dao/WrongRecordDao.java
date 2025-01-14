package com.exam.dao;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.exam.po.WrongRecordBean;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

/**
 * <p>
 *  Mapper 接口
 * </p>
 *
 * @author jone
 * @since 2024-03-29
 */
@Mapper
public interface WrongRecordDao extends BaseMapper<WrongRecordBean> {

    List<WrongRecordBean> queryWrongModuleAndKps();

}
