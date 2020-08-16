package com.spr.ftr.es.dto;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

public class FieldObj implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1;

	private final Map<String, String> fields = new LinkedHashMap<String, String>(); // 字段
	private final List<String> filePaths = new ArrayList<String>(); // 文件路径
	private String fileFieldName = "fileContent";

	public FieldObj put(String name, String value) {

		fields.put(name, value);

		return this;
	}

	public Iterator<Entry<String, String>> iterator() {

		return fields.entrySet().iterator();
	}

	public FieldObj addPath(String path) {

		filePaths.add(path);

		return this;
	}

	public FieldObj addPaths(List<String> paths) {

		filePaths.addAll(paths);

		return this;
	}

	public FieldObj setFileFieldName(String name) {

		this.fileFieldName = name;

		return this;
	}

	public String getFileFieldName() {
		return fileFieldName;
	}

	public Map<String, String> getFields() {
		return fields;
	}

	public List<String> getFilePaths() {
		return filePaths;
	}

}
