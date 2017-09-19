package com.aidaL.service.impl;

import java.util.List;

import com.aidaL.bean.AdCustomer;
import com.aidaL.bean.AdStore;
import com.aidaL.service.IUserService;

public class UserServiceImpl extends BaseServiceImpl<AdCustomer> implements
		IUserService {
	@Override
	public boolean findByName(String userName) {
		// String hql="select o from Employee o where o.name=?";
		// 性能高一些
		String hql = "select count(o) from User o where o.userName=?";
		List<Long> list = baseDao.findByHql(hql, userName);
		// if(list.size()>0){//错误的写法
		// count无论如果都有返回值:0-n
		if (list.get(0) > 0) {// ("{\"valid\":false}");用户名重复
			return false;
		}
		return true;
	}

	@Override
	public AdCustomer findByLogin(String userName, String userPwd) {
		String hql = "select o from User o where o.userName=? and o.userPwd=?";
		List<AdCustomer> list = baseDao.findByHql(hql, userName, userPwd);
		if (list.size() > 0) {// 必须判断size
			return list.get(0);
		}
		return null;
	}

	@Override
	public AdCustomer findByStore(AdStore store) {
		String hql = "select o from AdCustomer o where o.store=? ";
		List<AdCustomer> list = baseDao.findByHql(hql, store);
		if (list.size() > 0) {// 必须判断size
			return list.get(0);
		}
		return null;
	}

}
