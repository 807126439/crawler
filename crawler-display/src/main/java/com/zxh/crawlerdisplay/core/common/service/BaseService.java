package com.zxh.crawlerdisplay.core.common.service;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.dozer.Mapper;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import com.zxh.crawlerdisplay.core.common.dao.ICommomDao;
import com.zxh.crawlerdisplay.core.common.exception.BusinessException;
import com.zxh.crawlerdisplay.core.spring.security.user.UserBO;
import com.zxh.crawlerdisplay.core.spring.security.user.extend.MyUser;

public class BaseService {

	protected Logger logger = LoggerFactory.getLogger(getClass());
	@Resource
	private Mapper mapper;
	@Resource
	protected ICommomDao commomDao;

	public Mapper getMapper() {
		return mapper;
	}

	/**
	 * 获取当前MyUser实体
	 * 
	 * @return
	 */
	public UserBO getNowUser() {
		Object o = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		if (o == null) {
			throw new BusinessException("error request!");
		}

		if (!(o instanceof UserBO)) {
			throw new BusinessException("未登录或无权访问！");
		}
		return (UserBO) o;
	}

	public String getNowUserId() {

		return getNowUser().getId();
	}

	public String getCurrIdentity() {
		Object o = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		if (o == null) {
			return null;
		}

		if (o instanceof MyUser) {
			return ((MyUser) o).getUsername();
		} else {
			return "anonymity";
		}

	}

	/**
	 * 检验是否登录了
	 * 
	 * @return
	 */
	public boolean checkWheatherLogined() {
		Object obj = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		if (obj == null) {
			return false;
		}

		if (obj instanceof MyUser) {
			return true;
		} else {
			return false;
		}

	}

	protected void writeInfoLog(String msg) {
		if (this.logger.isInfoEnabled()) {
			this.logger.info(msg);
		}
	}

	protected void writeWarnLog(String msg) {
		if (this.logger.isWarnEnabled()) {
			this.logger.warn(msg);
		}
	}

	protected void writeErroroLog(String msg) {
		if (this.logger.isErrorEnabled()) {
			this.logger.error(msg);
		}
	}

	/**
	 * 获取当前请求的ip地址
	 * 
	 * @return
	 * 
	 *         public String getNowIPAddress(){ String IP_ADDRESS =
	 *         ServletActionContext.getRequest().getRemoteAddr();
	 * 
	 *         if(IP_ADDRESS.equals("127.0.0.1")){ try { IP_ADDRESS =
	 *         InetAddress.getLocalHost().getHostAddress(); } catch
	 *         (UnknownHostException e) { e.printStackTrace(); IP_ADDRESS =
	 *         "0.0.0.0"; } }
	 * 
	 *         return IP_ADDRESS; }
	 */

	public HttpServletRequest getRequest() {
		return ((ServletRequestAttributes) RequestContextHolder.getRequestAttributes()).getRequest();

	}

}
