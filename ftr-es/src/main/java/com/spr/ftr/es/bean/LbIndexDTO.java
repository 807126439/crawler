package com.spr.ftr.es.bean;

import java.util.List;

public class LbIndexDTO {

	private String entityId; // 实体id

	private String category; // 类别

	private String content; // 信息内容

	private List<String> filePaths; // 文件路径集合

	public String getEntityId() {
		return entityId;
	}

	public void setEntityId(String entityId) {
		this.entityId = entityId;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public List<String> getFilePaths() {
		return filePaths;
	}

	public void setFilePaths(List<String> filePaths) {
		this.filePaths = filePaths;
	}

}
