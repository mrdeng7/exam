package com.exam.service;

import cn.hutool.core.util.StrUtil;
import com.exam.config.exception.CommonException;
import com.exam.dto.AddUserParam;
import com.exam.entity.DataPackage;
import io.swagger.annotations.ApiOperation;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;

import javax.annotation.Resource;
import java.lang.reflect.Array;
import java.util.Arrays;

/**
 * @author lj
 * @Description TODO
 * @Date 2024/04/09/21:58
 * @Version 1.0
 */

@SpringBootTest
@RunWith(SpringRunner.class)
public class UserManagerServiceTest {

    @Resource
    IUserManagerService userManagerService;

    @Test
    public void addUser() throws CommonException {
        AddUserParam param = new AddUserParam();
        param.setPhone("18473095331");
        param.setPassword("123456789");
        param.setEmail("18473095331@163.com");
        param.setName("jone");
        param.setExpireTime(1743436800000L);
        param.setRoleIds(Arrays.asList(2));
        param.setSchoolId(1);
        param.setType(2);
        param.setGender(1);
        String password = userManagerService.addUser(param);


        System.out.println();
    }

}
