package com.zxh.crawlerdisplay.core.utils.hash;

import org.apache.commons.lang.StringUtils;

import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class Md5PassEncodeUtil {
	private static final char[] HEX_DIGITS = { '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f' };

	private static final String encodingAlgorithm = "MD5";;
	private static final String characterEncoding = "UTF-8";

	public static String encode(String password) {
		if (password == null) {
			return null;
		}
		try {
			MessageDigest messageDigest = MessageDigest.getInstance(encodingAlgorithm);

			if (StringUtils.isNotBlank(characterEncoding))
				messageDigest.update(password.getBytes(characterEncoding));
			else {
				messageDigest.update(password.getBytes());
			}

			byte[] digest = messageDigest.digest();

			return getFormattedText(digest);
		} catch (NoSuchAlgorithmException e) {
			throw new SecurityException(e);
		} catch (UnsupportedEncodingException e) {
			throw new RuntimeException(e);
		}
	}

	private static String getFormattedText(byte[] bytes) {
		StringBuilder buf = new StringBuilder(bytes.length * 2);

		for (int j = 0; j < bytes.length; j++) {
			buf.append(HEX_DIGITS[(bytes[j] >> 4 & 0xF)]);
			buf.append(HEX_DIGITS[(bytes[j] & 0xF)]);
		}
		return buf.toString();
	}

	public static void main(String[] args) {
        //System.out.println(ShaPassEncodeUtil.encodePassWord("admin", encode("wanve123456")));
	}
}
