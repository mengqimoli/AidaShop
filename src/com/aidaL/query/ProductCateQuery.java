package com.aidaL.query;

import com.aidaL.bean.AdProductInfo;
import com.aidaL.bean.AdProductcategory;

/**
 * 
 * 子类自己的查询条件：用户名，email，部门
 * 
 */
public class ProductCateQuery extends BaseQuery {


	public ProductCateQuery() {
		super(AdProductcategory.class.getName());
	}

	@Override
	protected void addWhere() {
	}


}
