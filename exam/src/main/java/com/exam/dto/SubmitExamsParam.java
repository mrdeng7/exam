package com.exam.dto;

import io.swagger.annotations.ApiModelProperty;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.validation.constraints.NotNull;
import java.util.List;

/**
 * @author jone
 * @Description TODO
 * @Date 2024/03/29/22:58
 * @Version 1.0
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
public class SubmitExamsParam {
    @ApiModelProperty(value = "考试说明 id", required = true)
    private Integer examId;

    @ApiModelProperty(value = "试卷 id", required = true)
    private Integer examPaperId;

    @ApiModelProperty(value = "用户id", required = true)
    private Integer userId;

    @ApiModelProperty(value = "答题信息")
    private List<QuestionAnswerInfo> questionAnswerInfoList;


    @Data
    @AllArgsConstructor
    @NoArgsConstructor
    public static class QuestionAnswerInfo{
        @ApiModelProperty(value = "试卷试题 id", required = true)
        private Integer examPaperQuestionId;


        @ApiModelProperty(value = "学生答案")
        private String questionKeyByUser;
    }

}
