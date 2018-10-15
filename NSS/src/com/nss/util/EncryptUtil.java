package com.nss.util;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Random;
import org.springframework.util.StringUtils;

public class EncryptUtil {

	private static String encrypt(String str) {

		if (StringUtils.isEmpty(str)) {
			return null;
		}
		byte[] bytes = str.getBytes();
		MessageDigest messageDigest;
		StringBuffer result = new StringBuffer();
		try {
			messageDigest = MessageDigest.getInstance("MD5");
			messageDigest.update(bytes);
			bytes = messageDigest.digest();
			for (int i = 0; i < bytes.length; i++) {
				result.append(Integer.toHexString((0x000000ff & bytes[i]) | 0xffffff00).substring(6).toUpperCase());
			}
		} catch (NoSuchAlgorithmException e) {
			e.printStackTrace();
		}
		return result.toString();
	}

	public static String encryptPasswordBySalt(String password, String salt) {
		if (StringUtils.isEmpty(password) || StringUtils.isEmpty(salt)) {
			return null;
		}
		return encrypt(encrypt(password) + salt);
	}

	public static String generateSaltValue() {

		MessageDigest messageDigest;
		StringBuffer result = new StringBuffer();
		try {
			Random random = new Random();
			byte[] tmpValue = new byte[32];
			random.nextBytes(tmpValue);
			messageDigest = MessageDigest.getInstance("MD5");
			messageDigest.update(tmpValue);
			tmpValue = messageDigest.digest();
			for (int i = 0; i < tmpValue.length; i++) {
				result.append(Integer.toHexString((0x000000ff & tmpValue[i]) | 0xffffff00).substring(6).toUpperCase());
			}
		} catch (NoSuchAlgorithmException e) {
			e.printStackTrace();
		}
		return result.toString();
	}

}
