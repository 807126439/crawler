package com.zxh.crawlerdisplay.web.system.dto.iconConfig;


import com.zxh.crawlerdisplay.core.common.dto.UUIDDTO;

public class IconConfigDTO extends UUIDDTO {

	private Short iconType;

	private String iconTypeName;

	private Long baseFileId;

	private String fileName;

	private String fileViewPath;

	public Short getIconType() {
		return iconType;
	}

	public void setIconType(Short iconType) {
		this.iconType = iconType;
	}

	public String getIconTypeName() {
		return iconTypeName;
	}

	public void setIconTypeName(String iconTypeName) {
		this.iconTypeName = iconTypeName;
	}

	public Long getBaseFileId() {
		return baseFileId;
	}

	public void setBaseFileId(Long baseFileId) {
		this.baseFileId = baseFileId;
	}

	public String getFileName() {
		return fileName;
	}

	public void setFileName(String fileName) {
		this.fileName = fileName;
	}

	public String getFileViewPath() {
		return fileViewPath;
	}

	public void setFileViewPath(String fileViewPath) {
		this.fileViewPath = fileViewPath;
	}

}