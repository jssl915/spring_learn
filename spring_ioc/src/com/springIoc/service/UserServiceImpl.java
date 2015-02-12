package com.springIoc.service;

import com.springIoc.dao.UserDao;

public class UserServiceImpl implements UserService {
	UserDao userDao =null;
	public UserDao getUserDao() {
		return userDao;
	}
	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}
	@Override
	public void show(String userName) {
		userDao.show(userName);
	}
}
