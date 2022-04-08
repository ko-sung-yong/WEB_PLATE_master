package net.webplate.food;


import java.util.Random;

import pwdconv.PwdChange;

public class TESt {

	public static void main(String[] args) {
		
		String pw="1234";
		String pwd=PwdChange.getPassWordToXEMD5String(pw);
		
		System.out.println(pwd);
		
		// 자바 1.8이용한 숫자 + 문자 랜덤생성
		int leftLimit=48; //0부터
		int rightLimit=122; // 문자 z
		int targetStringLength=10;    		
		Random r=new Random();
		
		
		String ran_pwd=r.ints(leftLimit,rightLimit+1) // 시작과 끝범위
				.filter(i -> (i <= 57 || i >= 65) && (i <= 90 || i >= 97)) // 숫자 영문만 받기위해 필터링(모르겠으면 ASCII코드 참고)
				.limit(targetStringLength) // 최종길이
				.collect(StringBuilder::new, StringBuilder::appendCodePoint, StringBuilder::append) // 결과로 얻어진 것에 대해서 어떻게 처리할지 정의
				.toString();  //문자화
		System.out.println(ran_pwd);
	 System.out.println(1>2);
	 

	}

}
