package com.spr.ftr.es.config;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;

@Component
public class IndexConfig {

	@Value("${host.name}")
	private String hostName;
	@Value("${host.port}")
	private Integer hostPort;
	@Value("${index.name}")
	private String indexName;
	@Value("${index.type.name}")
	private String typeName;

	public String getHostName() {
		return hostName;
	}

	public void setHostName(String hostName) {
		this.hostName = hostName;
	}

	public String getIndexName() {
		return indexName;
	}

	public Integer getHostPort() {
		return hostPort;
	}

	public void setHostPort(Integer hostPort) {
		this.hostPort = hostPort;
	}

	public void setIndexName(String indexName) {
		this.indexName = indexName;
	}

	public String getTypeName() {
		return typeName;
	}

	public void setTypeName(String typeName) {
		this.typeName = typeName;
	}

}
