package com.spr.ftr.es.exception;

public class RespResult {

	public static final String SUCCESS = "1";
	public static final String FAIL = "0";

	private String errCode;
	private String msg;
	private String status;
	private Object data;

	public RespResult() {
	}

	public RespResult(String errCode, String msg, String status) {
		super();
		this.errCode = errCode;
		this.msg = msg;
		this.status = status;
	}

	public String getErrCode() {
		return errCode;
	}

	public RespResult setErrCode(String errCode) {
		this.errCode = errCode;
		return this;
	}

	public String getMsg() {
		return msg;
	}

	public RespResult setMsg(String msg) {
		this.msg = msg;
		return this;
	}

	public String getStatus() {
		return status;
	}

	public RespResult setStatus(String status) {
		this.status = status;
		return this;
	}

	public Object getData() {
		return data;
	}

	public RespResult setData(Object data) {
		this.data = data;
		return this;
	}

}
