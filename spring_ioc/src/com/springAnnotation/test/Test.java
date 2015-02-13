package com.springAnnotation.test;

import java.lang.annotation.Annotation;
import java.lang.reflect.Field;

import com.springAnnotation.service.ComService;
import com.springAnnotation.util.Autowired;
import com.springAnnotation.util.ClassPathXmlApplicationContext;

public class Test {
	@Autowired
	ComService comService;
	public static void main(String[] args) throws Exception {
		Test t = new Test();
		t.annotation();
		t.show();
	}
	
	public void show() throws Exception{
		comService.show("Ð¡ºì×¢Èë");
		System.out.println(123);
	}
	
	public void annotation() throws Exception{
		ClassPathXmlApplicationContext context = new ClassPathXmlApplicationContext();
		Field[] ffs = Class.forName("com.springAnnotation.test.Test").getDeclaredFields();
		for(Field ff :ffs){
			Annotation[] annotations = ff.getAnnotations();
			for (Annotation annotation : annotations) {
				System.out.println(ff.getName() + " : "
				+ annotation.annotationType().getName());
				comService = (ComService) context.getBean("comService");
			}
		}
	}
}
