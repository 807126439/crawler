package com.zxh.crawlerdisplay.core.utils;

public class TextUtil {
	public static String valueOf(Object obj) {
		return (obj == null) ? null : obj.toString();
	}

	public static Integer intValueOf(Object obj) {
		String s = valueOf(obj);

		return (s == null) ? null : Integer.valueOf(s);
	}
}
