package com.aidaL.dao;

import java.util.List;

import com.aidaL.bean.AdProductInfo;
import com.aidaL.bean.BrandAD;

public interface AdProductInfoDAO {
	
	AdProductInfo get(Integer id);

	void save(AdProductInfo productInfo);

	void update(AdProductInfo productInfo);

	void delete(Integer id);

	void delete(AdProductInfo productInfo);

	List<AdProductInfo> findAll();

	AdProductInfo findBrandById(Integer id);

}
