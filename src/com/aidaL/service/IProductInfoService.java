package com.aidaL.service;

import java.util.List;

import com.aidaL.bean.AdProductInfo;
import com.aidaL.bean.BrandAD;

public interface IProductInfoService extends IBaseService<AdProductInfo> {

	List<BrandAD> findByUserId(Integer userid);

	List<AdProductInfo> getNewProductInfos();

	List<AdProductInfo> getHotProductInfos(Integer num);
}
