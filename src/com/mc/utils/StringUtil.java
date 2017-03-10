package com.mc.utils;

import com.mc.constant.RIConst;

public class StringUtil {
	
	/**
	 * 判断字符串是否为null，空格，""空字符串
	 * @param str
	 * @return 
	 */
	public static boolean isEmpty(String str){
		return str == null || RIConst.EMPTY.equals(str.trim());
	}
}
