package com.exam.util;

/**
 * @author jone
 * @Description TODO
 * @Date 2024/03/26/23:20
 * @Version 1.0
 */
public class IntToSmallChineseNumber {
    public static String ToCH(int intInput) {
        String si = String.valueOf(intInput);
        String sd = "";
        if (si.length() == 1)
        {
            sd += GetCH(intInput);
            return sd;
        } else if (si.length() == 2)
        {
            if  (si.charAt(0) == '1') {
                sd += "十";
            } else {
                sd += (GetCH(intInput / 10) + "十");
            }
            sd += ToCH(intInput % 10);
        } else if (si.length() == 3)
        {
            sd += (GetCH(intInput / 100) + "百");
            if (String.valueOf(intInput % 100).length() < 2) {
                sd += "零";
            }
            sd += ToCH(intInput % 100);
        } else if (si.length() == 4)
        {
            sd += (GetCH(intInput / 1000) + "千");
            if (String.valueOf(intInput % 1000).length() < 3) {
                sd += "零";
            }
            sd += ToCH(intInput % 1000);
        } else if (si.length() == 5)
        {
            sd += (GetCH(intInput / 10000) + "萬");
            if (String.valueOf(intInput % 10000).length() < 4) {
                sd += "零";
            }
            sd += ToCH(intInput % 10000);
        }

        return sd;
    }


    private static String GetCH(int input) {
        String sd = "";
        switch (input) {
            case 1:
                sd = "一";
                break;
            case 2:
                sd = "二";
                break;
            case 3:
                sd = "三";
                break;
            case 4:
                sd = "四";
                break;
            case 5:
                sd = "五";
                break;
            case 6:
                sd = "六";
                break;
            case 7:
                sd = "七";
                break;
            case 8:
                sd = "八";
                break;
            case 9:
                sd = "九";
                break;
            default:
                break;
        }
        return sd;
    }
}
