package com.exam.util;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Random;
import java.util.stream.Collectors;

/**
 * @author lj
 * @Description 取样算法
 * @Date 2024/04/04/14:59
 * @Version 1.0
 */
public class SamplingUtil {

    /**
     * 分层随机抽样
     * @param population
     * @param sampleSize
     * @return
     * @param <T>
     */
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


    /**
     * 蓄水池抽样（Reservoir Sampling）: 随机取样的更高效算法，尤其当涉及到大数据集的时候。这种算法特别适合于从一个很可能不适合一次性存入内存的大数据集中随机选取样本，或者数据是以流的形式出现时。
     * @param stream    数据集
     * @param k 最终需要的数量
     * @return
     */
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


    //蓄水池抽样和分层随机抽样是两种不同类型的抽样方法，每种方法都有自己的特点和适用场景。以下是它们的区别：
    //        **蓄水池抽样(Reservoir Sampling)**：
    //蓄水池抽样主要用于处理流数据或大数据集，当事先不知道数据总量时尤其有用。
    //它允许从流数据中高效地选取固定数量的样本，而且确保每个数据项被选中的概率相等。
    //这种方法不需要存储除了蓄水池以外的所有数据，因此内存需求较小。
    //它适用于“在线”算法，可以在接收数据的同时进行抽样。
    //蓄水池抽样不会对源数据进行分组，所有项都平等地参与样本的选择。
    //        **分层随机抽样(Stratified Sampling)**：
    //分层随机抽样首先将总体分为不同的“层”，每层内的元素具有相似的特征。
    //从每个层中独立地进行随机抽样，可以保证从每个层抽取一定比例的样本。
    //此方法需要全面了解数据，因为需要事先知道每个层的界限和组成。
    //分层抽样的目的是增加代表性和减少抽样误差，尤其是当不同层之间的差异显著时更为有效。
    //它适合于那些可以预先定义分层准则，并且希望确保每个层都被合理代表的情况。
    //简而言之，蓄水池抽样更适合流数据或大数据集中等概率的随机选择，而没有明确层次的情况；分层随机抽样适用于当你有清晰的分层准则，并且想要确保抽样时每个层都被合理代表的情况。后者通常用于调查研究和其他需要高准确度抽样的场合。
}
