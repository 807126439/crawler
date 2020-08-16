package com.zxh.crawlerdisplay.core.sms;

import net.sf.json.JSONObject;

public class GeneralizeResult {

	private String result;
	private JSONObject params;
	private String templateCode;

	public GeneralizeResult() {
	}

	public GeneralizeResult(String result, JSONObject params) {
		super();
		this.result = result;
		this.params = params;
	}

	public String getResult() {
		return result;
	}

	public void setResult(String result) {
		this.result = result;
	}

	public JSONObject getParams() {
		return params;
	}

	public void setParams(JSONObject params) {
		this.params = params;
	}

	public String getTemplateCode() {
		return templateCode;
	}

	public void setTemplateCode(String templateCode) {
		this.templateCode = templateCode;
	}

}
