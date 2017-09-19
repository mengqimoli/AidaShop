package com.aidaL.dao.impl;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.aidaL.bean.AdStore;
import com.aidaL.dao.AdStoreDAO;

public class AdStoreDAOImpl extends HibernateDaoSupport implements AdStoreDAO {

	@Override
	public AdStore get(Integer id) {
		// TODO Auto-generated method stub
		return getHibernateTemplate().get(AdStore.class, id);
	}

	@Override
	public void save(AdStore store) {
		// TODO Auto-generated method stub
		getHibernateTemplate().save(store);
	}

	@Override
	public void update(AdStore store) {
		// TODO Auto-generated method stub
		getHibernateTemplate().saveOrUpdate(store);
	}

	@Override
	public void delete(Integer id) {
		// TODO Auto-generated method stub
		getHibernateTemplate().delete(getHibernateTemplate().get(AdStore.class, id));
	}

	@Override
	public void delete(AdStore store) {
		// TODO Auto-generated method stub
		getHibernateTemplate().delete(store);
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<AdStore> findAll() {
		// TODO Auto-generated method stub
		return getHibernateTemplate().find("from AdStore");
	}

	@SuppressWarnings("unchecked")
	@Override
	public AdStore findStoreById(Integer id) {
		// TODO Auto-generated method stub
		System.out.println("AdStoreDAOImpl,id:"+id);
		List<AdStore> list = getHibernateTemplate().find("from com.aidaL.bean.AdStore au where au.stId = '" + id + "'");
		System.out.println("AdStoreDAOImpl,name:"+list.get(0).getStName());
		if (list.size()==1) {
			return (AdStore)list.get(0);
		}
		return null;
	}

	@Override
	public Integer saveResID(AdStore store) {
		// TODO Auto-generated method stub
		this.getHibernateTemplate().save(store);
		Integer sId = store.getStId();
		return sId;
	}

}
