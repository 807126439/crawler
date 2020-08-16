package com.spr.ftr.es.util;

import org.apache.tika.exception.TikaException;
import org.apache.tika.metadata.Metadata;
import org.apache.tika.parser.AutoDetectParser;
import org.apache.tika.parser.ParseContext;
import org.apache.tika.sax.BodyContentHandler;
import org.wltea.analyzer.core.IKSegmenter;
import org.wltea.analyzer.core.Lexeme;
import org.xml.sax.SAXException;

import java.io.*;

public class TikaUtil {

	public static String parse(String filePath) {

		try {
			AutoDetectParser parser = new AutoDetectParser();

			BodyContentHandler handler = new BodyContentHandler();
			Metadata metadata = new Metadata();

			InputStream stream = new FileInputStream(filePath);

			// ParseContext pcontext = new ParseContext();
			parser.parse(stream, handler, metadata);

			for (String name : metadata.names()) {
				System.out.println(name + " : " + metadata.get(name));
			}

			return handler.toString();

		} catch (Exception e) {
			e.printStackTrace();
		}

		return "";

	}

	public static String parseExample(String filePath) throws IOException, SAXException, TikaException {
		AutoDetectParser parser = new AutoDetectParser();

		// PDFParser parser = new PDFParser();

		BodyContentHandler handler = new BodyContentHandler();
		Metadata metadata = new Metadata();
		// metadata.set(Metadata.CONTENT_ENCODING, "gbk");

		InputStream stream = new FileInputStream(filePath);

		ParseContext pcontext = new ParseContext();
		parser.parse(stream, handler, metadata, pcontext);

		for (String name : metadata.names()) {
			System.out.println(name + " : " + metadata.get(name));
		}

		return handler.toString();

	}

	public static void main(String[] args) {

		try {
			// readTxt("d:/开发备注.txt");

			String str = parse("d:/1.jpg");
			System.out.println(str);
			// System.out.println("---------------------------------------------------------------------------------");
			// seqStr(str);

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	public static void readTxt(String filePath) {

		try {
			File file = new File(filePath);
			if (file.isFile() && file.exists()) {
				InputStreamReader isr = new InputStreamReader(new FileInputStream(file), "utf-8");
				BufferedReader br = new BufferedReader(isr);
				String lineTxt = null;
				while ((lineTxt = br.readLine()) != null) {
					System.out.println(lineTxt);
				}
				br.close();
			} else {
				System.out.println("文件不存在!");
			}
		} catch (Exception e) {
			System.out.println("文件读取错误!");
		}

	}

	public static void seqStr(String text) throws IOException {

		// String text = "基于java语言开发的轻量级的中文分词工具包刘大康";
		StringReader sr = new StringReader(text);
		IKSegmenter ik = new IKSegmenter(sr, true);
		Lexeme lex = null;
		while ((lex = ik.next()) != null) {
			System.out.print(lex.getLexemeText() + "|");
		}

	}
}
