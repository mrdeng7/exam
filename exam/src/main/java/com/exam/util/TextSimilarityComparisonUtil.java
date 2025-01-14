package com.exam.util;

import org.apache.commons.lang3.StringUtils;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @className: TextSimilarityComparisonUtil
 * @description: 文本相似度比较
 * @author: jone
 * @date: 2024-03-23 19:06
 */
public class TextSimilarityComparisonUtil {
    private static List<String> filterPhrases = new ArrayList<>(16);
    static {
        filterPhrases.add("Oops");
        filterPhrases.add("Wow");
        filterPhrases.add("Eh");
        filterPhrases.add("Uh");
        filterPhrases.add("Ah");
        filterPhrases.add("Oh");
        filterPhrases.add("Hmm");
        filterPhrases.add("!");
        filterPhrases.add(".");
        filterPhrases.add(",");
        filterPhrases.add("?");
        filterPhrases.add(":");
    }
    /**
     * 余弦
     * 趋近于 1.0 则 相似度越大
     * @param doc1
     * @param doc2
     * @return
     */
    public static double getSimilarity(String doc1, String doc2) {
        if (StringUtils.isBlank(doc1) || StringUtils.isBlank(doc2)) {
            return 0L;
        }
        Map<Character,int[]> algMap=new HashMap<>(doc1.length()+doc2.length());
        for (int i = 0; i<doc1.length(); i++) {
            char d1 = doc1.charAt(i);
            int[] fq = algMap.get(d1);
            if (fq != null && fq.length == 2) {
                fq[0]++;
            } else {
                fq = new int[2];
                fq[0] = 1;
                fq[1] = 0;
                algMap.put(d1, fq);
            }
        }
        for (int i = 0; i<doc2.length(); i++) {
            char d2 = doc2.charAt(i);
            int[] fq = algMap.get(d2);
            if (fq != null && fq.length == 2) {
                fq[1]++;
            } else {
                fq = new int[2];
                fq[0] = 0;
                fq[1] = 1;
                algMap.put(d2, fq);
            }
        }
        double sqdoc1 = 0;
        double sqdoc2 = 0;
        double denuminator = 0;
        for (Map.Entry entry : algMap.entrySet()) {
            int[] c = (int[]) entry.getValue();
            denuminator += c[0] * c[1];
            sqdoc1 += c[0] * c[0];
            sqdoc2 += c[1] * c[1];
        }
        return denuminator / Math.sqrt(sqdoc1 * sqdoc2);
    }

    /**
     * 字符串编辑距离
     * 趋近于0 则相似度越小
     * @param doc1
     * @param doc2
     * @return
     */
    //org.apache.commons.lang.StringUtils.getLevenshteinDistance(str1, str2);
    public static int getLevenshteinDistance(String doc1, String doc2) {
        if (StringUtils.isBlank(doc1) && StringUtils.isBlank(doc2)) {
            throw new IllegalArgumentException("Strings must not be null");
        }
        int n = doc1.length();
        int m = doc2.length();
        if (n == 0) {
            return m;
        } else if (m == 0) {
            return n;
        } else {
            if (n > m) {
                String tmp = doc1;
                doc1 = doc2;
                doc2 = tmp;
                n = m;
                m = tmp.length();
            }

            int[] p = new int[n + 1];
            int[] d = new int[n + 1];

            int i;
            for(i = 0; i <= n; p[i] = i++) {
            }

            for(int j = 1; j <= m; ++j) {
                char tJ = doc2.charAt(j - 1);
                d[0] = j;

                for(i = 1; i <= n; ++i) {
                    int cost = doc1.charAt(i - 1) == tJ ? 0 : 1;
                    d[i] = Math.min(Math.min(d[i - 1] + 1, p[i] + 1), p[i - 1] + cost);
                }

                int[] _d = p;
                p = d;
                d = _d;
            }

            return p[n];
        }

    }

    /**
     * 英文 余弦相似度计算
     * 趋近于 1.0 则 相似度越大
     * @param doc1
     * @param doc2
     * @return
     */
    public static float getEnSimilarity(String doc1, String doc2){
        if (StringUtils.isBlank(doc1) && StringUtils.isBlank(doc2)){
            return 0;
        }
        return cosVector(doc1, doc2);
    }

    /**
     * 计算余弦向量
     * @param sentence1
     * @param sentence2
     * @return
     */
    public static float cosVector(String sentence1,String sentence2){
        //第一句的单词集
        String []wordsOfSen1;
        //第二句的单词集
        String []wordsOfSen2;
        wordsOfSen1 = sentence1.split(" ");
        wordsOfSen2 = sentence2.split(" ");
        //单词的出现频数，例：wordWeight[word][0]单词"word"在第一句中出现的频数
        Map <String,int[]> wordWeight= new HashMap<>(32);
        //两句话的单词频数统计
        for (String s : wordsOfSen1) {
            s = s.replaceAll( "[\\pP+~$`^=|<>～｀＄＾＋＝｜＜＞￥×]" , "");
            //去掉常用词
            if (StringUtils.isEmpty(s) || filterPhrases.contains(s)){
                continue;
            }
            if (!isIn(wordWeight, s)){
                wordWeight.put(s, new int[]{1, 0});
            } else {
                wordWeight.get(s)[0] += 1;
            }
        }
        for (String s : wordsOfSen2) {
            s = s.replaceAll( "[\\pP+~$`^=|<>～｀＄＾＋＝｜＜＞￥×]" , "");
            //去掉常用词
            if (StringUtils.isEmpty(s) || filterPhrases.contains(s)){
                continue;
            }
            if (!isIn(wordWeight, s)) {
                wordWeight.put(s, new int[]{0, 1});
            } else {
                wordWeight.get(s)[1] += 1;
            }
        }
        //上面已经将各个单词的频数按照向量(即句子向量)的形式表示出来了
        //wordWeight.size就是向量的维数
        //wordWeight[word][0]就是单词"word"在第一句中出现的频数
        //下面利用该向量计算余弦

        //两个句子向量的内积
        float neiji=(float) 0.0;
        //句子1的向量模de平方
        float modeOfSen1=(float)0.0;
        //句子2的向量模de平方
        float modeOfSen2=(float)0.0;
        for(String key : wordWeight.keySet()){
            neiji += wordWeight.get(key)[0]*wordWeight.get(key)[1];
            modeOfSen1 += Math.pow(wordWeight.get(key)[0], 2);
            modeOfSen2 += Math.pow(wordWeight.get(key)[1], 2);

        }
        return (float) (neiji/(Math.sqrt(modeOfSen1)*Math.sqrt(modeOfSen2)));
    }

    /**
     * 判断指定字符串str是否在Map的索引集当中
     * @param wordWeight
     * @param str
     * @return
     */
    public static Boolean isIn(Map<String,int[]> wordWeight,String str){
        //遍历map的所有key
        for (String key : wordWeight.keySet()) {
            if(key.equals(str)) {
                return true;
            }
        }
        return false;
    }


    public static void main(String[] args) {
        String str1 = "an integer overflow can occur that causes less memory to be allocated than expected, leading to a buffer overflow.";
        String str2 = "Wow ! allow remote attacker to cause a denial of service";

        String str3 = "计算余弦相似性的函数";
        String str4 = "两个文本字符串的余弦相似度计算";
        float enSimilarity = getEnSimilarity(str1, str2);
        double enSimilarity2 = getSimilarity(str3, str4);
        System.out.println(enSimilarity);
        System.out.println(enSimilarity2);
    }
}
