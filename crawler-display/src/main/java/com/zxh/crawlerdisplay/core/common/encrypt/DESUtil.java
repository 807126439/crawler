package com.zxh.crawlerdisplay.core.common.encrypt;

import java.security.SecureRandom;

import javax.crypto.Cipher;
import javax.crypto.SecretKey;
import javax.crypto.SecretKeyFactory;
import javax.crypto.spec.DESKeySpec;

/*des加密工具*/
public class DESUtil {

	/**
	 * 加密
	 * 
	 * @param data
	 *            加密数据
	 * @param key
	 *            密钥
	 * @return
	 */
	public static byte[] encryptDES(byte[] data, String key) {
		try {
			SecureRandom random = new SecureRandom();
			DESKeySpec desKey = new DESKeySpec(key.getBytes());
			SecretKeyFactory keyFactory = SecretKeyFactory.getInstance("DES");
			SecretKey securekey = keyFactory.generateSecret(desKey);
			Cipher cipher = Cipher.getInstance("DES");
			cipher.init(Cipher.ENCRYPT_MODE, securekey, random);
			return cipher.doFinal(data);
		} catch (Throwable e) {
			e.printStackTrace();
		}
		return null;
	}

	/**
	 * 解密
	 * 
	 * @param data
	 *            解密数据
	 * @param key
	 *            密钥
	 * @return
	 * @throws Exception
	 */
	public static byte[] decryptDES(byte[] data, String key) throws Exception {
		SecureRandom random = new SecureRandom();
		DESKeySpec desKey = new DESKeySpec(key.getBytes());
		SecretKeyFactory keyFactory = SecretKeyFactory.getInstance("DES");
		SecretKey securekey = keyFactory.generateSecret(desKey);
		Cipher cipher = Cipher.getInstance("DES");
		cipher.init(Cipher.DECRYPT_MODE, securekey, random);
		return cipher.doFinal(data);
	}

	public static void main(String[] args) throws Exception {

		String key = "wanve123";

		byte[] orginal = encryptDES("441900199110060888".getBytes(), key);
		String orginalStr = new String(orginal);
		// System.out.println(orginalStr);

		String bstr = new String(Base64Util.encryptBASE64(orginal));
		System.out.println(bstr);

		System.out.println(new String(decryptDES(Base64Util.decryptBASE64(bstr), key)));

		/*
		 * System.out.println(new String(encryptDES("12345678".getBytes(),
		 * "ABCDEFGH"))); System.out.println(new
		 * String(Base64Util.encryptBASE64(encryptDES("12345678".getBytes(),
		 * "ABCDEFGH"))));
		 * 
		 * 
		 * System.out.println(new String
		 * (Base64Util.decryptBASE64("GbcQtQ4AwosFXzvIO5347g==")));
		 * System.out.println(new String
		 * (decryptDES(Base64Util.decryptBASE64("GbcQtQ4AwosFXzvIO5347g=="
		 * ),"ABCDEFGH")));
		 */

	}

}
