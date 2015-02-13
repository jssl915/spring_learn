package com.springAnnotation.service;

import com.springAnnotation.dao.ComDao;

public class ComServiceImpl implements ComService {
	ComDao comDao;
	public ComDao getComDao() {
		return comDao;
	}
	public void setComDao(ComDao comDao) {
		this.comDao = comDao;
	}
	@Override
	public void show(String userName) {
		comDao.show(userName);
	}
}
