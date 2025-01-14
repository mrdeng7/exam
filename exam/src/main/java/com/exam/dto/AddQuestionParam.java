package com.exam.dto;

import com.exam.po.OptionBean;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

import java.nio.file.OpenOption;
import java.util.List;


/**
 * @author lj
 * @Description TODO
 * @Date 2024/04/13/23:43
 * @Version 1.0
 */
@Data
public class AddQuestionParam {

    @ApiModelProperty(value = "知识点")
    private Integer kpsId;

    @ApiModelProperty(value = "模块id")
    private Integer moduleId;

    @ApiModelProperty(value = "题干")
    private String question;

    @ApiModelProperty(value = "参考答案")
    private String questionKey;

    @ApiModelProperty(value = "难易程度")
    private Integer difficulty;

    @ApiModelProperty(value = "解析")
    private String analysis;

    @ApiModelProperty(value = "题型", required = true)
    private Integer questionTypeId;

    @ApiModelProperty(value = "选项")
    private List<OptionBean> optionBeans;

}
