package com.zxh.crawlerdisplay.web.system.entity;

import com.zxh.crawlerdisplay.core.annotations.DbField;
import com.zxh.crawlerdisplay.core.common.entity.UUIDEntity;

import java.io.Serializable;


public class IconConfig extends UUIDEntity implements Serializable {

	private static final long serialVersionUID = 1611498448599820008L;

	public static final short ICON_TYPE_BIG_MENU = 1; // 大菜单图标
	public static final short ICON_TYPE_SMALL_MENU_ = 2; // 小菜单图标
	public static final short ICON_TYPE_NAVIGATION_BAR = 3; // 导航栏图标

	private Short iconType;

	private Long baseFileId;

	private String fileName;

	private String fileViewPath;

	private String createBy;

	private String updateBy;

	@DbField(name = "ICON_TYPE")
	public Short getIconType() {
		return iconType;
	}

	public void setIconType(Short iconType) {
		this.iconType = iconType;
	}

	@DbField(name = "BASE_FILE_ID")
	public Long getBaseFileId() {
		return baseFileId;
	}

	public void setBaseFileId(Long baseFileId) {
		this.baseFileId = baseFileId;
	}

	@DbField(name = "FILE_NAME")
	public String getFileName() {
		return fileName;
	}

	public void setFileName(String fileName) {
		this.fileName = fileName;
	}

	@DbField(name = "FILE_VIEW_PATH")
	public String getFileViewPath() {
		return fileViewPath;
	}

	public void setFileViewPath(String fileViewPath) {
		this.fileViewPath = fileViewPath;
	}

	@DbField(name = "CREATE_BY")
	public String getCreateBy() {
		return createBy;
	}

	public void setCreateBy(String createBy) {
		this.createBy = createBy;
	}

	@DbField(name = "UPDATE_BY")
	public String getUpdateBy() {
		return updateBy;
	}

	public void setUpdateBy(String updateBy) {
		this.updateBy = updateBy;
	}

}
