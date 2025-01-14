package com.exam.service.impl;

import com.exam.po.WrongRecordBean;
import com.exam.dao.WrongRecordDao;
import com.exam.service.IWrongRecordService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author jone
 * @since 2024-03-29
 */
@Service
public class WrongRecordServiceImpl extends ServiceImpl<WrongRecordDao, WrongRecordBean> implements IWrongRecordService {

    @Override
    public List<WrongRecordBean> queryWrongModuleAndKps() {
        return baseMapper.queryWrongModuleAndKps();
    }
}
