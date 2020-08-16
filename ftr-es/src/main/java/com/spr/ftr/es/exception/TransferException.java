package com.spr.ftr.es.exception;

/**
 * @author wb_java_zjr
 * @create 2017-06-20 14:36
 */
public class TransferException extends RuntimeException {

	// 错误码
	private final EC errCode;

	public TransferException(EC errCode, String message) {
		super(message);
		this.errCode = errCode;
	}

	public EC getErrCode() {
		return errCode;
	}

}
