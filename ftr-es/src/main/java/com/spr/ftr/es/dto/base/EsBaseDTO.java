package com.spr.ftr.es.dto.base;

import java.io.Serializable;

public class EsBaseDTO implements Serializable {

	/**
	 * 
	 */

	private String indices; // 索引名（库）
	private String indexType; // 索引类型（表）
	private String id;

	public String getIndices() {
		return indices;
	}

	public void setIndices(String indices) {
		this.indices = indices;
	}

	public String getIndexType() {
		return indexType;
	}

	public void setIndexType(String indexType) {
		this.indexType = indexType;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

}
