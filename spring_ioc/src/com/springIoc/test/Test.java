package com.springIoc.test;

import com.springIoc.service.UserService;
import com.springIoc.util.ClassPathXmlApplicationContext;

public class Test {
	public void show() throws Exception{
		ClassPathXmlApplicationContext context = new ClassPathXmlApplicationContext();
		UserService userService = (UserService) context.getBean("userService");
		userService.show("Ð¡ºì");
		System.out.println(123);
	}
	public static void main(String[] args) throws Exception {
		Test t = new Test();
		t.show();
	}
}
