package com.zxh.crawlerdisplay.web.fundation.controller;

import com.zxh.crawlerdisplay.core.common.bean.AjaxJson;
import com.zxh.crawlerdisplay.core.common.bean.DataQuery;
import com.zxh.crawlerdisplay.core.common.bean.Page;
import com.zxh.crawlerdisplay.core.common.controller.BaseController;
import com.zxh.crawlerdisplay.web.fundation.dto.FundationRecordDTO;
import com.zxh.crawlerdisplay.web.fundation.service.IFundationRecordService;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.List;
import java.util.Map;

@Controller
@Scope("prototype")
@RequestMapping("/fundationRecordController")
public class FundationRecordController extends BaseController {

	private static final long serialVersionUID = 1L;
	
	@Resource
	private IFundationRecordService fundationRecordService;
	
	
	
	@RequestMapping(value="/viewPage",method={RequestMethod.GET})
	public String viewPage(HttpServletRequest request){
		this.wrapMenuTitle(request);
		
		return "law/fundationRecord/fundationRecordList.jsp";
	}

	/**
	 * 查询记录
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value="/getDate",method={RequestMethod.POST})
	@ResponseBody
	public AjaxJson addFundationRecord(@RequestParam(required = true) int code) throws Exception{

		List<FundationRecordDTO> resultList =  this.fundationRecordService.searchByCode(code);

		return new AjaxJson(this.OPER_SUCCESS_MESSAGE, AjaxJson.success,resultList);
	}

	
	
	@RequestMapping(value="/getPageData",method={RequestMethod.POST})
	@ResponseBody
	public Map<String, Object> loadPageData(HttpServletRequest request, DataQuery dq){

		this.wrapTableQueryParams(request, dq);
				
		Page<FundationRecordDTO> pageResult = this.fundationRecordService.searchByPage(dq);
		 
		return this.handlePageReult(pageResult);
	}
	
	
	@RequestMapping(value="/skipAddFundationRecord")
	public String skipAddFundationRecord(HttpServletRequest request){
		
		
		return "law/fundationRecord/addFundationRecord.jsp";
	}
	
	
	@RequestMapping(value="/addFundationRecord",method={RequestMethod.POST})
	@ResponseBody
	public AjaxJson addFundationRecord(FundationRecordDTO dto) throws Exception{
	
		this.fundationRecordService.addFundationRecord(dto);
		
		
		return new AjaxJson(this.ADD_SUCCESS_MESSAGE, AjaxJson.success);
	}
	
	
	@RequestMapping("/getDetail")
	public String loadDetail(HttpServletRequest request,@RequestParam(value="id",required=true)String id){
			  		
	    FundationRecordDTO result = this.fundationRecordService.getDetailById(id);
		request.setAttribute("model", result);
		
	
		return "law/fundationRecord/editFundationRecord.jsp";
	}
	
	
	@RequestMapping(value="/editFundationRecord",method={RequestMethod.POST})
	@ResponseBody
	public AjaxJson updateFundationRecord(FundationRecordDTO dto){
		
		this.fundationRecordService.updateFundationRecord(dto);
				
		return new AjaxJson(this.EDIT_SUCCESS_MESSAGE, AjaxJson.success);
	}
	
	
	@RequestMapping(value="/deleteFundationRecord",method={RequestMethod.POST})
	@ResponseBody
	public AjaxJson deleteFundationRecord(int[] ids){
		
		this.fundationRecordService.deleteFundationRecords(ids);
		
		
		return new AjaxJson(this.DEL_SUCCESS_MESSAGE, AjaxJson.success);
	}
	
}
