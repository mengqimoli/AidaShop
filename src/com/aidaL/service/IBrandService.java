package com.aidaL.service;

import java.util.List;

import com.aidaL.bean.BrandAD;

public interface IBrandService extends IBaseService<BrandAD> {
	List<BrandAD> findStoreBrands();
}
