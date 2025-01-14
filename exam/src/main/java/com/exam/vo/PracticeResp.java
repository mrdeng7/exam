package com.exam.vo;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import io.swagger.annotations.ApiModelProperty;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;

/**
 * @author jone
 * @Description TODO
 * @Date 2024/03/26/19:26
 * @Version 1.0
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
public class PracticeResp {
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

    @ApiModelProperty(value = "选项")
    private List<OptionInfo> optionInfos;

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
