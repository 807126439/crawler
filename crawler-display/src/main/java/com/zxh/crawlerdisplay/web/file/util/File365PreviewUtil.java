package com.zxh.crawlerdisplay.web.file.util;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

public class File365PreviewUtil {

	private final static String hostAddress = "http://www.szwanve.com:8088/?furl=";

	private static String localServerPath = null;

	/**
	 * 获取365预览地址
	 * 
	 * @param localViewPath
	 *            文件下载url地址 /documentFileItemControlle/downFile.do?id=xx
	 * @return 2017-12-15 上午10:40:31
	 */
	public static String buildViewPath(String localViewPath) {

		return hostAddress + getServerPath() + localViewPath;

	}

	private static String getServerPath() {

		if (localServerPath == null) {
			HttpServletRequest request = ((ServletRequestAttributes) RequestContextHolder.getRequestAttributes()).getRequest();
			StringBuffer url = request.getRequestURL();

			String tempContextUrl = url.delete(url.length() - request.getRequestURI().length(), url.length()).toString();
			String domainAddr = tempContextUrl.replace(request.getServerPort() + "", request.getLocalPort() + "");
			localServerPath = domainAddr + request.getContextPath();
		}
		return localServerPath;

	}
}
