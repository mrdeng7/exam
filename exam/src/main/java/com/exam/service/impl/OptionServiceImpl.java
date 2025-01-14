package com.exam.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.exam.dao.OptionDao;
import com.exam.dao.RoleDao;
import com.exam.po.OptionBean;
import com.exam.po.RoleBean;
import com.exam.service.IOptionService;
import com.exam.service.IRoleService;
import org.springframework.stereotype.Service;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author jone
 * @since 2024-03-24
 */
@Service
public class OptionServiceImpl extends ServiceImpl<OptionDao, OptionBean> implements IOptionService {

}
