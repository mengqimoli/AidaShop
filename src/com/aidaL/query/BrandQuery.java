package com.aidaL.query;

import com.aidaL.bean.BrandAD;

/**
 * 
 * 子类自己的查询条件：用户名，email，部门
 * 
 */
public class BrandQuery extends BaseQuery {

	private Integer stId;

	public BrandQuery() {
		super(BrandAD.class.getName());
	}

	@Override
	protected void addWhere() {
		if (stId != null && stId != -1) {
			addCondition("o.adStore.stId=?", stId);
		}
	}

	public Integer getStId() {
		return stId;
	}

	public void setStId(Integer stId) {
		this.stId = stId;
	}

}
