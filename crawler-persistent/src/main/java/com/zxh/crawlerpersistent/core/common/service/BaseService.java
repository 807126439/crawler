package com.zxh.crawlerpersistent.core.common.service;

import com.zxh.crawlerpersistent.core.common.bean.DataQuery;
import com.zxh.crawlerpersistent.core.common.bean.Page;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.util.Assert;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.Map;

public class BaseService {
	private final String mDataProp = "mDataProp_";

	protected Logger logger = LoggerFactory.getLogger(getClass());
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
	 * 封装dataTable请求参数,包括开始位置，页面大小和排序信息
	 *
	 */
	public void wrapTableQueryParams(HttpServletRequest request, DataQuery dq) {
		Integer iDisplayStart = null; // 查询起始位置
		String iDisplayStartParam = request.getParameter("iDisplayStart");
		if (iDisplayStartParam != null) {
			iDisplayStart = Integer.parseInt(iDisplayStartParam);
		}
		Integer iDisplayLength = null; // 查询长度
		String iDisplayLengthParam = request.getParameter("iDisplayLength");
		if (iDisplayLengthParam != null) {
			iDisplayLength = Integer.parseInt(iDisplayLengthParam);
		}

		String iSortCol_0 = request.getParameter("iSortCol_0") == null ? "id" : request.getParameter("iSortCol_0");// 排序字段编号

		Integer sortColInt = Integer.parseInt(iSortCol_0);

		String sSortDir_0 = request.getParameter("sSortDir_0") == null ? "asc" : request.getParameter("sSortDir_0");// 排序方式
		sSortDir_0 = sSortDir_0.toLowerCase();
		Assert.isTrue("asc".equals(sSortDir_0) || "desc".equals(sSortDir_0), "error value");

		dq.setStartQuery(iDisplayStart == null ? 0 : iDisplayStart);
		dq.setPageSize(iDisplayLength == null ? dq.getPageSize() : iDisplayLength);

		String sidx = request.getParameter(mDataProp + sortColInt);// 获取排序字段
		dq.setSidx(sidx);
		dq.setSord(sSortDir_0);
		dq.setsEcho(request.getParameter("sEcho"));

	}


	/**
	 * 处理分页结果
	 *
	 * @param page
	 * @return
	 */
	public Map<String, Object> handlePageReult(Page page) {

		Map<String, Object> jsonMap = new HashMap<String, Object>();
		jsonMap.put("aaData", page.getList());
		jsonMap.put("currentPage", page.getCurrentPage());
		jsonMap.put("totalPage", page.getTotalPage());
		jsonMap.put("iTotalDisplayRecords", page.getRecTotal());// 总记录数
		jsonMap.put("iTotalRecords", page.getPageSize()); // 当前查询数量

		return jsonMap;

	}


}
