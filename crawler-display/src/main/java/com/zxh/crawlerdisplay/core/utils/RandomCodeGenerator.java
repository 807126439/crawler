package com.zxh.crawlerdisplay.core.utils;

import java.util.Random;

/**
 * 随机码生成器
 * @author wb_java_zjr
 *
 */
public class RandomCodeGenerator {
	
	/**
	 * 生成${pos}位的数字验证码
	 * @param pos
	 * @return
	 */
	public static String generateNumberCode(int pos){
		int max = 10;
		StringBuilder code = new StringBuilder();
		Random random = new Random();
		for (int i = 0; i < pos; i++) {
			code.append(random.nextInt(max));
		}
		
		return code.toString();
	}
	

	public static void main(String[] args) {
		System.out.println(generateNumberCode(6));
	}
	
	
}
