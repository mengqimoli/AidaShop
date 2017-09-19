package com.aidaL.bean.cart;

import com.aidaL.bean.AdProductInfo;

public class CartItem {

	// 商品
	private AdProductInfo productInfo;
	// 数量
	private Integer proNum;

	public AdProductInfo getProductInfo() {
		return productInfo;
	}

	public void setProductInfo(AdProductInfo productInfo) {
		this.productInfo = productInfo;
	}

	public Integer getProNum() {
		return proNum;
	}

	public void setProNum(Integer proNum) {
		this.proNum = proNum;
	}

	@Override
	public String toString() {
		return "CartItem [productInfo=" + productInfo + ", proNum=" + proNum
				+ "]";
	}

}
