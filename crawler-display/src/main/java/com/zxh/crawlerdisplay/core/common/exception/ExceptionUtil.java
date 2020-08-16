package com.zxh.crawlerdisplay.core.common.exception;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;

import com.zxh.crawlerdisplay.core.common.bean.AjaxJson;
import com.zxh.crawlerdisplay.core.utils.json.JSONHelper;

public class ExceptionUtil {

	public static void outPutAjaxJson(AjaxJson json, HttpServletResponse response) {

		response.setCharacterEncoding("utf-8");
		response.setContentType("application/json; charset=utf-8");
		response.setHeader("Pragma", "no-cache");
		response.setDateHeader("Expires", 1L);
		response.setHeader("Cache-Control", "no-cache");

		PrintWriter pw;
		try {
			pw = response.getWriter();
			pw.write(JSONHelper.bean2json(json));
			pw.flush();
			pw.close();

		} catch (IOException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}

	}
}
