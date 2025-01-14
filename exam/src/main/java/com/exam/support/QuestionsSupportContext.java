package com.exam.support;

import org.springframework.stereotype.Component;

import java.util.HashMap;
import java.util.Map;

/**
 * @author jone
 * @Description TODO
 * @Date 2024/03/26/19:28
 * @Version 1.0
 */
@Component
public class QuestionsSupportContext {
    private final static Map<Integer, AbstractQuestionsSupport> strategyMap = new HashMap<>();

    protected void add(AbstractQuestionsSupport mediaSupport) {
        strategyMap.put(mediaSupport.generateQuestionsType(), mediaSupport);
    }

    public AbstractQuestionsSupport getQuestionsSupportById(Integer id) {
        return strategyMap.get(id);
    }

}
