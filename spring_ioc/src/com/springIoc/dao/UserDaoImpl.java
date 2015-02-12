package com.springIoc.dao;

public class UserDaoImpl implements UserDao {

	@Override
	public void show(String userName) {
		System.out.println("my name is "+userName);
	}
}
