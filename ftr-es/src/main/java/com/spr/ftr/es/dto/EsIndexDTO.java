package com.spr.ftr.es.dto;

import com.spr.ftr.es.dto.base.EsBaseDTO;

import java.util.List;


public class EsIndexDTO extends EsBaseDTO {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private FieldObj fieldObj;

	public EsIndexDTO() {
		this.fieldObj = new FieldObj();

	}

	/**
	 * 添加字段
	 * 
	 * @param name
	 * @param value
	 * @return 2018-5-16 上午9:38:56
	 */
	public EsIndexDTO addField(String name, String value) {
		fieldObj.put(name, value);

		return this;
	}

	/**
	 * 添加文件路径
	 * 
	 * @param path
	 * @return 2018-5-16 上午9:40:24
	 */
	public EsIndexDTO addFilePath(String path) {
		fieldObj.addPath(path);

		return this;
	}

	public EsIndexDTO addFilePaths(List<String> paths) {
		fieldObj.addPaths(paths);

		return this;
	}

	public FieldObj getFieldObj() {
		return fieldObj;
	}

	public void setFieldObj(FieldObj fieldObj) {
		this.fieldObj = fieldObj;
	}

}
