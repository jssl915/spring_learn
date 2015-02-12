package com.common.dao;

public class StudentDaoImpl implements StudentDao {

	@Override
	public void show(String stuName) {
		System.out.println("my name is "+stuName);
	}
}
