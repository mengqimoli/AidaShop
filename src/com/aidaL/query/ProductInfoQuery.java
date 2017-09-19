package com.aidaL.query;

import com.aidaL.bean.AdProductInfo;

/**
 * 
 * 子类自己的查询条件：用户名，email，部门
 * 
 */
public class ProductInfoQuery extends BaseQuery {

	private Integer stId;
	private Integer cgId;
	private Integer PState;
	private Integer brId;

	public ProductInfoQuery() {
		super(AdProductInfo.class.getName());
	}

	@Override
	protected void addWhere() {
		if (stId != null && stId != -1) {
			addCondition("o.adStore.stId=?", stId);
		}
		if (cgId != null && cgId != -1) {
			addCondition("o.adProductcategory.cgId=?", cgId);
		}
		if (PState != null && PState != -1) {
			addCondition("o.PState=?", PState);
		}
		if (brId != null && brId != -1) {
			addCondition("o.brandAD.brId=?", brId);
		}
	}

	public Integer getStId() {
		return stId;
	}

	public void setStId(Integer stId) {
		this.stId = stId;
	}

	public Integer getCgId() {
		return cgId;
	}

	public void setCgId(Integer cgId) {
		this.cgId = cgId;
	}

	public Integer getPState() {
		return PState;
	}

	public void setPState(Integer pState) {
		PState = pState;
	}

	public Integer getBrId() {
		return brId;
	}

	public void setBrId(Integer brId) {
		this.brId = brId;
	}

}
