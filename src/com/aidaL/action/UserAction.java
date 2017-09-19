package com.aidaL.action;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

import com.aidaL.bean.AdCustomer;
import com.aidaL.query.PageList;
import com.aidaL.query.UserQuery;
import com.aidaL.service.IUserService;
import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.interceptor.annotations.InputConfig;

public class UserAction extends CRUDAction<AdCustomer> {
	private static final long serialVersionUID = 1L;
	private IUserService userService;
	private AdCustomer adCustomer;
	private PageList pageList;// getter
	// 实例化一个查询对象,定义为baseQuery的目的，抽取公共的分页页面：getter,setter
	private UserQuery baseQuery = new UserQuery();
	private Integer UId;

	@Override
	public AdCustomer getModel() {
		return adCustomer;
	}

	@Override
	protected void list() throws Exception {
		this.pageList = userService.findByQuery(baseQuery);
	}

	@Override
	public String input() throws Exception {
		logger.debug("input");
		return INPUT;
	}

	@Override
	// 如果出现了转换异常或者验证异常，改变默认的跳转视图名称,跳转到input方法
	@InputConfig(methodName = Action.INPUT)
	public String save() throws Exception {
		if (UId == null) {
			// 修改当前的页码
			System.out.println("sadfsdf...."+adCustomer.getUAdmin());
			baseQuery.setCurrentPage(Integer.MAX_VALUE);
			adCustomer.setUPassword("123456");
			userService.save(adCustomer);
		} else {
			System.out.println("kk..."+adCustomer.getUPassword());
			userService.update(adCustomer);
		}
		return RELOAD;
	}

	// ajax删除
	@Override
	public String delete() throws Exception {
		logger.debug("delete");
		System.out.println(UId);
		HttpServletResponse response = ServletActionContext.getResponse();
		response.setContentType("text/json; charset=UTF-8");
		PrintWriter out = response.getWriter();
		try {
			if (UId != null) {
				if (userService.get(UId).getUAdmin() != 2) {
					userService.delete(UId);
					out.print(true);
				} else {
					out.print(false);
				}
			} else {
				out.print(false);
			}
		} catch (Exception e) {
			e.printStackTrace();
			out.print(false);
		}
		return NONE;
	}

	// ajax单个删除
	public String deletesingle() throws Exception {
		logger.debug("delete");
		HttpServletResponse response = ServletActionContext.getResponse();
		response.setContentType("text/json; charset=UTF-8");
		PrintWriter out = response.getWriter();
		try {
			if (UId != null) {
				if (userService.get(UId).getUAdmin() != 2) {
					userService.delete(UId);
					out.print("{\"success\":true,\"msg\":\"删除成功\"}");
				} else {
					out.print("{\"success\":false,\"msg\":\"不能删除超级管理员\"}");
				}
			} else {
				out.print("{\"success\":false,\"msg\":\"删除失败：没有对应的数据\"}");
			}
		} catch (Exception e) {
			e.printStackTrace();
			out.print("{\"success\":false,\"msg\":\"<font color='red'>异常信息："
					+ e.getMessage() + "</font>\"}");
		}
		return NONE;
	}

	@Override
	public void prepareInput() throws Exception {
		System.out.println("input " + UId);
		if (UId != null) {
			adCustomer = userService.get(UId);// 回显数据
		}
	}

	@Override
	public void prepareSave() throws Exception {
		if (UId != null) {
			adCustomer = userService.get(UId);// 保存修改后没有出现在jsp页面的属性不丢失
		} else {
			adCustomer = new AdCustomer();// 新增后的保存
		}
	}

	public UserQuery getBaseQuery() {
		return baseQuery;
	}

	public void setBaseQuery(UserQuery baseQuery) {
		this.baseQuery = baseQuery;
	}

	public Integer getUId() {
		return UId;
	}

	public void setUId(Integer uId) {
		UId = uId;
	}

	public PageList getPageList() {
		return pageList;
	}

	public void setUserService(IUserService userService) {
		this.userService = userService;
	}

}
