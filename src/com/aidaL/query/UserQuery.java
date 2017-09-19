package com.aidaL.query;

import com.aidaL.bean.AdCustomer;

/**
 * 
 * 子类自己的查询条件：用户名，email，部门
 * 
 */
public class UserQuery extends BaseQuery {

	private Integer UAdmin;
	private Integer UState;
	private Integer UStylingDesigner;

	public UserQuery() {
		super(AdCustomer.class.getName());
	}

	@Override
	protected void addWhere() {
		if (UAdmin != null && UAdmin != -2) {
			addCondition("o.UAdmin=?", UAdmin);
		}
		if (UState != null && UState != -2) {
			addCondition("o.UState=?", UState);
		}
		if (UStylingDesigner != null && UStylingDesigner != -2) {
			addCondition("o.UStylingDesigner=?", UStylingDesigner);
		}
	}

	public Integer getUAdmin() {
		return UAdmin;
	}

	public void setUAdmin(Integer uAdmin) {
		UAdmin = uAdmin;
	}

	public Integer getUState() {
		return UState;
	}

	public void setUState(Integer uState) {
		UState = uState;
	}

	public Integer getUStylingDesigner() {
		return UStylingDesigner;
	}

	public void setUStylingDesigner(Integer uStylingDesigner) {
		UStylingDesigner = uStylingDesigner;
	}

}
