package com.aidaL.action.order;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

import com.aidaL.action.CRUDAction;
import com.aidaL.bean.AdOrder;
import com.aidaL.bean.AdProductInfo;
import com.aidaL.bean.AdProductcategory;
import com.aidaL.query.OrderQuery;
import com.aidaL.query.PageList;
import com.aidaL.query.ProductCateQuery;
import com.aidaL.service.IOrderService;
import com.aidaL.service.IProductCateService;
import com.aidaL.service.IUserService;
import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.interceptor.annotations.InputConfig;

public class OrderAction extends CRUDAction<AdOrder> {
	private static final long serialVersionUID = 1L;
	private IOrderService orderService;
	private IUserService userService;
	private AdOrder order;
	private PageList pageList;// getter
	private OrderQuery baseQuery = new OrderQuery();// getter,setter
	private Integer coId;
	
	public String jiesuan() throws Exception{
		return "jiesuan";
	}

	@Override
	public AdOrder getModel() {
		return order;
	}

	@Override
	protected void list() throws Exception {
		this.pageList = orderService.findByQuery(baseQuery);
	}

	@Override
	public String input() throws Exception {
		return INPUT;
	}

	@Override
	@InputConfig(methodName = Action.INPUT)
	public String save() throws Exception {
		if (coId == null) {
			baseQuery.setCurrentPage(Integer.MAX_VALUE);
			orderService.save(order);
		} else {
			System.out.println("not null...");
			orderService.update(order);
		}
		return RELOAD;
	}

	// ajax删除
	@Override
	public String delete() throws Exception {
		System.out.println("delete .....");
		logger.debug("delete");
		HttpServletResponse response = ServletActionContext.getResponse();
		response.setContentType("text/json; charset=UTF-8");
		PrintWriter out = response.getWriter();
		try {
			if (coId != null) {
				orderService.delete(coId);
				out.print(true);
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
			if (coId != null) {
				orderService.delete(coId);
				out.print("{\"success\":true,\"msg\":\"删除成功\"}");
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
		if (coId != null) {
			order = orderService.get(coId);// 回显数据
		}
	}

	@Override
	public void prepareSave() throws Exception {
		System.out.println("jjjj " + coId);
		if (coId != null) {
			order = orderService.get(coId);// 保存修改后没有出现在jsp页面的属性不丢失
		} else {
			order = new AdOrder();// 新增后的保存
		}
	}

	public OrderQuery getBaseQuery() {
		return baseQuery;
	}

	public void setBaseQuery(OrderQuery baseQuery) {
		this.baseQuery = baseQuery;
	}

	public Integer getCoId() {
		return coId;
	}

	public void setCoId(Integer coId) {
		this.coId = coId;
	}

	public void setOrderService(IOrderService orderService) {
		this.orderService = orderService;
	}

	public void setUserService(IUserService userService) {
		this.userService = userService;
	}

	public void setPageList(PageList pageList) {
		this.pageList = pageList;
	}

	public PageList getPageList() {
		return pageList;
	}

}
