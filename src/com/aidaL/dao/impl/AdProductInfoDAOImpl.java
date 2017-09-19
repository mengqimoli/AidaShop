package com.aidaL.dao.impl;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.aidaL.bean.AdProductInfo;
import com.aidaL.bean.BrandAD;
import com.aidaL.dao.AdProductInfoDAO;

public class AdProductInfoDAOImpl extends HibernateDaoSupport implements
		AdProductInfoDAO {

	@Override
	public AdProductInfo get(Integer id) {
		return this.getHibernateTemplate().get(AdProductInfo.class, id);
	}

	@Override
	public void save(AdProductInfo productInfo) {
		this.getHibernateTemplate().save(productInfo);
	}

	@Override
	public void update(AdProductInfo productInfo) {

		this.getHibernateTemplate().saveOrUpdate(productInfo);
	}

	@Override
	public void delete(Integer id) {

		this.getHibernateTemplate().delete(
				getHibernateTemplate().get(AdProductInfo.class, id));
	}

	@Override
	public void delete(AdProductInfo productInfo) {

		this.getHibernateTemplate().delete(productInfo);
	}

	@Override
	public List<AdProductInfo> findAll() {

		return getHibernateTemplate().loadAll(AdProductInfo.class);
	}

	@Override
	public AdProductInfo findBrandById(Integer id) {
		
		return null;
	}

}
