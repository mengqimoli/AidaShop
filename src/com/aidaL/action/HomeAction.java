package com.aidaL.action;

import com.aidaL.query.PageList;
import com.aidaL.query.ProductInfoQuery;
import com.aidaL.service.IProductInfoService;

public class HomeAction extends BaseAction{
	
	private IProductInfoService productInfoService;
	private PageList pageList;// getter 
	private ProductInfoQuery baseQuery = new ProductInfoQuery();// getter,setter
	
	public void setProductInfoService(IProductInfoService productInfoService) {
		this.productInfoService = productInfoService;
	}

	@Override
	public String execute() throws Exception {
		putContext("newProductInfos", productInfoService.getNewProductInfos());
		return SUCCESS;
	}

	public ProductInfoQuery getBaseQuery() {
		return baseQuery;
	}

	public void setBaseQuery(ProductInfoQuery baseQuery) {
		this.baseQuery = baseQuery;
	}

	public PageList getPageList() {
		return pageList;
	}
	
}
