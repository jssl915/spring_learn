package com.common.test;

import com.common.service.StudentService;
import com.common.service.StudentServiceImpl;

public class Test {
	public static void main(String[] args) {
		StudentService studentService = new StudentServiceImpl();
		studentService.show("ะกร๗");
	}
}
