package com.aidaL.action;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.aidaL.bean.AdCustomer;
import com.alibaba.fastjson.JSON;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class BaseAction extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	// 重定向的视图名称
	public static final String RELOAD = "reload";

	protected Logger logger = LoggerFactory.getLogger(getClass());

	// session里面登录用户的key
	public static final String USER_IN_SESSION = "userInSession";

	protected void putContext(String key, Object value) {
		ActionContext.getContext().put(key, value);
	}

	public HttpServletRequest request = ServletActionContext.getRequest();
	public HttpServletResponse response = ServletActionContext.getResponse();
	public HttpSession session = request.getSession(true);

	public void writeJson(Object obj) {
		try {
			response.setCharacterEncoding("utf-8");
			PrintWriter out = response.getWriter();
			out.write(JSON.toJSONString(obj));
			out.flush();
			out.close();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
}
