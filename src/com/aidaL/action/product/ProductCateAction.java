package com.aidaL.action.product;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

import com.aidaL.action.CRUDAction;
import com.aidaL.bean.AdProductInfo;
import com.aidaL.bean.AdProductcategory;
import com.aidaL.query.PageList;
import com.aidaL.query.ProductCateQuery;
import com.aidaL.service.IProductCateService;
import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.interceptor.annotations.InputConfig;

public class ProductCateAction extends CRUDAction<AdProductcategory> {
	private static final long serialVersionUID = 1L;
	private IProductCateService productCateService;
	private AdProductcategory productCate;
	private PageList pageList;// getter
	private ProductCateQuery baseQuery = new ProductCateQuery();// getter,setter
	private Integer cgId;

	public void setProductCateService(IProductCateService productCateService) {
		this.productCateService = productCateService;
	}

	@Override
	public AdProductcategory getModel() {
		return productCate;
	}

	@Override
	protected void list() throws Exception {
		this.pageList = productCateService.findByQuery(baseQuery);
	}

	@Override
	public String input() throws Exception {
		return INPUT;
	}

	@Override
	@InputConfig(methodName = Action.INPUT)
	public String save() throws Exception {
		if (cgId == null) {
			baseQuery.setCurrentPage(Integer.MAX_VALUE);
			productCateService.save(productCate);
		} else {
			System.out.println("not null...");
			productCateService.update(productCate);
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
			if (cgId != null) {
				productCateService.delete(cgId);
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
			if (cgId != null) {
				productCateService.delete(cgId);
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
		if (cgId != null) {
			productCate = productCateService.get(cgId);// 回显数据
		}
	}

	@Override
	public void prepareSave() throws Exception {
		System.out.println("jjjj " + cgId);
		if (cgId != null) {
			productCate = productCateService.get(cgId);// 保存修改后没有出现在jsp页面的属性不丢失
		} else {
			productCate = new AdProductcategory();// 新增后的保存
		}
	}

	public ProductCateQuery getBaseQuery() {
		return baseQuery;
	}

	public void setBaseQuery(ProductCateQuery baseQuery) {
		this.baseQuery = baseQuery;
	}

	public Integer getCgId() {
		return cgId;
	}

	public void setCgId(Integer cgId) {
		this.cgId = cgId;
	}

	public PageList getPageList() {
		return pageList;
	}

}
