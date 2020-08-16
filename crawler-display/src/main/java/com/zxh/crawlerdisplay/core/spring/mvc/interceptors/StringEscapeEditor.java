package com.zxh.crawlerdisplay.core.spring.mvc.interceptors;

import java.beans.PropertyEditorSupport;

import org.apache.commons.lang.StringEscapeUtils;
import org.springframework.util.StringUtils;

public class StringEscapeEditor extends PropertyEditorSupport {

	private boolean escapeHTML;

	private boolean escapeJavaScript;

	private boolean escapeSQL;

	public StringEscapeEditor() {
		super();
	}

	public StringEscapeEditor(boolean escapeHTML, boolean escapeJavaScript, boolean escapeSQL) {

		super();

		this.escapeHTML = escapeHTML;

		this.escapeJavaScript = escapeJavaScript;

		this.escapeSQL = escapeSQL;

	}

	@Override
	public void setAsText(String text) {

		if (StringUtils.hasText(text)) {

			String value = text;
			System.out.println("Escape:" + value);
			if (escapeHTML) {
				value = StringEscapeUtils.escapeHtml(value);
			}

			if (escapeJavaScript) {
				value = StringEscapeUtils.escapeJavaScript(value);
			}

			if (escapeSQL) {
				value = StringEscapeUtils.escapeSql(value);
			}
			setValue(value);

		} else {

			setValue(null);
		}

	}

	@Override
	public String getAsText() {
		Object value = getValue();
		return value != null ? value.toString() : "";
	}
}
