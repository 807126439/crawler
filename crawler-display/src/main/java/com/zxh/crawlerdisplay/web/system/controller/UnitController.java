package com.zxh.crawlerdisplay.web.system.controller;

import com.zxh.crawlerdisplay.core.common.bean.AjaxJson;
import com.zxh.crawlerdisplay.core.common.bean.DataQuery;
import com.zxh.crawlerdisplay.core.common.bean.Page;
import com.zxh.crawlerdisplay.core.common.controller.BaseController;
import com.zxh.crawlerdisplay.core.common.dto.ZtreeDTO;
import com.zxh.crawlerdisplay.web.system.dto.unit.UnitDTO;
import com.zxh.crawlerdisplay.web.system.service.IBaseDictService;
import com.zxh.crawlerdisplay.web.system.service.IUnitService;
import org.apache.commons.lang.StringUtils;
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
@RequestMapping("/unitController")
public class UnitController extends BaseController {

	private static final long serialVersionUID = 1L;

	@Resource
	private IUnitService unitService;
	@Resource
	private IBaseDictService baseDictService;

	@RequestMapping(value = "/viewPage", method = { RequestMethod.GET })
	public String viewPage(HttpServletRequest request) {
		this.wrapMenuTitle(request);
		return "system/unit/unitList.ftl";
	}

	@RequestMapping(value = "/getPageData", method = { RequestMethod.POST })
	@ResponseBody
	public Map<String, Object> loadPageData(HttpServletRequest request, DataQuery dq, String unitName, String organizationCode) {

		this.wrapTableQueryParams(request, dq);
		dq.putString("unitName", StringUtils.isNotBlank(unitName) ? "%" + unitName + "%" : null);
		dq.putString("unitType", StringUtils.isNotBlank(organizationCode) ? organizationCode : null);
		Page<UnitDTO> pageResult = this.unitService.searchByPage(dq);

		return this.handlePageReult(pageResult);
	}

	@RequestMapping(value = "/skipQuickAddUnit")
	public String skipQuickAddUnit(HttpServletRequest request) {
		return "system/unit/quickAddUnit.ftl";
	}

	@RequestMapping(value = "/skipAddUnit")
	public String skipAddUnit(HttpServletRequest request) {
		return "system/unit/addUnit.ftl";
	}

	@RequestMapping(value = "/addUnit", method = { RequestMethod.POST })
	@ResponseBody
	public AjaxJson addUnit(UnitDTO dto) throws Exception {

		this.unitService.addUnit(dto);

		return new AjaxJson(this.ADD_SUCCESS_MESSAGE, AjaxJson.success);
	}

	@RequestMapping("/getDetail")
	public String loadDetail(HttpServletRequest request, @RequestParam(value = "id", required = true) String id) {
		UnitDTO result = this.unitService.getDetailById(id);
		request.setAttribute("model", result);
		return "system/unit/editUnit.ftl";
	}

	@RequestMapping(value = "/editUnit", method = { RequestMethod.POST })
	@ResponseBody
	public AjaxJson updateUnit(UnitDTO dto) {

		this.unitService.updateUnit(dto);

		return new AjaxJson(this.EDIT_SUCCESS_MESSAGE, AjaxJson.success);
	}

	@RequestMapping(value = "/deleteUnit", method = { RequestMethod.POST })
	@ResponseBody
	public AjaxJson deleteUnit(String[] ids) {

		this.unitService.deleteUnits(ids);

		return new AjaxJson(this.DEL_SUCCESS_MESSAGE, AjaxJson.success);
	}

	/**
	 * 跳转选择单位页面
	 * 
	 * @param request
	 * @return
	 */
	@RequestMapping(value = "/skipUnitTree")
	public String skipUnitTree(HttpServletRequest request) {

		return "system/unit/selectUnit.ftl";
	}

	/**
	 * 获取单位数据
	 * 
	 * @param request
	 * @return
	 */
	@RequestMapping(value = "/getUnitTreeData")
	@ResponseBody
	public List<ZtreeDTO> getUnitTreeData(HttpServletRequest request) {
		return this.unitService.getUnitTreeData(null);
	}

	/**
	 * 跳转选择单位页面
	 * 
	 * @param request
	 * @return
	 */
	@RequestMapping(value = "/skipUnitTree", method = { RequestMethod.GET })
	public String skipUnitTree(HttpServletRequest request, @RequestParam(value = "type", required = false) String type) {

		request.setAttribute("type", type);
		return "system/unit/selectUnit.ftl";
	}

	/**
	 * 获取单位数据
	 * 
	 * @param request
	 * @return
	 */
	@RequestMapping(value = "/getUnitTreeData", method = { RequestMethod.POST })
	@ResponseBody
	public List<ZtreeDTO> getUnitTreeData(HttpServletRequest request, String type) {
		return this.unitService.getUnitTreeData(type);
	}

}
