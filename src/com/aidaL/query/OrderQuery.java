package com.aidaL.query;

import com.aidaL.bean.AdOrder;
import com.aidaL.bean.AdProductInfo;
import com.aidaL.bean.AdProductcategory;

/**
 * 
 * 子类自己的查询条件：用户名，email，部门
 * 
 */
public class OrderQuery extends BaseQuery {


	public OrderQuery() {
		super(AdOrder.class.getName());
	}

	@Override
	protected void addWhere() {
	}


}
