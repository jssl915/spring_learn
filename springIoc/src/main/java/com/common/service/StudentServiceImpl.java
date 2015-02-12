package com.common.service;

import org.springframework.stereotype.Service;

import com.common.dao.StudentDao;
import com.common.dao.StudentDaoImpl;
@Service
public class StudentServiceImpl implements StudentService {
	StudentDao studentDao = new StudentDaoImpl();
	@Override
	public void show(String userName) {
		studentDao.show(userName);
	}

}
