package com.aidaL.action.common;

import com.aidaL.action.BaseAction;
import com.aidaL.bean.AdCustomer;
import com.aidaL.bean.AdProductInfo;
import com.aidaL.service.ICommentService;
import com.aidaL.service.IProductInfoService;
import com.aidaL.service.IUserService;

public class ProShowAction extends BaseAction {

	private IProductInfoService productInfoService;
	private ICommentService commentService;
	private IUserService userService;
	private AdProductInfo productInfo;
	private AdCustomer user;
	private Integer PId;

	public void setProductInfoService(IProductInfoService productInfoService) {
		this.productInfoService = productInfoService;
	}

	public void setCommentService(ICommentService commentService) {
		this.commentService = commentService;
	}

	public void setUserService(IUserService userService) {
		this.userService = userService;
	}

	@Override
	public String execute() throws Exception {
		Integer id = (Integer) session.getAttribute("cusId");
		if(id != null){
			user = userService.get(id);
			putContext("user", user);
		}
		putContext("proComments", commentService.getCommentByproId(PId));
		productInfo = productInfoService.get(PId);
		return SUCCESS;
	}

	public AdProductInfo getProductInfo() {
		return productInfo;
	}

	public void setProductInfo(AdProductInfo productInfo) {
		this.productInfo = productInfo;
	}

	public Integer getPId() {
		return PId;
	}

	public void setPId(Integer pId) {
		PId = pId;
	}

	public AdCustomer getUser() {
		return user;
	}

	public void setUser(AdCustomer user) {
		this.user = user;
	}

}
