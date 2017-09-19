package com.aidaL.dao.impl;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.aidaL.bean.AdStoreAuth;
import com.aidaL.dao.AdStoreAuthDAO;

public class AdStoreAuthDAOImpl extends HibernateDaoSupport implements AdStoreAuthDAO {

	@Override
	public AdStoreAuth get(Integer id) {
		// TODO Auto-generated method stub
		return getHibernateTemplate().get(AdStoreAuth.class, id);
	}

	@Override
	public void save(AdStoreAuth storeAuth) {
		// TODO Auto-generated method stub
		getHibernateTemplate().save(storeAuth);
	}

	@Override
	public void update(AdStoreAuth storeAuth) {
		// TODO Auto-generated method stub
		getHibernateTemplate().saveOrUpdate(storeAuth);
	}

	@Override
	public void delete(Integer id) {
		// TODO Auto-generated method stub
		getHibernateTemplate().delete(this.getHibernateTemplate().get(AdStoreAuth.class, id));
	}

	@Override
	public void delete(AdStoreAuth storeAuth) {
		// TODO Auto-generated method stub
		getHibernateTemplate().delete(storeAuth);
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<AdStoreAuth> findAll() {
		// TODO Auto-generated method stub
		return getHibernateTemplate().find("from com.aidaL.bean.AdStoreAuth");
	}

	@SuppressWarnings("unchecked")
	@Override
	public AdStoreAuth findStoreAuthById(Integer id) {
		// TODO Auto-generated method stub
		List<AdStoreAuth> list = null;
		list = this.getHibernateTemplate().find("from com.aidaL.bean.AdStoreAuth adsa where adsa.saId ="+id);
		if (list!=null) {
			return (AdStoreAuth) list.get(0);
		}
		return null;
	}

	@SuppressWarnings("unchecked")
	@Override
	public AdStoreAuth findStoreAuthByUId(Integer uid) {
		// TODO Auto-generated method stub
		List<AdStoreAuth> list = null;
		list = this.getHibernateTemplate().find("from com.aidaL.bean.AdStoreAuth adsa where adsa.UId ="+uid);
		if (list!=null) {
			return (AdStoreAuth) list.get(0);
		}
		return null;
	}

}
