package com.zxh.crawlerdisplay.core.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;

/**
 * 非法字符过滤器，用来处理request.getParamater中的非法字符。如<script>alert('123');</script>
 * 
 * @author 单红宇(365384722)
 * @myblog http://blog.csdn.net/catoop/
 * @create 2015年9月18日
 * 
 */
public class IllegalCharacterFilter implements Filter {

	@Override
	public void destroy() {
		// TODO Auto-generated method stub
	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		HttpServletRequest httpRequest = (HttpServletRequest) request;
		MHttpServletRequest mHttpRequest = new MHttpServletRequest(httpRequest);
		chain.doFilter(mHttpRequest, response);
		// chain.doFilter(request, response);
	}

	@Override
	public void init(FilterConfig arg0) throws ServletException {
		// TODO Auto-generated method stub
	}

}
