package com.aidaL.action.merchant;

import javax.servlet.http.HttpSession;

import com.aidaL.action.BaseAction;
import com.aidaL.bean.AdCustomer;
import com.aidaL.service.IUserService;

public class MerchantAction extends BaseAction {
	private IUserService userService;
	private AdCustomer user;
	HttpSession session = request.getSession(true);
	
	@Override
	public String execute() throws Exception {
		Integer id = (Integer) session.getAttribute("cusId");
		user = userService.get(id);
		return SUCCESS;
	}

	public void setUserService(IUserService userService) {
		this.userService = userService;
	}

	public AdCustomer getUser() {
		return user;
	}

	public void setUser(AdCustomer user) {
		this.user = user;
	}

}
