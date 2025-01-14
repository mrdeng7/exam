package com.exam.dto;

import com.exam.vo.ExamsDetailResp;
import io.swagger.annotations.ApiModelProperty;
import io.swagger.models.auth.In;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.validation.constraints.NotBlank;
import java.math.BigDecimal;
import java.util.List;

/**
 * @author lj
 * @Description TODO
 * @Date 2024/04/04/18:32
 * @Version 1.0
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
public class MarkingPapersParam {

    @ApiModelProperty(value = "考试答题情况 id", required = true)
    @NotBlank(message = "考试答题情况 id不能为空")
    private Integer answerSituationId;

    @ApiModelProperty(value = "每道题的分值")
    private List<MarkingPapersParam.ScoringSituation> scoringSituations;

    @Data
    @AllArgsConstructor
    @NoArgsConstructor
    public static class ScoringSituation{
        @ApiModelProperty(value = "答题记录 id", required = true)
        private Integer answerDetailId;

        @ApiModelProperty(value = "分值")
        private BigDecimal score;

    }

}
