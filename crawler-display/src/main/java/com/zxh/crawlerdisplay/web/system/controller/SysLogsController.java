package com.zxh.crawlerdisplay.web.system.controller;

import java.util.Date;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

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
import com.zxh.crawlerdisplay.web.system.dto.log.SysLogsDTO;
import com.zxh.crawlerdisplay.web.system.service.ISysLogsService;

@Controller
@Scope("prototype")
@RequestMapping("/sysLogsController")
public class SysLogsController extends BaseController{

	private static final long serialVersionUID = 1L;
	
	@Resource
	private ISysLogsService sysLogsService;
	
	
	
	@RequestMapping(value="/viewPage",method={RequestMethod.GET})
	public String viewPage(HttpServletRequest request){
		this.wrapMenuTitle(request);
		
		return "system/sysLogs/sysLogsList.ftl";
	}
	
	
	@RequestMapping(value="/getPageData",method={RequestMethod.POST})
	@ResponseBody
	public Map<String, Object> loadPageData(HttpServletRequest request,DataQuery dq,Date startTime,Date endTime){

		this.wrapTableQueryParams(request, dq);
			
		dq.putToMap("startTime", startTime).putToMap("endTime", endTime);
		Page<SysLogsDTO> pageResult = this.sysLogsService.searchByPage(dq);
		 
		return this.handlePageReult(pageResult);
	}
	
	

	
	
	@RequestMapping(value="/getDetail", method = { RequestMethod.GET })
	public String loadDetail(HttpServletRequest request,@RequestParam(value="id",required=true)Long id){
			  		
	    SysLogsDTO result = this.sysLogsService.getDetailById(id);
		request.setAttribute("model", result);
		
	
		return "system/sysLogs/editSysLogs.ftl";
	}
	

	
	@RequestMapping(value="/deleteSysLogs",method={RequestMethod.POST})
	@ResponseBody
	public AjaxJson deleteSysLogs(Long[] ids){
		
		this.sysLogsService.deleteSysLogss(ids);
		
		
		return new AjaxJson(this.DEL_SUCCESS_MESSAGE, AjaxJson.success);
	}
	
}
