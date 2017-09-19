package com.aidaL.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.aidaL.bean.AdLog;
import com.aidaL.dao.AdLogDAO;

public class AdLogDAOImpl extends HibernateDaoSupport implements AdLogDAO {

	@Override
	public AdLog get(Integer id) {
		return this.getHibernateTemplate().get(AdLog.class, id);
	}

	@Override
	public void save(AdLog adLog) {
		this.getHibernateTemplate().save(adLog);
	}

	@Override
	public void update(AdLog adLog) {
		this.getHibernateTemplate().saveOrUpdate(adLog);
	}

	@Override
	public void delete(Integer id) {
		this.getHibernateTemplate().delete(getHibernateTemplate().get(AdLog.class, id));
	}

	@Override
	public void delete(AdLog adLog) {
		this.getHibernateTemplate().delete(adLog);
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<AdLog> findAll() {
		return this.getHibernateTemplate().find("from AdLog");
	}

	@SuppressWarnings("unchecked")
	@Override
	public AdLog findLogById(Integer id) {
		List<AdLog> list = this.getHibernateTemplate().find("from com.aidaL.bean.AdLog log where log.logId='"+id+"'");
		if (list.size()==1) {
			return (AdLog)list.get(0);
		}
		return null;
	}

	@Override
	public AdLog findLogByUId(Integer uId) {
		@SuppressWarnings("unchecked")
		List<AdLog> list = this.getHibernateTemplate().find("from com.aidaL.bean.AdLog log where log.UId='"+uId+"'");
		if (!list.isEmpty()) {
			return (AdLog)list;
		}
		return null;
	}

	@SuppressWarnings("unchecked")
	@Override
	public AdLog findMaxLogByUID(Integer uId) {
		List<Integer> max = this.getHibernateTemplate().find("select max(log.logId) from com.aidaL.bean.AdLog log " +
				"where log.UId='"+uId+"'");
		List<AdLog> list=null;
		if (max.get(0)!=null) {
			list = this.getHibernateTemplate().find("from com.aidaL.bean.AdLog log where log.logId='"+max.get(0)+"'");
		}
		
		if (list!=null) {
			return (AdLog)list.get(0);
		}		
		return null;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<AdLog> findSevenLog() {
		// TODO Auto-generated method stub
		//获取最后的7条日志信息
		//固定超管账户判断，超管不能删除，所以通过固定的超管ID筛选
		String hql = "from com.aidaL.bean.AdLog log where log.UId=2 order by log.logId desc";
		Session session = this.getSession();
		Query query = session.createQuery(hql);
		query.setFirstResult(0);
		query.setMaxResults(7);
		List<AdLog> list = query.list();
		session.clear();
		session.close();
		return list;
	}

}
