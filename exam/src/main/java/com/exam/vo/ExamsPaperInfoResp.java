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
 * @Date 2024/04/04/18:35
 * @Version 1.0
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
public class ExamsPaperInfoResp {

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


    @ApiModelProperty(value = "答题信息")
    private List<ExamsPaperInfoResp.ExamsPaperAnswerDetail> examsPaperAnswerDetails;


    @Data
    @AllArgsConstructor
    @NoArgsConstructor

    public static class ExamsPaperAnswerDetail{

        @ApiModelProperty(value = "答题记录 id", required = true)
        private Integer answerDetailId;

        @ApiModelProperty(value = "试卷试题 id")
        private Integer examPaperQuestionId;

        @ApiModelProperty(value = "题目序号")
        private Integer number;

        @ApiModelProperty(value = "题目id")
        private Integer questionId;

        @ApiModelProperty(value = "题干")
        private String question;

        @ApiModelProperty(value = "学生答案")
        private String questionKeyByUser;

        @ApiModelProperty(value = "正确答案")
        private String questionKey;

        @ApiModelProperty(value = "true: 回答正确")
        private Boolean correct;

        @ApiModelProperty(value = "选项")
        private List<ExamsDetailResp.OptionInfo> optionInfos;

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
}
