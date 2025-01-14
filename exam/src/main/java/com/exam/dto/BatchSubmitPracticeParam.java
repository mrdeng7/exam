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
public class BatchSubmitPracticeParam {
    @ApiModelProperty(value = "练习题记录id", required = true)
    @NotNull(message = "练习题记录id不能为空")
    private Integer practiceInfoId;

    @ApiModelProperty(value = "答题信息")
    private List<BatchSubmitPracticeParam.QuestionAnswerInfo> questionAnswerInfoList;


    @Data
    @AllArgsConstructor
    @NoArgsConstructor
    public static class QuestionAnswerInfo{
        @ApiModelProperty(value = "练习题详情记录id", required = true)
        private Integer practiceDetailId;

        @ApiModelProperty(value = "题目id", required = true)
        private Integer questionId;

        @ApiModelProperty(value = "学生填写的答案", required = true)
        private String questionKeyByUser;

    }
}
