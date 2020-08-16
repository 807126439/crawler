package com.zxh.crawlerdisplay.core.utils.sys;

import com.zxh.crawlerdisplay.web.system.dto.authority.AuthorityDTO;
import com.zxh.crawlerdisplay.web.system.entity.Authority;
import org.apache.commons.lang.StringUtils;

public class SimpleAuthUtil {

	public static String MANAGE = "manage";
	public static String SKIP_ADD = "skipAdd";
	public static String ADD = "add";
	public static String SKIP_EDIT = "skipEdit";
	public static String EDIT = "edit";
	public static String DELETE = "delete";
	public static String QUERYPAGE = "queryPage";

	public static AuthorityDTO createAuthDTO(String action, String className, String chineseName, String parentId) {
		AuthorityDTO dto = new AuthorityDTO();
		assembleDTOByAction(dto, action, className, chineseName, parentId);
		return dto;
	}

	private static AuthorityDTO assembleDTOByAction(AuthorityDTO dto, String action, String className,
			String chineseName, String parentId) {
		// 小写类名
		String xClassName = className.substring(0, 1).toLowerCase() + className.substring(1);
		String controllerPath = "/" + xClassName + "Controller/";

		if (MANAGE.equals(action)) {

			dto.setAuthCode(xClassName + "Manage");
			dto.setAuthText(chineseName + "管理");
			dto.setResourecesUrl(controllerPath + "viewPage.do");
			dto.setAuthType((short) 1);
			dto.setAuthOrder(1);
			dto.setFlag(Authority.flag_openControl);

		} else if (SKIP_ADD.equals(action)) {

			dto.setAuthCode(SKIP_ADD + className);
			dto.setAuthText("跳转添加" + chineseName);
			dto.setResourecesUrl(controllerPath + SKIP_ADD + className + ".do");
			dto.setAuthType((short) 2);
			dto.setAuthOrder(1);
			dto.setFlag(Authority.flag_openControl);

		} else if (ADD.equals(action)) {

			dto.setAuthCode(ADD + className);
			dto.setAuthText("添加" + chineseName);
			dto.setResourecesUrl(controllerPath + ADD + className + ".do");
			dto.setAuthType((short) 2);
			dto.setAuthOrder(2);
			dto.setFlag(Authority.flag_openControl);

		} else if (SKIP_EDIT.equals(action)) {

			dto.setAuthCode("get" + className + "Detail");
			dto.setAuthText("查询" + chineseName + "详细");
			dto.setResourecesUrl(controllerPath + "getDetail" + ".do");
			dto.setAuthType((short) 2);
			dto.setAuthOrder(3);
			dto.setFlag(Authority.flag_openControl);

		} else if (EDIT.equals(action)) {

			dto.setAuthCode(EDIT + className);
			dto.setAuthText("编辑" + chineseName);
			dto.setResourecesUrl(controllerPath + EDIT + className + ".do");
			dto.setAuthType((short) 2);
			dto.setAuthOrder(4);
			dto.setFlag(Authority.flag_openControl);

		} else if (DELETE.equals(action)) {

			dto.setAuthCode(DELETE + className);
			dto.setAuthText("删除" + chineseName);
			dto.setResourecesUrl(controllerPath + DELETE + className + ".do");
			dto.setAuthType((short) 2);
			dto.setAuthOrder(5);
			dto.setFlag(Authority.flag_openControl);

		} else if (QUERYPAGE.equals(action)) {
			dto.setAuthCode(QUERYPAGE + className);
			dto.setAuthText("分页查询" + chineseName);
			dto.setResourecesUrl(controllerPath + "getPageData.do");
			dto.setAuthType((short) 1);
			dto.setFlag(Authority.flag_normal);
			dto.setAuthOrder(6);
		}
		dto.setParentId(StringUtils.isNotBlank(parentId) ? parentId : null);

		System.out.println("当前组装的权限信息如下:");
		System.out.println("排序：" + dto.getAuthOrder());
		System.out.println("权限码：" + dto.getAuthCode());
		System.out.println("权限名称：" + dto.getAuthText());
		System.out.println("url：" + dto.getResourecesUrl());

		return dto;
	}

	public static void main(String[] args) {
		SimpleAuthUtil.createAuthDTO(MANAGE, "User", "用户", null);
		SimpleAuthUtil.createAuthDTO(SKIP_ADD, "User", "用户", null);
		SimpleAuthUtil.createAuthDTO(ADD, "User", "用户", null);
		SimpleAuthUtil.createAuthDTO(SKIP_EDIT, "User", "用户", null);
		SimpleAuthUtil.createAuthDTO(EDIT, "User", "用户", null);
		SimpleAuthUtil.createAuthDTO(DELETE, "User", "用户", null);
		SimpleAuthUtil.createAuthDTO(QUERYPAGE, "User", "用户", null);
	}

}
