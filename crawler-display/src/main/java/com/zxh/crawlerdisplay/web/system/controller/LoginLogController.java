package com.zxh.crawlerdisplay.web.system.controller;

import com.zxh.crawlerdisplay.core.common.bean.AjaxJson;
import com.zxh.crawlerdisplay.core.common.bean.DataQuery;
import com.zxh.crawlerdisplay.core.common.bean.Page;
import com.zxh.crawlerdisplay.core.common.controller.BaseController;
import com.zxh.crawlerdisplay.web.system.dto.log.LoginLogDTO;
import com.zxh.crawlerdisplay.web.system.service.ILoginLogService;
import org.apache.commons.lang.StringUtils;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.Date;
import java.util.Map;

@Controller
@Scope("prototype")
@RequestMapping("/loginLogController")
public class LoginLogController extends BaseController {

	/**
	 * 
	 */
	private static final long serialVersionUID = 2486002775559927563L;
	@Resource
	private ILoginLogService loginLogService;

	@RequestMapping(value = "viewPage", method = { RequestMethod.GET })
	public String viewLogPage(HttpServletRequest request) {
		this.wrapMenuTitle(request);
		return "system/log/logList.ftl";
	}

	/**
	 * 分页查询
	 * 
	 * @param request
	 * @return
	 */
	@RequestMapping(value = "getPageData", method = { RequestMethod.POST })
	@ResponseBody
	public Map<String, Object> loadLogByPage(HttpServletRequest request, DataQuery dq, String userName, Date startTime, Date endTime) {

		this.wrapTableQueryParams(request, dq);
		dq.getQueryMap().put("userName", StringUtils.isBlank(userName) ? null : userName);
		dq.getQueryMap().put("startTime", startTime);
		dq.getQueryMap().put("endTime", endTime);

		Page<LoginLogDTO> pageResult = this.loginLogService.searchLoginLogByPage(dq);

		return this.handlePageReult(pageResult);
	}

	/**
	 * 删除日志
	 * 
	 * @return
	 */
	@RequestMapping(value = "/delLoginLog", method = { RequestMethod.POST })
	@ResponseBody
	public AjaxJson deleteLog(Long[] ids) {

		this.loginLogService.deleteLogs(ids);

		return new AjaxJson(this.DEL_SUCCESS_MESSAGE, AjaxJson.success);
	}

}
