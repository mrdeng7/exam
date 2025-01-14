package com.exam.service;

import com.alibaba.fastjson.JSONObject;
import com.exam.entity.ErrorRateEntity;
import org.apache.commons.io.FileUtils;
import org.apache.commons.io.LineIterator;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import javax.annotation.Resource;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Random;
import java.util.stream.Collectors;

/**
 * @author lj
 * @Description TODO
 * @Date 2024/04/02/23:00
 * @Version 1.0
 */
@SpringBootTest
@RunWith(SpringRunner.class)
public class QuestionServiceTest {
    @Resource
    IQuestionService questionService;
    @Test
    public void queryKpsErrorRateTest(){
        Integer questionTypeId = 1;
        Integer studentId = 1;
        Integer topN = 10;
        List<ErrorRateEntity> errorRateEntities = questionService.queryKpsErrorRate(questionTypeId, studentId, topN);
        System.out.println();

    }


    public static int[] reservoirSample(int[] stream, int k) {
        Random rand = new Random();
        int[] reservoir = new int[k];

        // 先将前n个数据项（其中n为样本大小）放入“蓄水池”中
        for (int i = 0; i < k; i++) {
            reservoir[i] = stream[i];
        }

        // 从第n+1个数据项开始，每个数据项都有一定的概率被选中并替换掉蓄水池中的某个数据项
        for (int i = k; i < stream.length; i++) {
            int j = rand.nextInt(i + 1);
            if (j < k) {
                reservoir[j] = stream[i];
            }
        }

        return reservoir;
    }

    public static void main(String[] args) {

        List<Integer> list1 = Arrays.asList(1,2,3,4,5,6,7,8,9,10);
        List<Integer> list2 = Arrays.asList(11,12,13,14,15,16,17,18,19,20);
        List<Integer> list3 = Arrays.asList(21,22,23,24);


        int[] array = new int[]{11,12,13,14,15,16,17,18,19,20};
        int[] ints = reservoirSample(array, 4);

        List<List<Integer>> population = new ArrayList<>();
        population.add(list1);
        //population.add(list2);
        population.add(list3);

        List<Integer> integers = stratifiedSample(population, 15);
        System.out.println();
    }


    public static <T> List<T> stratifiedSample(List<List<T>> population, int sampleSize) {
        Random random = new Random();
        List<T> sample = new ArrayList<>(sampleSize);
        int totalSize = population.stream().mapToInt(List::size).sum();

        // 遍历每一层
        for (List<T> stratum : population) {
            // 层中的数据列表  stratum

            // 层占总体的比例
            double proportion = (double) stratum.size() / totalSize;

            // 根据比例计算每层样本大小
            int stratumSampleSize = (int) (Math.ceil(proportion * sampleSize));
            List<T> stratumSample = new ArrayList<>(stratumSampleSize);

            // 如果计算的抽样数量大于层的实际数量，则将整个层作为样本
            if (stratumSampleSize >= stratum.size()) {
                stratumSample = new ArrayList<>(stratum);
            } else {
                // 从层中随机选择样本
                while (stratumSample.size() < stratumSampleSize) {
                    int index = random.nextInt(stratum.size());
                    T element = stratum.get(index);
                    if (!stratumSample.contains(element)) {
                        // 避免重复选择
                        stratumSample.add(element);
                    }
                }
            }

            // 将每一层抽取的样本添加到最终样本列表中
            sample.addAll(stratumSample);
        }

        sample = sample.stream().limit(sampleSize).collect(Collectors.toList());
        return sample;
    }


}
