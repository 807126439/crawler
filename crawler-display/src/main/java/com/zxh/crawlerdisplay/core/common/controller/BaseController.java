package com.zxh.crawlerdisplay.core.common.controller;

import com.zxh.crawlerdisplay.core.common.bean.DataQuery;
import com.zxh.crawlerdisplay.core.common.bean.Page;
import com.zxh.crawlerdisplay.core.common.dto.BaseQueryDTO;
import com.zxh.crawlerdisplay.core.common.dto.DownLoadDTO;
import com.zxh.crawlerdisplay.core.common.exception.BusinessException;
import com.zxh.crawlerdisplay.core.common.utils.Assert;
import com.zxh.crawlerdisplay.core.spring.mvc.Validator;
import com.zxh.crawlerdisplay.core.spring.mvc.interceptors.DateConvertEditor;
import com.zxh.crawlerdisplay.core.spring.mvc.interceptors.XXSEscapeEditor;
import com.zxh.crawlerdisplay.core.spring.security.user.UserBO;
import com.zxh.crawlerdisplay.core.spring.security.user.extend.MyUser;
import com.zxh.crawlerdisplay.web.file.entity.BaseFile;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;
import org.apache.commons.lang.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.bind.ServletRequestDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.util.Date;
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
	 * 过滤html特殊字符 将前台传递过来的日期格式的字符串，自动转化为Date类型
	 * 
	 * @param binder
	 */
	@InitBinder
	public void initBinder(ServletRequestDataBinder binder) {
		binder.registerCustomEditor(String.class, new XXSEscapeEditor());
		binder.registerCustomEditor(Date.class, new DateConvertEditor());

		// binder.registerCustomEditor(String.class, new
		// StringEscapeEditor(true, true, true));
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
	 * 处理前台传来的菜单名称
	 * 
	 * @param request
	 */
	public void wrapMenuTitle(HttpServletRequest request) {
		String title = Validator.cleanXSS(request.getParameter("title"));
		String topTitle = Validator.cleanXSS(request.getParameter("top"));
		String lastTitle = Validator.cleanXSS(request.getParameter("lastTitle"));
		String currName = Validator.cleanXSS(request.getParameter("currName"));

		if (!StringUtils.isBlank(title)) {
			try {
				request.setAttribute("TITLE", URLDecoder.decode(title, "utf-8"));

			} catch (UnsupportedEncodingException e) {
				e.printStackTrace();
			}

		}

		if (!StringUtils.isBlank(topTitle)) {

			try {
				request.setAttribute("TOP_TITLE", URLDecoder.decode(topTitle, "utf-8"));
			} catch (UnsupportedEncodingException e) {

				e.printStackTrace();
			}
		}

		if (!StringUtils.isBlank(lastTitle)) {
			try {
				request.setAttribute("LAST_TITLE", URLDecoder.decode(lastTitle, "utf-8"));

			} catch (UnsupportedEncodingException e) {
				e.printStackTrace();
			}
		}

		if (!StringUtils.isBlank(currName)) {

			try {
				request.setAttribute("currName", URLDecoder.decode(currName, "utf-8"));
			} catch (UnsupportedEncodingException e) {

				e.printStackTrace();
			}
		}

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

	/**
	 * 检测用户是否登录
	 * 
	 * @return
	 * @author wb_java_zjr
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

	/**
	 * 获取当前MyUser实体
	 * 
	 * @return
	 * @author wb_java_zjr
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

	public void createDownLoadStream(HttpServletRequest request, HttpServletResponse response, DownLoadDTO fileInfo) {

		try {

			File file = new File(fileInfo.getFilePath());

			if (fileInfo.getFileName().lastIndexOf(".") == -1) {// 文件名没有后缀的话添加后缀
				String fileType = file.getPath().substring(file.getPath().lastIndexOf(".") + 1);
				fileInfo.setFileName(fileInfo.getFileName() + "." + fileType);
			}

			String agent = request.getHeader("User-Agent");
			boolean isMSIE = (agent != null && (agent.indexOf("MSIE") != -1 || agent.indexOf("rv:11") != -1));

			String fileName = fileInfo.getFileName();
			if (isMSIE) {
				fileName = URLEncoder.encode(fileName.replace(" ", ""), "UTF-8");
			} else {
				fileName = new String(fileName.getBytes("UTF-8"), "ISO-8859-1");
			}
			response.setHeader("Content-Disposition", "attachment; filename=" + fileName);

			// String fileName = new
			// String(fileInfo.getFileName().getBytes("UTF-8"),"iso-8859-1");//为了解决中文名称乱码问题

			response.setCharacterEncoding("utf-8");
			response.setContentType("multipart/form-data");
			response.setContentLength((int) file.length());
			response.setHeader("Content-Disposition", "attachment;fileName=" + fileName);

			InputStream inputStream = new FileInputStream(file);

			OutputStream os = response.getOutputStream();
			byte[] b = new byte[8192];
			int length;
			while ((length = inputStream.read(b)) > 0) {
				os.write(b, 0, length);
			}

			os.close();

			inputStream.close();

		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}

	}

	public ModelAndView createPreviewModelAndView(DownLoadDTO result) {

		String view = "common/view/viewFile.jsp";
		if (BaseFile.FILE_KIND_PICTURE == result.getFileKind()) {
			view = "common/view/viewImg.jsp";
		}

		return new ModelAndView(view).addObject("result", result);
	}

	/**
	 * 解析jqgrid请求
	 * 
	 * @param queryDto
	 * @param filters
	 */
	public void setSearchValues(BaseQueryDTO queryDto, String filters) {
		JSONObject jsonObject = JSONObject.fromObject(filters);
		queryDto.setGroupOp(jsonObject.getString("groupOp"));
		queryDto.setRules(jsonObject.getJSONArray("rules"));

	}

	/**
	 * 设置未验证
	 */
	public void setUnauthenticated() {
		SecurityContextHolder.getContext().getAuthentication().setAuthenticated(false);
	}

	public synchronized String getDomainAddr() {

		HttpServletRequest request = ((ServletRequestAttributes) RequestContextHolder.getRequestAttributes()).getRequest();
		StringBuffer url = request.getRequestURL();
		String a = request.getRequestURI();

		String tempContextUrl = url.delete(url.length() - request.getRequestURI().length(), url.length()).toString();
		String domainAddr = tempContextUrl.replace(request.getServerPort() + "", request.getLocalPort() + "");
		System.out.println(request.getContextPath());
		return domainAddr;
	}

}
