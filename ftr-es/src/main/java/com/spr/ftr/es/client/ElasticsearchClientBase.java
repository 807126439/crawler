package com.spr.ftr.es.client;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class ElasticsearchClientBase extends ElasticsearchClient {

	protected Logger logger = LoggerFactory.getLogger(getClass());

	protected void writeInfoLog(String msg) {
		if (this.logger.isInfoEnabled()) {
			this.logger.info(msg);
		}
	}

	protected void writeWarnLog(String msg) {
		if (this.logger.isWarnEnabled()) {
			this.logger.warn(msg);
		}
	}

	protected void writeErroroLog(String msg) {
		if (this.logger.isErrorEnabled()) {
			this.logger.error(msg);
		}
	}

}
