package com.zxh.crawlerdisplay.web.file.dto.zone;

import com.zxh.crawlerdisplay.core.common.dto.BaseDTO;
import com.zxh.crawlerdisplay.web.file.entity.ZonePath;

public class ZonePathDTO extends BaseDTO {

	private String text;

	private Integer priority;

	private String path;

	private String type;

	private String viewPath;

	private String virtualPath;

	private Long warmValue;

	private Short flag;

	private Short status;

	private Boolean isValid = true;// 路径是否有效

	public String getText() {
		return text;
	}

	public void setText(String text) {
		this.text = text == null ? null : text.trim();
	}

	public Integer getPriority() {
		return priority;
	}

	public void setPriority(Integer priority) {
		this.priority = priority;
	}

	public String getPath() {
		return path;
	}

	public void setPath(String path) {
		this.path = path == null ? null : path.trim();
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type == null ? null : type.trim();
	}

	public String getViewPath() {
		return viewPath;
	}

	public void setViewPath(String viewPath) {
		this.viewPath = viewPath == null ? null : viewPath.trim();
	}

	public String getVirtualPath() {
		return virtualPath;
	}

	public void setVirtualPath(String virtualPath) {
		this.virtualPath = virtualPath == null ? null : virtualPath.trim();
	}

	public Long getWarmValue() {
		return warmValue;
	}

	public void setWarmValue(Long warmValue) {
		this.warmValue = warmValue;
	}

	public Boolean getIsValid() {
		return isValid;
	}

	public void setIsValid(Boolean isValid) {
		this.isValid = isValid;
	}

	public Short getFlag() {
		return flag == null ? ZonePath.TEMP_FALG : flag;
	}

	public void setFlag(Short flag) {
		this.flag = flag;
	}

	public Short getStatus() {
		return status;
	}

	public void setStatus(Short status) {
		this.status = status;
	}

	/**
	 * 转换后的文件的预览路径
	 * 
	 * @return
	 */
	public String obtainViewHead() {

		if (this.path.lastIndexOf("/") != -1) {
			return this.viewPath;

		} else {
			return this.viewPath + "/";
		}

	}

}