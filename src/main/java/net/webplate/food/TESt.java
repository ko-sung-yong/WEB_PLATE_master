package net.webplate.food;


import java.util.Random;

import pwdconv.PwdChange;

public class TESt {

	public static void main(String[] args) {
		
		String pw="1234";
		String pwd=PwdChange.getPassWordToXEMD5String(pw);
		
		System.out.println(pwd);
		
		// �ڹ� 1.8�̿��� ���� + ���� ��������
		int leftLimit=48; //0����
		int rightLimit=122; // ���� z
		int targetStringLength=10;    		
		Random r=new Random();
		
		
		String ran_pwd=r.ints(leftLimit,rightLimit+1) // ���۰� ������
				.filter(i -> (i <= 57 || i >= 65) && (i <= 90 || i >= 97)) // ���� ������ �ޱ����� ���͸�(�𸣰����� ASCII�ڵ� ����)
				.limit(targetStringLength) // ��������
				.collect(StringBuilder::new, StringBuilder::appendCodePoint, StringBuilder::append) // ����� ����� �Ϳ� ���ؼ� ��� ó������ ����
				.toString();  //����ȭ
		System.out.println(ran_pwd);
	 System.out.println(1>2);
	 

	}

}
