package com.springAnnotation.dao;

public class ComDaoImpl implements ComDao {

	@Override
	public void show(String userName) {
		System.out.println("my name is "+userName);
	}
}
