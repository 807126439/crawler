package com.zxh.crawlerdisplay.web.system.controller;

import com.zxh.crawlerdisplay.core.common.bean.AjaxJson;
import com.zxh.crawlerdisplay.core.common.bean.DataQuery;
import com.zxh.crawlerdisplay.core.common.bean.Page;
import com.zxh.crawlerdisplay.core.common.controller.BaseController;
import com.zxh.crawlerdisplay.web.file.dto.zone.ZonePathDTO;
import com.zxh.crawlerdisplay.web.file.entity.ZonePath;
import com.zxh.crawlerdisplay.web.file.service.IZonePathService;
import com.zxh.crawlerdisplay.web.system.dto.baseDict.BaseDictDTO;
import com.zxh.crawlerdisplay.web.system.entity.BaseDict;
import com.zxh.crawlerdisplay.web.system.service.IBaseDictService;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@Scope("prototype")
@RequestMapping("/zonePathController")
public class ZonePathController extends BaseController{

	/**
	 * 
	 */
	private static final long serialVersionUID = 6511258451869072671L;

	@Resource
	private IZonePathService zonePathService;
	@Resource
	private IBaseDictService baseDictService;
	
	
	
	@RequestMapping(value="viewPage",method={RequestMethod.GET})
	public String viewZonePathPage(HttpServletRequest request){
		this.wrapMenuTitle(request);
		
		
		return "system/zone/zonePathList.ftl";
	}
	
	
	  
	/**
	 * 分页查询
	 * @param request
	 * @return
	 */
	@RequestMapping(value="getPageData",method={RequestMethod.POST})
	@ResponseBody
	public Map<String, Object> loadZonePathByPage(HttpServletRequest request,DataQuery dq){

		this.wrapTableQueryParams(request, dq);
		
		
		Page<ZonePathDTO> pageResult = this.zonePathService.searchZonePathByPage(dq);
		 
		return this.handlePageReult(pageResult);
	}
	
	
	/**
	 * 跳转到添加路径
	 * @param request
	 * @return
	 */
	@RequestMapping(value="skipAddZonePath", method = { RequestMethod.GET })
	public String skipAddZonePath(HttpServletRequest request){
		
		DataQuery dq = new DataQuery(new HashMap<String, Object>());
		dq.getQueryMap().put("dictType", BaseDict.FILE_TYPE);   
	    List<BaseDictDTO> typeDicts = this.baseDictService.searchListByCondition(dq);	
	    request.setAttribute("typeDict", typeDicts);
		
		return "system/zone/addZonePath.ftl";
	}
	
	
	
	/**
	 * 添加路径
	 * @param dto
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value="/addZonePath",method={RequestMethod.POST})
	@ResponseBody
	public AjaxJson addZonePath(ZonePathDTO dto) throws Exception{
	
		this.zonePathService.addZonePath(dto);
		
		
		return new AjaxJson(this.ADD_SUCCESS_MESSAGE, AjaxJson.success);
	}
	
	
	/**
	 * 查询单个路径
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value="/getDetail", method = { RequestMethod.GET })
	public ModelAndView loadZonePathDetail(@RequestParam(value="zid",required=true)Long zid){
			  
		
		ZonePath result = this.zonePathService.getZonePathById(zid);
		DataQuery dq = new DataQuery(new HashMap<String, Object>());
		dq.getQueryMap().put("dictType", BaseDict.FILE_TYPE);   
	    List<BaseDictDTO> typeDicts = this.baseDictService.searchListByCondition(dq);	
		return new ModelAndView("system/zone/editZonePath.ftl").addObject("zonePathItem", result).addObject("typeDict", typeDicts);
						
	
	}
	
	
	/**
	 * 修改路径信息
	 * @param dto
	 * @return
	 */
	@RequestMapping(value="/editZonePath",method={RequestMethod.POST})
	@ResponseBody
	public AjaxJson updateZonePath(ZonePathDTO dto){
		
		this.zonePathService.updateZonePath(dto);
				
		return new AjaxJson(this.EDIT_SUCCESS_MESSAGE, AjaxJson.success);
	}
	
	
	/**
	 * 删除路径
	 * @param zids
	 * @return
	 */
	@RequestMapping(value="/delZonePath",method={RequestMethod.POST})
	@ResponseBody
	public AjaxJson deleteZonePath(Long[] zids){
		
		this.zonePathService.deleteZonePath(zids);
		
		
		return new AjaxJson(this.DEL_SUCCESS_MESSAGE, AjaxJson.success);
	}
	
	
	
	/**
	 * 创建物理路径
	 * @param zids
	 * @return
	 */
	@RequestMapping(value="/createFileDirectory",method={RequestMethod.POST})
	@ResponseBody
	public AjaxJson createDirectory(Long[] zids){
		
		this.zonePathService.createDirectory(zids);
		
		
		return new AjaxJson(this.OPER_SUCCESS_MESSAGE, AjaxJson.success);
	}
	
	
	
}
