package com.zxh.crawlerpersistent.core.common.controller;

import com.alibaba.dubbo.common.json.JSONArray;
import com.zxh.crawlerpersistent.core.common.bean.DataQuery;
import com.zxh.crawlerpersistent.core.common.bean.Page;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.util.Assert;

import javax.servlet.http.HttpServletRequest;
import java.io.*;
import java.util.HashMap;
import java.util.Map;

public class BaseController implements Serializable {

	private static final long serialVersionUID = 1L;
	protected Logger logger = LoggerFactory.getLogger(getClass());

	private final String mDataProp = "mDataProp_";
	public final String SAVE_SUCCESS_MESSAGE = "保存成功！";
	public final String ADD_SUCCESS_MESSAGE = "添加成功！";
	public final String EDIT_SUCCESS_MESSAGE = "修改成功！";
	public final String REPLY_SUCCESS_MESSAGE = "回复成功！";
	public final String DEL_SUCCESS_MESSAGE = "删除成功！";
	public final String UPLOAD_SUCCESS_MESSAGE = "上传成功！";
	public final String OPER_SUCCESS_MESSAGE = "操作成功！";
	public final String AUDIT_SUCCESS_MESSAGE = "审核成功！";
	public final String SEND_SUCCESS_MESSAGE = "发送成功！";
	public final String COMMIT_SUCCESS_MESSAGE = "提交成功！";

	public final String MODE_ADD = "add";
	public final String MODE_EDIT = "edit";
	public final String MODE_VIEW = "view";

	public boolean checkMode(String mode) {
		boolean ret = false;
		if (MODE_ADD.equals(mode)) {
			ret = true;

		} else if (MODE_EDIT.equals(mode)) {
			ret = true;

		} else if (MODE_VIEW.equals(mode)) {
			ret = true;
		}

		return ret;

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

	/**
	 * 处理LayerPage分页结果
	 * 
	 * @param page
	 * @return
	 */
	public Map<String, Object> handleLayerPageReult(Page page) {

		Map<String, Object> jsonMap = new HashMap<String, Object>();
		jsonMap.put("list", page.getList());
		jsonMap.put("currentPage", page.getCurrentPage());
		jsonMap.put("pages", page.getTotalPage());

		return jsonMap;

	}


	/**
	 * 处理分页结果
	 * 
	 * @param page
	 * @return
	 */
	public Map<String, Object> handlePageReultAndJsonArray(Page page, JSONArray array) {

		Map<String, Object> jsonMap = new HashMap<String, Object>();
		jsonMap.put("aaData", array);
		jsonMap.put("currentPage", page.getCurrentPage());
		jsonMap.put("totalPage", page.getTotalPage());
		jsonMap.put("iTotalDisplayRecords", page.getRecTotal());// 总记录数
		jsonMap.put("iTotalRecords", page.getPageSize()); // 当前查询数量

		return jsonMap;

	}


}
