package com.zxh.crawlerdisplay.core.spring.security.handler;

import java.io.IOException;
import java.io.PrintWriter;

import javax.annotation.Resource;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.core.Authentication;
import org.springframework.security.web.authentication.SimpleUrlAuthenticationSuccessHandler;

import com.zxh.crawlerdisplay.core.common.bean.AjaxJson;
import com.zxh.crawlerdisplay.core.utils.IpUtils;
import com.zxh.crawlerdisplay.core.utils.http.HttpUtils2;
import com.zxh.crawlerdisplay.core.utils.json.JSONHelper;
import com.zxh.crawlerdisplay.web.system.dao.ILoginLogDao;
import com.zxh.crawlerdisplay.web.system.entity.LoginLog;

public class MyAuthenticationSuccessHandler extends SimpleUrlAuthenticationSuccessHandler {
	@Resource
	private ILoginLogDao loginLogDao;
	private static final String LogDetails = "用户成功登录系统";

	@Override
	protected void handle(HttpServletRequest request, HttpServletResponse response, Authentication authentication) throws IOException, ServletException {
		String targetUrl = determineTargetUrl(request, response);

		if (response.isCommitted()) {
			logger.debug("Response has already been committed. Unable to redirect to " + targetUrl);
			return;
		}

		if (HttpUtils2.isAjaxRequest(request)) {
			processAjax(response);

		} else {
			getRedirectStrategy().sendRedirect(request, response, targetUrl);
		}

	}

	@Override
	public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response, Authentication authentication) throws IOException,
			ServletException {

		super.onAuthenticationSuccess(request, response, authentication);

		LoginLog log = new LoginLog(authentication.getName(), LogDetails, IpUtils.ipToLong(request.getRemoteAddr()));
		this.loginLogDao.insert(log);

	}

	private void processAjax(HttpServletResponse response) {

		response.setCharacterEncoding("utf-8");
		response.setContentType("application/json; charset=utf-8");
		response.setHeader("Pragma", "no-cache");
		response.setDateHeader("Expires", 1L);
		response.setHeader("Cache-Control", "no-cache");
		response.addHeader("Cache-Control", "no-store");

		AjaxJson json = new AjaxJson("login successfully", AjaxJson.success);

		try {
			PrintWriter pw = response.getWriter();
			pw.write(JSONHelper.bean2json(json));
			pw.flush();

		} catch (IOException e) {
			e.printStackTrace();
		}

	}
}
