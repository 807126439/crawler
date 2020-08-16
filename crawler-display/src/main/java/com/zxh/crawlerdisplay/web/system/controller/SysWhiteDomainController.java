package com.zxh.crawlerdisplay.web.system.controller;

import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.zxh.crawlerdisplay.core.common.bean.AjaxJson;
import com.zxh.crawlerdisplay.core.common.bean.DataQuery;
import com.zxh.crawlerdisplay.core.common.bean.Page;
import com.zxh.crawlerdisplay.core.common.controller.BaseController;
import com.zxh.crawlerdisplay.core.spring.mvc.IAccessCheck;
import com.zxh.crawlerdisplay.web.system.dto.white.SysWhiteDomainDTO;
import com.zxh.crawlerdisplay.web.system.service.ISysWhiteDomainService;

@Controller
@Scope("prototype")
@RequestMapping("/sysWhiteDomainController")
public class SysWhiteDomainController extends BaseController {

	private static final long serialVersionUID = 1L;

	@Resource
	private ISysWhiteDomainService sysWhiteDomainService;
	@Autowired
	private IAccessCheck accessCheck;

	@RequestMapping(value = "/viewPage", method = { RequestMethod.GET })
	public String viewPage(HttpServletRequest request) {
		this.wrapMenuTitle(request);

		return "system/sysWhiteDomain/sysWhiteDomainList.ftl";
	}

	@RequestMapping(value = "/getPageData", method = { RequestMethod.POST })
	@ResponseBody
	public Map<String, Object> loadPageData(HttpServletRequest request, DataQuery dq) {

		this.wrapTableQueryParams(request, dq);

		Page<SysWhiteDomainDTO> pageResult = this.sysWhiteDomainService.searchByPage(dq);

		return this.handlePageReult(pageResult);
	}

	@RequestMapping(value = "/skipAddSysWhiteDomain", method = { RequestMethod.GET })
	public String skipAddSysWhiteDomain(HttpServletRequest request) {

		return "system/sysWhiteDomain/addSysWhiteDomain.ftl";
	}

	@RequestMapping(value = "/addSysWhiteDomain", method = { RequestMethod.POST })
	@ResponseBody
	public AjaxJson addSysWhiteDomain(SysWhiteDomainDTO dto) throws Exception {

		this.sysWhiteDomainService.addSysWhiteDomain(dto);

		return new AjaxJson(this.ADD_SUCCESS_MESSAGE, AjaxJson.success);
	}

	@RequestMapping(value="/getDetail", method = { RequestMethod.GET })
	public String loadDetail(HttpServletRequest request, @RequestParam(value = "id", required = true) String id) {

		SysWhiteDomainDTO result = this.sysWhiteDomainService.getDetailById(id);
		request.setAttribute("model", result);

		return "system/sysWhiteDomain/editSysWhiteDomain.ftl";
	}

	@RequestMapping(value = "/editSysWhiteDomain", method = { RequestMethod.POST })
	@ResponseBody
	public AjaxJson updateSysWhiteDomain(SysWhiteDomainDTO dto) {

		this.sysWhiteDomainService.updateSysWhiteDomain(dto);

		return new AjaxJson(this.EDIT_SUCCESS_MESSAGE, AjaxJson.success);
	}

	@RequestMapping(value = "/deleteSysWhiteDomain", method = { RequestMethod.POST })
	@ResponseBody
	public AjaxJson deleteSysWhiteDomain(String[] ids) {

		this.sysWhiteDomainService.deleteSysWhiteDomains(ids);

		return new AjaxJson(this.DEL_SUCCESS_MESSAGE, AjaxJson.success);
	}

	@RequestMapping(value = "/refreshWhiteDomain", method = { RequestMethod.POST })
	@ResponseBody
	public AjaxJson refreshWhiteDomain(String[] ids) {

		this.accessCheck.refreshWhiteDomain();

		return new AjaxJson(this.OPER_SUCCESS_MESSAGE, AjaxJson.success);
	}

}
