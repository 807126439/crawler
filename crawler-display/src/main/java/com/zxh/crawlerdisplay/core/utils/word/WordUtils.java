package com.zxh.crawlerdisplay.core.utils.word;

import java.io.BufferedWriter;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.UnsupportedEncodingException;
import java.io.Writer;
import java.util.HashMap;
import java.util.Map;

import org.apache.poi.hwpf.HWPFDocument;
import org.apache.poi.hwpf.usermodel.Range;

import freemarker.template.Configuration;
import freemarker.template.Template;
import freemarker.template.TemplateException;

public class WordUtils {

	private static Configuration configuration = null;

	static {
		configuration = new Configuration();
		configuration.setDefaultEncoding("UTF-8");
	}

	/**
	 * 创建word
	 * 
	 * @param dataMap
	 *            数据源
	 * @param filePath
	 *            文件路径
	 * @param ftlName
	 *            模板名称
	 */
	public static boolean createWord(Map<String, Object> dataMap, String filePath, String ftlName) {

		configuration.setClassForTemplateLoading(WordUtils.class, "/"); // FTL文件所存在的位置
		Template t = null;
		try {
			t = configuration.getTemplate(ftlName); // 文件名
		} catch (IOException e) {
			e.printStackTrace();
		}
		File outFile = new File(filePath);
		Writer out = null;
		try {
			out = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(outFile), "utf-8")); // 在web环境下需添加编码格式，否则生成word文件无法打开

		} catch (FileNotFoundException | UnsupportedEncodingException e1) {
			e1.printStackTrace();
		}

		try {
			t.process(dataMap, out);

			return true;
		} catch (TemplateException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		} finally {

			if (out != null) {
				try {
					out.close();
				} catch (IOException e) {

					e.printStackTrace();
				}
			}
		}

		return false;
	}

	/**
	 * 向word模板渲染数据
	 * 
	 * @param destFile
	 *            保存word文件地址
	 * @param srcFilePath
	 *            模板文件地址
	 * @param map
	 *            数据源
	 */
	public static File drawDataInDoc(String destFile, String srcFilePath, Map<String, String> map) {
		HWPFDocument document = replaceDoc(srcFilePath, map);
		if (document == null) {
			return null;
		}
		ByteArrayOutputStream ostream = new ByteArrayOutputStream();
		// File file = new File(destFile);
		try {

			// document.write(file);
			document.write(ostream);
			// 输出word文件
			OutputStream outs = new FileOutputStream(destFile);

			outs.write(ostream.toByteArray());
			outs.close();

			System.out.println("finish");

			return new File(destFile);
		} catch (IOException e) {
			e.printStackTrace();
		}

		return null;
	}

	/**
	 * 读取word模板并替换变量
	 * 
	 * @param srcPath
	 * @param map
	 * @return
	 */
	public static HWPFDocument replaceDoc(String srcPath, Map<String, String> map) {
		try {
			// 读取word模板
			FileInputStream fis = new FileInputStream(new File(srcPath));
			HWPFDocument doc = new HWPFDocument(fis);
			// 读取word文本内容
			Range bodyRange = doc.getRange();
			if (map != null) {
				// 替换文本内容
				for (Map.Entry<String, String> entry : map.entrySet()) {
					bodyRange.replaceText("${" + entry.getKey() + "}", entry.getValue());
				}
			}
			return doc;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

	/*
	 * private static void getData(Map<String, Object> dataMap) {
	 * dataMap.put("number", "程峰232"); dataMap.put("chineseName", "程峰232");
	 * dataMap.put("department", "科技部323"); dataMap.put("duty", "组长");
	 * dataMap.put("createTime", "2016-2-15"); dataMap.put("themeTitle",
	 * "关于促进局内信息化建设建议"); dataMap.put("advise", "fghgfhngjghjghjghjghjgh");
	 * dataMap.put("forecast", "2222222222222222222222");
	 * 
	 * }
	 */

	public static void main(String[] args) {
		// Map<String, Object> map = new HashMap<String, Object>();
		// map.put("bh", "bh2017013");
		// map.put("unit", "东莞市霸道建筑有限公司");
		// map.put("project", "景兴海上广场（一期）主体总承包工程");
		//
		// WordRow wd = new WordRow("1", "深圳市建设工程档案专项验收备案申报表（原件）");
		// WordRow wd2 = new WordRow("2", "深圳市建设工程档案专项验收报告（原件）");
		// WordRow wd3 = new WordRow("3", "xxxxxxxxxxxxxxxxxxx文件");
		//
		// List<WordRow> wds = new ArrayList<WordRow>();
		// wds.add(wd);
		// wds.add(wd2);
		// wds.add(wd3);
		//
		// map.put("tableData", wds);
		// map.put("y", "2017");
		// map.put("m", "7");
		// map.put("d", "12");
		// createWord(map, "D://outPut2.doc", "checkBack.ftl");

		Map<String, String> map = new HashMap<String, String>();
		map.put("proName", "康馨养老东院");
		map.put("fileNo", "bh2017013");
		map.put("buildUnit", "南方基金管理有限公司");
		map.put("applySn", "201701345");

		drawDataInDoc("d:/result-temp.doc", "d:/receive-temp.doc", map);

		System.out.println("Over.......");
	}
}
