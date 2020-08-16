package com.zxh.crawlerdisplay.core.filter;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class AccessFilter implements Filter {

	private List<String> whiteAccessSpacees;

	@Override
	public void init(FilterConfig arg0) throws ServletException {
		if (whiteAccessSpacees == null) {
			whiteAccessSpacees = new ArrayList<String>();
		}
		whiteAccessSpacees.add("http://localhost");
		whiteAccessSpacees.add("http://202.104.110.143");
		whiteAccessSpacees.add("http://test.wanve.com");
	}

	@Override
	public void destroy() {
		// TODO Auto-generated method stub

	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		HttpServletRequest httpRequest = (HttpServletRequest) request;
		HttpServletResponse httpResponse = (HttpServletResponse) response;

		String referer = httpRequest.getHeader("Referer");

		// 判断 Referer
		if (referer != null) {

			for (String space : whiteAccessSpacees) {
				if (referer.startsWith(space)) {
					chain.doFilter(request, response);
				}
			}
		}

		request.getRequestDispatcher("common/error/500.ftl").forward(request, response);

	}
}
