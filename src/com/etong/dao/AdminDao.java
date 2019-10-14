package com.etong.dao;

import java.util.List;

import org.springframework.orm.hibernate4.support.HibernateDaoSupport;

import com.etong.vo.Admin;

public class AdminDao extends HibernateDaoSupport {

	@SuppressWarnings("unchecked")
	public boolean login(Admin admin) {
		List<Admin> list = (List<Admin>) this.getHibernateTemplate().find("from Admin where username=? and password=?", admin.getUsername(),admin.getPassword());
		return list.size() > 0;
	}

}
