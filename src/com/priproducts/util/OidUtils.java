package com.priproducts.util;

public class OidUtils {
	public static String oidRandom() {
		String result = "";
		for (int i = 0; i < 15; i++) {
			if(i==0) {
				result += (int)(Math.random()*9)+1;
			}
			result += (int)(Math.random()*10);
		}
		
		
		return result;
	}
	
}
