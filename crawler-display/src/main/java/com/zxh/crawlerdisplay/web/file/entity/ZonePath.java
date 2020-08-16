package com.zxh.crawlerdisplay.web.file.entity;

import com.zxh.crawlerdisplay.core.annotations.DbField;
import com.zxh.crawlerdisplay.core.common.entity.BaseEntity;
import com.zxh.crawlerdisplay.core.utils.file.FileOperation;
import org.apache.commons.lang.StringUtils;

import java.io.Serializable;

public class ZonePath extends BaseEntity implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 554938476015016012L;

	public static final String COMMON_FILE = "commomFile";
	public static final String PORTALS_FILE = "portals";
	public static final String TEMP_FILE = "tempFile";

	public static final short RESOURCE_FALG = 1;
	public static final short TEMP_FALG = 0;

	private String text;

	private Integer priority;

	private String path;

	private String type;

	private String viewPath;

	private String virtualPath;

	private Long warmValue;

	private String zoneName;

	private Short flag;

	private Short status;

	public ZonePath() {
	}

	public ZonePath(Long id) {
		this.id = id;
	}

	public ZonePath(String text, Integer priority, String path, String type, String viewPath, String virtualPath, Long warmValue, String zoneName, Short flag) {
		super();
		this.text = text;
		this.priority = priority;
		this.path = path;
		this.type = type;
		this.viewPath = StringUtils.isBlank(viewPath) ? null : viewPath;
		this.virtualPath = StringUtils.isBlank(virtualPath) ? null : virtualPath;
		this.warmValue = warmValue;
		this.zoneName = zoneName;
		this.flag = flag;
	}

	@DbField(name = "text")
	public String getText() {
		return text;
	}

	public void setText(String text) {
		this.text = text == null ? null : text.trim();
	}

	@DbField(name = "priority")
	public Integer getPriority() {
		return priority;
	}

	public void setPriority(Integer priority) {
		this.priority = priority;
	}

	@DbField(name = "path")
	public String getPath() {
		return path;
	}

	public void setPath(String path) {
		this.path = path == null ? null : path.trim();
	}

	@DbField(name = "type")
	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type == null ? null : type.trim();
	}

	@DbField(name = "view_path")
	public String getViewPath() {
		return viewPath;
	}

	public void setViewPath(String viewPath) {
		this.viewPath = viewPath == null ? null : viewPath.trim();
	}

	@DbField(name = "virtual_path")
	public String getVirtualPath() {
		return virtualPath;
	}

	public void setVirtualPath(String virtualPath) {
		this.virtualPath = virtualPath == null ? null : virtualPath.trim();
	}

	@DbField(name = "warm_value")
	public Long getWarmValue() {
		return warmValue;
	}

	public void setWarmValue(Long warmValue) {
		this.warmValue = warmValue;
	}

	@DbField(name = "zone_name")
	public String getZoneName() {
		return zoneName;
	}

	public void setZoneName(String zoneName) {
		this.zoneName = zoneName == null ? null : zoneName.trim();
	}

	@DbField(name = "flag")
	public Short getFlag() {
		return flag;
	}

	public void setFlag(Short flag) {
		this.flag = flag;
	}

	@DbField(name = "status")
	public Short getStatus() {
		return status;
	}

	public void setStatus(Short status) {
		this.status = status;
	}

	@Override
	public String toString() {
		StringBuilder sb = new StringBuilder();
		sb.append(getClass().getSimpleName());
		sb.append(" [");
		sb.append("Hash = ").append(hashCode());
		sb.append(",Super = ").append(super.toString());
		sb.append(", serialVersionUID=").append(serialVersionUID);
		sb.append(", text=").append(text);
		sb.append(", priority=").append(priority);
		sb.append(", path=").append(path);
		sb.append(", type=").append(type);
		sb.append(", virtualPath=").append(virtualPath);
		sb.append(", viewPath=").append(viewPath);
		sb.append(", warmValue=").append(warmValue);
		sb.append(", zoneName=").append(zoneName);
		sb.append(", flag=").append(flag);
		sb.append(", status=").append(status);
		sb.append("]");
		return sb.toString();
	}

	/**
	 * 下载路径
	 * 
	 * @return
	 */
	public String obtainDownLoadPath() {

		return FileOperation.filterPath(this.path);

	}

	/**
	 * 获取转换后的文件路径
	 * 
	 * @return
	 */
	public String obtainVirtualPath() {

		return FileOperation.filterPath(this.virtualPath);

	}

	/**
	 * 转换后的文件的预览路径
	 * 
	 * @return
	 */
	public String obtainViewHead() {

		return FileOperation.addBackslashInEnd(this.viewPath);
	}

}