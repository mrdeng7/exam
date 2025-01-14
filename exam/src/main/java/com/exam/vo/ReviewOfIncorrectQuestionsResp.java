package com.exam.vo;

import io.swagger.annotations.ApiModelProperty;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;


/**
 * @author lj
 * @Description TODO
 * @Date 2024/04/11/22:24
 * @Version 1.0
 */

@Data
@AllArgsConstructor
@NoArgsConstructor
public class ReviewOfIncorrectQuestionsResp {

    @ApiModelProperty(value = "题目id")
    private Integer questionId;

    @ApiModelProperty(value = "题干")
    private String question;

    @ApiModelProperty(value = "参考答案")
    private String questionKey;

    @ApiModelProperty(value = "解析")
    private String analysis;

    @ApiModelProperty(value = "选项")
    private List<PracticeResp.OptionInfo> optionInfos;

    @ApiModelProperty(value = "错误次数")
    private Integer wrongTime;
    @Data
    @AllArgsConstructor
    @NoArgsConstructor
    public static class OptionInfo{
        @ApiModelProperty(value = "选项编号")
        private String optionNumber;

        @ApiModelProperty(value = "内容")
        private String content;

    }

}
