package com.spr.ftr.es.exception;

/**
 * Created by wb_java_zjr on 2017-6-20.
 */
public enum EC {

	EMPTY_CODE("1000"), //
	DATA_ERR_CODE("1002"), //
	CANNOT_TRANS_CODE("4001"), //
	SYS_CODE("5000"), //
	SYS_EMPTY_CODE("5001"), //
	FILE_NO_EXIST_CODE("5002"), //
	FILE_UNZIP_ERR_CODE("5003");//

	private String code;

	EC(String code) {
		code = code;
	}

	String value() {
		return code;
	}
}
