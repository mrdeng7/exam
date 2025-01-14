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
 * @Date 2024/04/05/16:51
 * @Version 1.0
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
public class ExamsDetailResp {

    @ApiModelProperty(value = "试卷组成 id")
    private Integer composeOfExamId;

    @ApiModelProperty(value = "题型序号")
    private String number;

    @ApiModelProperty(value = "题型")
    private Integer questionTypeId;

    @ApiModelProperty(value = "题型名称")
    private String questionTypeName;

    @ApiModelProperty(value = "每道题分数")
    private BigDecimal scoreForEachQuestion;

    @ApiModelProperty(value = "数量")
    private Integer quantity;

    @ApiModelProperty(value = "题目")
    private List<ExamsPaperQuestionInfo> examPaperQuestions;


    @Data
    @AllArgsConstructor
    @NoArgsConstructor
    public static class ExamsPaperQuestionInfo{
        @ApiModelProperty(value = "试卷试题 id")
        private Integer examPaperQuestionId;

        @ApiModelProperty(value = "题目序号")
        private Integer number;

        @ApiModelProperty(value = "题目id")
        private Integer questionId;

        @ApiModelProperty(value = "题干")
        private String question;

        @ApiModelProperty(value = "选项")
        private List<ExamsDetailResp.OptionInfo> optionInfos;
    }


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
