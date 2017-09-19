package com.aidaL.query;

import com.aidaL.bean.AdStore;
import com.aidaL.bean.BrandAD;

/**
 * 
 * 子类自己的查询条件：用户名，email，部门
 * 
 */
public class StoreQuery extends BaseQuery {

	private Integer stId;
	private Integer stState;

	public StoreQuery() {
		super(AdStore.class.getName());
	}

	@Override
	protected void addWhere() {
		System.out.println(stState);
		if (stId != null && stId != -1) {
			addCondition("o.stId=?", stId);
		}
		if (stState != null && stState != -1) {
			addCondition("o.stState=?", stState);
		}
	}

	public Integer getStState() {
		return stState;
	}

	public void setStState(Integer stState) {
		this.stState = stState;
	}

	public Integer getStId() {
		return stId;
	}

	public void setStId(Integer stId) {
		this.stId = stId;
	}

}
