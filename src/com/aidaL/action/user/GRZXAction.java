package com.aidaL.action.user;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

import com.aidaL.action.CRUDAction;
import com.aidaL.bean.AdCustomer;
import com.aidaL.service.IUserService;

public class GRZXAction extends CRUDAction<AdCustomer> {
	private IUserService userService;// setter
	private AdCustomer user;
	private Integer UId;

	public Integer getUId() {
		return UId;
	}

	public void setUId(Integer uId) {
		UId = uId;
	}

	public void setUserService(IUserService userService) {
		this.userService = userService;
	}

	@Override
	protected void list() throws Exception {

	}

	@Override
	public String input() throws Exception {
		return INPUT;
	}

	@Override
	public String save() throws Exception {
		userService.update(user);
		return SUCCESS;
	}

	@Override
	public String delete() throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void prepareInput() throws Exception {
		Integer id = (Integer) session.getAttribute("cusId");
		user = userService.get(id);
	}

	@Override
	public void prepareSave() throws Exception {
		if (UId != null) {
			user = userService.get(UId);
		} else {
			user = new AdCustomer();
		}
	}

	public String xgmm() throws Exception {
		return "xgmm";
	}

	private String newPwd;
	private String newPwd1;

	public String getNewPwd() {
		return newPwd;
	}

	public void setNewPwd(String newPwd) {
		this.newPwd = newPwd;
	}

	public String getNewPwd1() {
		return newPwd1;
	}

	public void setNewPwd1(String newPwd1) {
		this.newPwd1 = newPwd1;
	}

	// ajax修改密码
//	public String pwd() throws Exception {
//		HttpServletResponse response = ServletActionContext.getResponse();
//		response.setContentType("text/html; charset=UTF-8");
//		PrintWriter out = response.getWriter();
//		try {
//			if (newPwd == null || newPwd == "") {
//				out.print(false);
//			} else {
//				AdCustomer user = userService.get(getLoginUser().getUId());
//				user.setUserPwd(newPwd);
//				userService.update(user);
//				out.print(true);
//			}
//		} catch (Exception e) {
//			e.printStackTrace();
//			out.print(false);
//		}
//		return "xgmm";
//	}

	// ajax验证旧密码是否正确
	private String oldPwd;

	public String getOldPwd() {
		return oldPwd;
	}

	public void setOldPwd(String oldPwd) {
		this.oldPwd = oldPwd;
	}

	public String checkPwd() throws Exception {
		Integer id = (Integer) session.getAttribute("cusId");
		HttpServletResponse response = ServletActionContext.getResponse();
		PrintWriter out = response.getWriter();
		AdCustomer user = userService.get(id);
		if (!oldPwd.equals(user.getUPassword())) {
			out.print(false);
		} else {
			out.print(true);
		}
		return NONE;
	}

	@Override
	public AdCustomer getModel() {
		return user;
	}

}
