package com.zxh.crawlerdisplay.core.spring.mvc.interceptors;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.PostConstruct;
import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Component;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import com.zxh.crawlerdisplay.core.common.bean.DataQuery;
import com.zxh.crawlerdisplay.core.spring.mvc.IAccessCheck;
import com.zxh.crawlerdisplay.web.system.dto.white.SysWhiteDomainDTO;
import com.zxh.crawlerdisplay.web.system.service.ISysWhiteDomainService;

/**
 * 
 * @author wb_java_zjr
 * 
 */
@Component
public class AccessCheckInterceptor implements HandlerInterceptor, IAccessCheck {

	private static List<String> whiteAccessSpacees;

	@Resource
	private ISysWhiteDomainService sysWhiteDomainService;

	@PostConstruct
	public void init() {
		if (whiteAccessSpacees == null) {
			whiteAccessSpacees = new ArrayList<String>();
		}

		refreshWhiteDomain();

	}

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {

		String referer = request.getHeader("Referer");

		// 判断 Referer
		if (referer != null) {

			for (String space : whiteAccessSpacees) {
				if (referer.startsWith(space)) {
					return true;
				}
			}
		}

		// response.sendRedirect(request.getContextPath() + "/jsp/403.jsp");

		return true;
	}

	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView modelAndView) throws Exception {

	}

	@Override
	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex) throws Exception {

	}

	@Override
	public synchronized void refreshWhiteDomain() {
		List<SysWhiteDomainDTO> whiteDomains = this.sysWhiteDomainService.searchList(new DataQuery());
		whiteAccessSpacees.clear();
		for (SysWhiteDomainDTO wd : whiteDomains) {
			whiteAccessSpacees.add(wd.getWhiteAddress());
		}

	}

}
