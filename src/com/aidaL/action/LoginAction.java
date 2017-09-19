package com.aidaL.action;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.aidaL.service.ActionManager;
import com.opensymphony.xwork2.ActionSupport;

public class LoginAction extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private Map<String , Object> cusInfoMap;
	protected ActionManager logmgr;
	private String username;
	private String password;


	public ActionManager getLogmgr() {
		return logmgr;
	}



	public void setLogmgr(ActionManager logmgr) {
		this.logmgr = logmgr;
	}



	public String getUsername() {
		return username;
	}



	public void setUsername(String username) {
		this.username = username;
	}



	public String getPassword() {
		return password;
	}



	public void setPassword(String password) {
		this.password = password;
	}

	public Map<String , Object> getCusInfoMap() {
		return cusInfoMap;
	}



	public void setCusInfoMap(Map<String , Object> cusInfoMap) {
		this.cusInfoMap = cusInfoMap;
	}
	
	/**
	 * 登录验证，日志保存
	 * @return
	 * @throws IOException
	 */
	public String vaildLoginAd() throws IOException{
		HttpServletRequest request = ServletActionContext.getRequest();
		HttpServletResponse response = ServletActionContext.getResponse();
		PrintWriter writer = response.getWriter();
		response.setContentType("text/text");
		response.setCharacterEncoding("utf-8");
		request.setCharacterEncoding("utf-8");
		HttpSession session = request.getSession(true);
		
		System.out.println("username........."+username);
		if (username==""||username==null) {
			writer.print("error");
		}
		
		Map<String, Object> map = logmgr.validLogin(username, password);
		
		//判断用户是否存在
		if (map!=null) {
			Integer statu = (Integer) map.get("uStatu");
			System.out.println("statu:"+statu);
			if (statu==5) {
				writer.print("unactive");
			}else {
				session.setAttribute("cusId", map.get("uId"));
				session.setAttribute("cusNickName", map.get("uNickName"));
				session.setAttribute("cusAdmin", map.get("uAdmin"));
				session.setAttribute("cusStore", map.get("uStore"));
//					System.out.println(map.get("uId"));
//					System.out.println(map.get("uNickName"));
//					System.out.println(map.get("uAdmin"));
//					System.out.println(map.get("uStore"));
				Integer cusAdmin =  (Integer) map.get("uAdmin");
//					System.out.println("cusAdmin:"+cusAdmin);
				System.out.println("0");
				if (cusAdmin == 2) {
					writer.print("superAdmin");
				}else if (cusAdmin == 1) {
					writer.print("storeAdmin");
				}else {
					writer.print("success");
				}
			}
		}
		else{
			System.out.println("error:"+username+","+password);
			writer.print("error");
		}
		
		writer.flush();
		writer.close();
		
		return null;
	}
	
	//获取登录用户的id和username
	public String LoginInfo() throws IOException {
		HttpSession session = ServletActionContext.getRequest().getSession(true);
		String cusNickName = (String) session.getAttribute("cusNickName");
		Integer cusId = (Integer) session.getAttribute("cusId");
		Integer cusAdmin = (Integer) session.getAttribute("cusAdmin");
		System.out.println("3:cusNickName:"+cusNickName+","+"cusId:"+cusId);
		
		String adminSino = "";
		if (cusAdmin == 0) {
			adminSino = "普通管理员";
		} else if(cusAdmin == 1) {
			adminSino = "店铺管理员";
		} else if(cusAdmin == 2) {
			adminSino = "超级管理员";
		} else {
			adminSino = "权限出错";
		}
		System.out.println("cusNickName..........."+cusNickName);
		System.out.println("cusId..........."+cusId);
		cusInfoMap = new HashMap<String, Object>();
		cusInfoMap.put("cusNickName", cusNickName);
		cusInfoMap.put("cusId", cusId);
		cusInfoMap.put("adminSino", adminSino);
		
		return SUCCESS;
	}

	//登出，清空session
	public String loginout() throws IOException {
		System.out.println("111......");
		ServletActionContext.getRequest().getSession().invalidate();
		HttpServletRequest request = ServletActionContext.getRequest();
		HttpSession session = request.getSession(true);
		session.invalidate(); //让SESSION失效
		System.out.println("session清空");
		return SUCCESS;
	}
}
