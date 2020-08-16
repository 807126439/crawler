package com.zxh.crawlerdisplay.web.fundation.controller;

import com.zxh.crawlerdisplay.core.common.bean.AjaxJson;
import com.zxh.crawlerdisplay.core.common.bean.DataQuery;
import com.zxh.crawlerdisplay.core.common.bean.Page;
import com.zxh.crawlerdisplay.core.common.controller.BaseController;
import com.zxh.crawlerdisplay.web.fundation.dto.FundationDTO;
import com.zxh.crawlerdisplay.web.fundation.service.IFundationService;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.Map;

@Controller
@Scope("prototype")
@RequestMapping("/fundationController")
public class FundationController extends BaseController {

	private static final long serialVersionUID = 1L;
	
	@Resource
	private IFundationService fundationService;
	

	@RequestMapping(value="/viewPage",method={RequestMethod.GET})
	public String viewPage(HttpServletRequest request){
		this.wrapMenuTitle(request);
		
		return "fundation/fundation/fundationlist.ftl";
	}
	
	
	@RequestMapping(value="/getPageData",method={RequestMethod.POST})
	@ResponseBody
	public Map<String, Object> loadPageData(HttpServletRequest request, DataQuery dq){

		this.wrapTableQueryParams(request, dq);
				
		Page<FundationDTO> pageResult = this.fundationService.searchByPage(dq);
		 
		return this.handlePageReult(pageResult);
	}
	
	
	@RequestMapping(value="/skipAddFundation")
	public String skipAddFundation(HttpServletRequest request){

		
		return "fundation/fundation/addFundation.ftl";
	}
	
	
	@RequestMapping(value="/addFundation",method={RequestMethod.POST})
	@ResponseBody
	public AjaxJson addFundation(FundationDTO dto) throws Exception{
	
		this.fundationService.addFundation(dto);
		
		
		return new AjaxJson(this.ADD_SUCCESS_MESSAGE, AjaxJson.success);
	}


	@RequestMapping("/checkFundation")
	public String checkFundation(HttpServletRequest request,@RequestParam(value="id",required=true)String id){

		FundationDTO result = this.fundationService.getDetailById(id);
		request.setAttribute("model", result);


		return "fundation/fundationRecord/checkFundation.ftl";
	}
	
	
	@RequestMapping("/getDetail")
	public String loadDetail(HttpServletRequest request,@RequestParam(value="id",required=true)String id){
			  		
	    FundationDTO result = this.fundationService.getDetailById(id);
		request.setAttribute("model", result);
		
	
		return "fundation/fundation/editFundation.ftl";
	}
	
	
	@RequestMapping(value="/editFundation",method={RequestMethod.POST})
	@ResponseBody
	public AjaxJson updateFundation(FundationDTO dto){
		
		this.fundationService.updateFundation(dto);
				
		return new AjaxJson(this.EDIT_SUCCESS_MESSAGE, AjaxJson.success);
	}
	
	
	@RequestMapping(value="/deleteFundation",method={RequestMethod.POST})
	@ResponseBody
	public AjaxJson deleteFundation(int[] ids){
		
		this.fundationService.deleteFundations(ids);
		
		
		return new AjaxJson(this.DEL_SUCCESS_MESSAGE, AjaxJson.success);
	}
	
}
