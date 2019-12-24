package com.kh.planA.common;

import java.util.UUID;

public class CommonUtils {
	public static String getRandomString() {
		// UUID : 32비트의 랜덤 문자를 생성해주는 클래스
		return UUID.randomUUID().toString().replaceAll("-", "");
	}
}
