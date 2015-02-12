package com.common.service;

import com.common.dao.StudentDao;
import com.common.dao.StudentDaoImpl;

public class StudentServiceImpl implements StudentService {
	StudentDao studentDao = new StudentDaoImpl();
	@Override
	public void show(String userName) {
		studentDao.show(userName);
	}

}
