package com.common.test;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.common.service.StudentService;
@Controller
@RequestMapping(value = "/index")
public class TestController {
	@Autowired
	StudentService studentService;
	@RequestMapping(value = "init")
	public void main() {
//		ApplicationContext ac = new FileSystemXmlApplicationContext("classpath:applicationContext.xml");
//		StudentService studentService = (StudentService)ac.getBean("studentService");
		System.out.println(123456);
		studentService.show("123");
		
	}
}
