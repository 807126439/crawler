package com.zxh.crawlerdisplay.web.system.controller;

import com.zxh.crawlerdisplay.core.common.bean.AjaxJson;
import com.zxh.crawlerdisplay.core.common.bean.DataQuery;
import com.zxh.crawlerdisplay.core.common.bean.Page;
import com.zxh.crawlerdisplay.core.common.controller.BaseController;
import com.zxh.crawlerdisplay.web.system.dto.department.DepartmentDTO;
import com.zxh.crawlerdisplay.web.system.dto.unit.UnitDTO;
import com.zxh.crawlerdisplay.web.system.service.IDepartmentService;
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
@RequestMapping("/departmentController")
public class DepartmentController extends BaseController {

	private static final long serialVersionUID = 1L;

	@Resource
	private IUnitService unitService;
	@Resource
	private IDepartmentService departmentService;

	@RequestMapping(value = "/viewPage", method = { RequestMethod.GET })
	public String viewPage(HttpServletRequest request) {
		this.wrapMenuTitle(request);
		this.getUnitList(request);
		return "system/department/departmentList.ftl";
	}

	@RequestMapping(value = "/getPageData", method = { RequestMethod.POST })
	@ResponseBody
	public Map<String, Object> loadPageData(HttpServletRequest request, DataQuery dq, String unitId, String departName, String departNo) {

		this.wrapTableQueryParams(request, dq);
		dq.putToMap("unitId", StringUtils.isNotBlank(unitId) ? unitId : null);
		dq.putToMap("departNo", StringUtils.isNotBlank(departNo) ? departNo : null);
		dq.putToMap("departName", StringUtils.isNotBlank(departName) ? "%" + departName + "%" : null);
		Page<DepartmentDTO> pageResult = this.departmentService.searchByPage(dq);
		return this.handlePageReult(pageResult);
	}

	@RequestMapping(value = "/skipAddDepartment")
	public String skipAddDepartment(HttpServletRequest request) {

		return "system/department/addDepartment.ftl";
	}

	@RequestMapping(value = "/addDepartment", method = { RequestMethod.POST })
	@ResponseBody
	public AjaxJson addDepartment(DepartmentDTO dto) throws Exception {

		this.departmentService.addDepartment(dto);

		return new AjaxJson(this.ADD_SUCCESS_MESSAGE, AjaxJson.success);
	}

	@RequestMapping("/getDetail")
	public String loadDetail(HttpServletRequest request, @RequestParam(value = "id", required = true) String id) {

		DepartmentDTO result = this.departmentService.getDetailById(id);
		request.setAttribute("model", result);

		return "system/department/editDepartment.ftl";
	}

	@RequestMapping(value = "/editDepartment", method = { RequestMethod.POST })
	@ResponseBody
	public AjaxJson updateDepartment(DepartmentDTO dto) {

		this.departmentService.updateDepartment(dto);

		return new AjaxJson(this.EDIT_SUCCESS_MESSAGE, AjaxJson.success);
	}

	@RequestMapping(value = "/deleteDepartment", method = { RequestMethod.POST })
	@ResponseBody
	public AjaxJson deleteDepartment(String[] ids) {

		this.departmentService.deleteDepartments(ids);

		return new AjaxJson(this.DEL_SUCCESS_MESSAGE, AjaxJson.success);
	}

	private void getUnitList(HttpServletRequest request) {
		DataQuery dq = new DataQuery();
		List<UnitDTO> unitList = this.unitService.selectListByCondition(dq);
		request.setAttribute("unitList", unitList);
	}
}
