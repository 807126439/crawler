package com.zxh.crawlerdisplay.core.spring.mvc;

import org.apache.commons.lang.StringUtils;

import java.util.Arrays;
import java.util.List;
import java.util.regex.Pattern;

public class Validator {

	public static String filter(String value) {
		if (value == null) {
			return null;
		}
		StringBuffer result = new StringBuffer(value.length());
		for (int i = 0; i < value.length(); ++i) {
			switch (value.charAt(i)) {
			case '<':
				result.append("&lt;");
				break;
			case '>':
				result.append("&gt;");
				break;
			case '"':
				result.append("&quot;");
				break;
			case '\'':
				result.append("&#39;");
				break;
			case '%':
				result.append("&#37;");
				break;
			case ';':
				result.append("&#59;");
				break;
			case '(':
				result.append("&#40;");
				break;
			case ')':
				result.append("&#41;");
				break;
			case '&':
				result.append("&amp;");
				break;
			case '+':
				result.append("&#43;");
				break;
			default:
				result.append(value.charAt(i));
				break;
			}

		}

		return result.toString();
	}

	public static boolean matchPattern(String value, String expression) {
		boolean match = false;
		if (validateRequired(expression)) {
			match = Pattern.matches(expression, value);
		}
		return match;
	}

	public static boolean validateOption(Object[] options, Object value) {
		boolean isValidValue = false;
		try {
			List list = Arrays.asList(options);
			if (list != null) {
				isValidValue = list.contains(value);
			}
		} catch (Exception e) {
		}

		return isValidValue;
	}

	public static boolean validateRequired(String value) {
		boolean isFieldValid = false;
		if (value != null && value.trim().length() > 0) {
			isFieldValid = true;
		}
		return isFieldValid;
	}

	public static boolean validateInt(String value) {
		boolean isFieldValid = false;
		try {
			Integer.parseInt(value);
			isFieldValid = true;
		} catch (Exception e) {
			isFieldValid = false;
		}
		return isFieldValid;
	}

	public static boolean validateLength(String value, int minLength, int maxLength) {
		String validatedValue = value;
		if (!validateRequired(value)) {
			validatedValue = "";
		}
		return (validatedValue.length() >= minLength && validatedValue.length() <= maxLength);
	}

	public static boolean validateRange(int value, int min, int max) {
		return (value >= min && value <= max);
	}

	public static String cleanXSS(String value) {
		if (!StringUtils.isBlank(value)) {
			// You'll need to remove the spaces from the html entities below
			value = value.replaceAll("<", "& lt;").replaceAll(">", "& gt;");
			value = value.replaceAll("\\(", "& #40;").replaceAll("\\)", "& #41;");
			value = value.replaceAll("'", "& #39;");
			value = value.replaceAll("eval\\((.*)\\)", "");
			value = value.replaceAll("[\\\"\\\'][\\s]*javascript:(.*)[\\\"\\\']", "\"\"");
			value = value.replaceAll("script", "");
			value = value.replaceAll("alert", "");
			value = value.replaceAll("style", "");

			// value = value.replaceAll("img", "");
			// value = value.replaceAll("iframe", "");
		}

		return value;
	}
}
