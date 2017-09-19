package com.aidaL.service;

import java.io.Serializable;
import java.util.List;

import com.aidaL.query.BaseQuery;
import com.aidaL.query.PageList;

public interface IBaseService<T> {
	void save(T t);

	void update(T t);

	void delete(Serializable id);

	T get(Serializable id);

	List<T> getAll();
	
	PageList findByQuery(BaseQuery baseQuery);

}
