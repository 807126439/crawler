package com.zxh.crawlerdisplay.web.system.controller;

import com.zxh.crawlerdisplay.core.common.bean.AjaxJson;
import com.zxh.crawlerdisplay.core.common.bean.DataQuery;
import com.zxh.crawlerdisplay.core.common.bean.Page;
import com.zxh.crawlerdisplay.core.common.controller.BaseController;
import com.zxh.crawlerdisplay.web.system.constant.BaseDictConsts;
import com.zxh.crawlerdisplay.web.system.dto.iconConfig.IconConfigDTO;
import com.zxh.crawlerdisplay.web.system.service.IBaseDictService;
import com.zxh.crawlerdisplay.web.system.service.IIconConfigService;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.Map;


@Controller
@Scope("prototype")
@RequestMapping("/iconConfigController")
public class IconConfigController extends BaseController {

	private static final long serialVersionUID = 1L;

	@Resource
	private IIconConfigService iconConfigService;
	@Resource
	private IBaseDictService baseDictService;

	@RequestMapping(value = "/viewPage", method = { RequestMethod.GET })
	public String viewPage(HttpServletRequest request) {
		this.wrapMenuTitle(request);
		this.getIconTypeList(request);
		return "system/iconConfig/iconConfigList.ftl";
	}

	@RequestMapping(value = "/getPageData", method = { RequestMethod.POST })
	@ResponseBody
	public Map<String, Object> loadPageData(HttpServletRequest request, DataQuery dq) {

		this.wrapTableQueryParams(request, dq);
		Page<IconConfigDTO> pageResult = this.iconConfigService.searchByPage(dq);
		return this.handlePageReult(pageResult);
	}

	@RequestMapping(value = "/skipAddIconConfig")
	public String skipAddIconConfig(HttpServletRequest request) {
		this.getIconTypeList(request);
		return "system/iconConfig/addIconConfig.ftl";
	}

	@RequestMapping(value = "/addIconConfig", method = { RequestMethod.POST })
	@ResponseBody
	public AjaxJson addIconConfig(Short iconType, @RequestParam(value = "file") MultipartFile file) throws Exception {

		this.iconConfigService.addIconConfig(iconType, file);
		return new AjaxJson(this.ADD_SUCCESS_MESSAGE, AjaxJson.success);
	}

	@RequestMapping(value = "/deleteIconConfig", method = { RequestMethod.POST })
	@ResponseBody
	public AjaxJson deleteIconConfig(String[] ids) {
		this.iconConfigService.deleteIconConfigs(ids);
		return new AjaxJson(this.DEL_SUCCESS_MESSAGE, AjaxJson.success);
	}

	@RequestMapping(value = "/skipSelectIcon", method = { RequestMethod.GET })
	public String skipSeletIcons(HttpServletRequest request, String iconType, String selectedIconPath) {
		request.setAttribute("iconMap", this.iconConfigService.getIconList());
		request.setAttribute("iconType", iconType);
		request.setAttribute("selectedIconPath", selectedIconPath);
		return "system/iconConfig/selectIcon.ftl";
	}

	private void getIconTypeList(HttpServletRequest request) {
		DataQuery dq = new DataQuery();
		dq.putToMap("dictType", BaseDictConsts.ICON_TYPE);
		request.setAttribute("iconTypeList", this.baseDictService.searchListByCondition(dq));
	}
}
