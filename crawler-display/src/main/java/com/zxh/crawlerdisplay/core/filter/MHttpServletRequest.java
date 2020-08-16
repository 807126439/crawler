package com.zxh.crawlerdisplay.core.filter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletRequestWrapper;

import com.zxh.crawlerdisplay.core.utils.TestUtil;

/**
 * 参数特殊字符过滤
 * 
 * @author 单红宇(365384722)
 * @myblog http://blog.csdn.net/catoop/
 * @create 2015年9月18日
 */
public class MHttpServletRequest extends HttpServletRequestWrapper {

	public MHttpServletRequest(HttpServletRequest request) {
		super(request);
	}

	@Override
	public String getParameter(String name) {
		TestUtil.printTips();// TODO
		// 过滤参数名
		String parameterName = XssShieldUtil.stripXss(name);
		// 过滤值
		return XssShieldUtil.stripXss(super.getParameter(parameterName));
	}

	@Override
	public String[] getParameterValues(String name) {
		TestUtil.printTips();// TODO
		// 过滤参数名
		String parameterName = XssShieldUtil.stripXss(name);
		String[] values = super.getParameterValues(parameterName);
		if (values != null) {
			for (int i = 0; i < values.length; i++) {
				// 过滤值
				values[i] = XssShieldUtil.stripXss(values[i]);
			}
		}
		return values;
	}
}
