package com.zxh.crawlerdisplay.core.common.exception;

public class DataDefendException extends RuntimeException{

	/**
	 * 
	 */
	private static final long serialVersionUID = -2725574027368788136L;

	private static final String MSG = "You have no right to access or operate";
	
	public DataDefendException() {
		super(MSG);
		
	}
	
	public DataDefendException(String message) {
		super(message);
		
	}
	
	

}
