package com.exam.vo;

import com.exam.po.OptionBean;
import com.exam.po.QuestionTypeBean;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

import java.util.List;

/**
 * @author jone
 * @Description TODO
 * @Date 2024/03/27/21:07
 * @Version 1.0
 */
@Data
public class PracticeClassifyResp {

    @ApiModelProperty(value = "id, 模块 或者 知识点的id")
    private String id;

    @ApiModelProperty(value = "id, 模块 或者 知识点的名称")
    private String name;

    @ApiModelProperty(value = "选择题、判断题····")
    private List<QuestionTypeBean> questionTypeBeans;
}
