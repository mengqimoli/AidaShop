package com.aidaL.dao.impl;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.aidaL.bean.AdCustomer;
import com.aidaL.dao.AdUserDAO;

public class AdUserDAOImpl extends HibernateDaoSupport implements AdUserDAO {

	@Override
	public AdCustomer get(Integer id) {
		// TODO Auto-generated method stub
		return getHibernateTemplate().get(AdCustomer.class, id);
	}

	@Override
	public void save(AdCustomer user) {
		// TODO Auto-generated method stub
		getHibernateTemplate().save(user);
	}

	@Override
	public void update(AdCustomer user) {
		// TODO Auto-generated method stub
		//getHibernateTemplate().saveOrUpdate(user);
		getHibernateTemplate().update(user);
	}

	@Override
	public void delete(Integer id) {
		// TODO Auto-generated method stub
		getHibernateTemplate().delete(getHibernateTemplate().get(AdCustomer.class, id));
	}

	@Override
	public void delete(AdCustomer user) {
		// TODO Auto-generated method stub
		getHibernateTemplate().delete(user);
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<AdCustomer> findAll(Integer uid) {
		// TODO Auto-generated method stub
		return getHibernateTemplate().find("from AdCustomer adcus where adcus.UId <>"+uid);
	}

	@Override
	public AdCustomer findUserByNameAndPass(String username, String password) {
		// TODO Auto-generated method stub
		System.out.println("AdUserDAOImpl...");
		@SuppressWarnings("unchecked")
		List<AdCustomer> list = getHibernateTemplate().find("from com.aidaL.bean.AdCustomer adcus where adcus.UName = '"+username+"' and adcus.UPassword ='"+password+"'");
		System.out.println("22222222.........."+list.size());
		if (list.size()==1) {
			return (AdCustomer)list.get(0);
		}
		return null;
	}

	@SuppressWarnings("unchecked")
	@Override
	public AdCustomer finCustById(Integer id) {
		// TODO Auto-generated method stub
		List<AdCustomer> list = getHibernateTemplate().find("from com.aidaL.bean.AdCustomer adcus where adcus.UId = '"+id+"'");
		
		if (list.get(0)!=null) {
			return (AdCustomer)list.get(0);
		}
		return null;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<AdCustomer> finVIPCust(Integer uid) {
		// TODO Auto-generated method stub
		List<AdCustomer> list = null;
		list = getHibernateTemplate().find("from com.aidaL.bean.AdCustomer adcus where adcus.UState > "+1+" and adcus.UId <>"+uid);
		if (list!=null) {
			return list;
		}
		return null;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<AdCustomer> findStyleCust(Integer uid) {
		List<AdCustomer> list = null;
		list = this.getHibernateTemplate().find("from com.aidaL.bean.AdCustomer adcus where adcus.UStylingDesigner > "+0+" and adcus.UId <>"+uid);
		if (list!=null) {
			return list;
		}
		return null;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<AdCustomer> findAuthenCust(Integer uid) {
		List<AdCustomer> list = null;
		list = this.getHibernateTemplate().find("from com.aidaL.bean.AdCustomer adcus where adcus.UStylingDesigner > "+2+" and adcus.UId <>"+uid);
		if (list!=null) {
			return list;
		}
		return null;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<AdCustomer> findAdminCust(Integer uid) {
		List<AdCustomer> list = null;
		list = this.getHibernateTemplate().find("from com.aidaL.bean.AdCustomer adcus where adcus.UAdmin > "+0+" and adcus.UId <>"+uid);
		if (list!=null) {
			return list;
		}
		return null;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<AdCustomer> findSupCust(Integer uid) {
		List<AdCustomer> list = null;
		list = this.getHibernateTemplate().find("from com.aidaL.bean.AdCustomer adcus where adcus.UAdmin = "+2+" and adcus.UId <>"+uid);
		if (list!=null) {
			return list;
		}
		return null;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<AdCustomer> findStoreCust() {
		List<AdCustomer> list = null;
		list = this.getHibernateTemplate().find("from com.aidaL.bean.AdCustomer adcus where adcus.UAdmin = "+1);
		if (list!=null) {
			return list;
		}
		return null;
	}

	@SuppressWarnings("unchecked")
	@Override
	public Integer finCustByName(String uName) {
		// TODO Auto-generated method stub
		Integer res = 0;
		List<AdCustomer> list = null;
		list = this.getHibernateTemplate().find("from com.aidaL.bean.AdCustomer adcus where adcus.UName = '"+uName+"'");
		
		if (list.size()>0) {
			res = 1;
			return res;
		}
		return res;
	}

	@Override
	public Integer addCustRetID(AdCustomer viCust) {
		// TODO Auto-generated method stub
		this.getHibernateTemplate().save(viCust);
		Integer uid = viCust.getUId();
		
		return uid;
	}

}
