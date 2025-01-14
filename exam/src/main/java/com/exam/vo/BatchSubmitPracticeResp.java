package com.exam.vo;

import io.swagger.annotations.ApiModelProperty;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.math.BigDecimal;
import java.util.List;

/**
 * @author lj
 * @Description TODO
 * @Date 2024/04/14/14:42
 * @Version 1.0
 */
@Data
public class BatchSubmitPracticeResp {
    @ApiModelProperty(value = "正确率")
    private BigDecimal accuracy;

    @ApiModelProperty(value = "总题数")
    private Integer total;

    @ApiModelProperty(value = "正确数")
    private Long correctTotal;

    @ApiModelProperty(value = "练习题记录id")
    private Integer practiceInfoId;

    @ApiModelProperty(value = "练习题详情记录id")
    private Integer practiceDetailId;

    @ApiModelProperty(value = "题型id")
    private Integer questionTypeId;

    @ApiModelProperty(value = "题目id")
    private Integer questionId;

    @ApiModelProperty(value = "题干")
    private String question;


    @ApiModelProperty(value = "学生答案")
    private String questionKeyByUser;

    @ApiModelProperty(value = "正确答案")
    private String questionKey;

    @ApiModelProperty(value = "回答是否正确， true: 是， false：否")
    private Boolean correct;


    @ApiModelProperty(value = "选项")
    private List<BatchSubmitPracticeResp.OptionInfo> optionInfos;

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
