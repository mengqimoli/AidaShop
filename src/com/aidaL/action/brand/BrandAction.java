package com.aidaL.action.brand;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

import com.aidaL.action.CRUDAction;
import com.aidaL.bean.AdCustomer;
import com.aidaL.bean.AdStore;
import com.aidaL.bean.BrandAD;
import com.aidaL.query.BrandQuery;
import com.aidaL.query.PageList;
import com.aidaL.service.ActionManager;
import com.aidaL.service.IBrandService;
import com.aidaL.service.IStoreService;
import com.aidaL.service.IUserService;

public class BrandAction extends CRUDAction<BrandAD> {
	private IBrandService brandService;
	private IStoreService storeService;
	private IUserService userService;
	private BrandAD brandAD;
	private PageList pageList;// getter
	private BrandQuery baseQuery = new BrandQuery();// getter,setter
	private Integer brId;
	private AdCustomer user;

	@Override
	public BrandAD getModel() {
		return brandAD;
	}

	@Override
	protected void list() throws Exception {
		putContext("allStores", storeService.getAll());
		Integer id = (Integer) session.getAttribute("cusId");
		user = userService.get(id);
		if (user.getUAdmin() == 1) {
			baseQuery.setStId(user.getStore().getStId());
		}
		this.pageList = brandService.findByQuery(baseQuery);
	}

	@Override
	public String input() throws Exception {
		putContext("allStores", storeService.getAll());
		Integer id = (Integer) session.getAttribute("cusId");
		user = userService.get(id);
		return INPUT;
	}

	@Override
	public String save() throws Exception {
		Integer id = (Integer) session.getAttribute("cusId");
		user = userService.get(id);
		AdStore store = brandAD.getAdStore();
		if (store != null && store.getStId() == -1) {
			brandAD.setAdStore(null);
		}
		if (brId == null) {
			if (user.getUAdmin() == 1) {
				brandAD.setAdStore(user.getStore());
			}
			baseQuery.setCurrentPage(Integer.MAX_VALUE);
			brandService.save(brandAD);
		} else {
			brandService.update(brandAD);
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
			if (brId != null) {
				brandService.delete(brId);
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
			if (brId != null) {
				brandService.delete(brId);
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
		if (brId != null) {
			brandAD = brandService.get(brId);// 回显数据
		}
	}

	@Override
	public void prepareSave() throws Exception {
		if (brId != null) {
			brandAD = brandService.get(brId);// 保存修改后没有出现在jsp页面的属性不丢失
		} else {
			brandAD = new BrandAD();// 新增后的保存
		}
	}

	public BrandQuery getBaseQuery() {
		return baseQuery;
	}

	public void setBaseQuery(BrandQuery baseQuery) {
		this.baseQuery = baseQuery;
	}

	public Integer getBrId() {
		return brId;
	}

	public void setBrId(Integer brId) {
		this.brId = brId;
	}

	public PageList getPageList() {
		return pageList;
	}

	public void setBrandService(IBrandService brandService) {
		this.brandService = brandService;
	}

	public void setStoreService(IStoreService storeService) {
		this.storeService = storeService;
	}

	public AdCustomer getUser() {
		return user;
	}

	public void setUser(AdCustomer user) {
		this.user = user;
	}

	public void setUserService(IUserService userService) {
		this.userService = userService;
	}
}
