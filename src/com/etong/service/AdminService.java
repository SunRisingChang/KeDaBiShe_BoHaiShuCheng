package com.etong.service;

import org.springframework.transaction.annotation.Transactional;

import com.etong.dao.AdminDao;
import com.etong.vo.Admin;

@Transactional
public class AdminService {

	private AdminDao adminDao;

	public AdminDao getAdminDao() {
		return adminDao;
	}

	public void setAdminDao(AdminDao adminDao) {
		this.adminDao = adminDao;
	}

	public boolean login(Admin admin) {
		return adminDao.login(admin);
	}

}
