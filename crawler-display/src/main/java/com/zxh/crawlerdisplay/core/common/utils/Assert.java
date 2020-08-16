package com.zxh.crawlerdisplay.core.common.utils;

import java.text.MessageFormat;

public class Assert extends org.springframework.util.Assert {

	public static final String EMPTY_REOCRD_STR = "Could not find the record!";
	private static final String NULL_PARAM_STR = "{0} could not be null or empty!";
	private static final String ERROR_PARAM_STR = "{0} error value!";

	public static String NULL_PARAM_STR(String paramName) {

		return MessageFormat.format(NULL_PARAM_STR, paramName);
	}

	public static String ERROR_PARAM_STR(String paramName) {

		return MessageFormat.format(ERROR_PARAM_STR, paramName);

	}

	public static void isEmpty(Object val, String msg) {

		if (val == null) {
			throw new IllegalArgumentException(msg);
		}

		if (val instanceof String) {
			Assert.hasText(String.valueOf(val), msg);
		}
	}
}
