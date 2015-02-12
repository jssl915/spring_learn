package com.common.test;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.FileSystemXmlApplicationContext;

import com.common.service.StudentService;

public class Test {
	public static void main(String[] args) {
		ApplicationContext ac = new FileSystemXmlApplicationContext("classpath:applicationContext_test.xml");
		StudentService studentService = (StudentService)ac.getBean("studentService");
		studentService.show("123");
		
	}
}
