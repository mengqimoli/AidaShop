package com.aidaL.service.impl;

import java.util.List;

import org.springframework.dao.support.DaoSupport;

import com.aidaL.bean.AdProductInfo;
import com.aidaL.bean.BrandAD;
import com.aidaL.query.BaseQuery;
import com.aidaL.query.ProductInfoQuery;
import com.aidaL.service.IProductInfoService;

public class ProductInfoServiceImpl extends BaseServiceImpl<AdProductInfo>
		implements IProductInfoService {

	@Override
	public List<BrandAD> findByUserId(Integer stid) {
		System.out.println(stid);
		String hql = "select b from com.aidaL.bean.AdStore a join a.brands b where a.stId = ?";
		List<BrandAD> list = baseDao.findByHql(hql, stid);
		for (BrandAD brandAD : list) {
			System.out.println(brandAD);
		}
		return list;
	}

	@Override
	public List<AdProductInfo> getNewProductInfos(){
		String hql = "select a from com.aidaL.bean.AdProductInfo a where a.PState = 1";
		List<AdProductInfo> list = baseDao.findByHql(hql);
		for (AdProductInfo productInfo : list) {
			System.out.println(productInfo);
		}
		return list;
	}

	@Override
	public List<AdProductInfo> getHotProductInfos(Integer num) {
		// TODO Auto-generated method stub
		return null;
	}
}
