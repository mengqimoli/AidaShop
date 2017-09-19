package com.aidaL.action.comment;

import java.io.PrintWriter;
import java.sql.Timestamp;

import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

import com.aidaL.action.CRUDAction;
import com.aidaL.bean.AdComment;
import com.aidaL.bean.AdCustomer;
import com.aidaL.query.CommentQuery;
import com.aidaL.query.PageList;
import com.aidaL.service.ICommentService;
import com.aidaL.service.IProductInfoService;
import com.aidaL.service.IStoreService;
import com.aidaL.service.IUserService;
import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.interceptor.annotations.InputConfig;

public class CommentAction extends CRUDAction<AdComment> {

	private IUserService userService;
	private ICommentService commentService;
	private IStoreService storeService;
	private IProductInfoService productInfoService;
	private AdComment comment;
	private PageList pageList;// getter
	private CommentQuery baseQuery = new CommentQuery();// getter,setter
	private Integer comId;
	private AdCustomer user;

	@Override
	public AdComment getModel() {
		// TODO Auto-generated method stub
		return comment;
	}

	@Override
	protected void list() throws Exception {
		Integer id = (Integer) session.getAttribute("cusId");
		user = userService.get(id);
		if (user.getUAdmin() == 1) {
			baseQuery.setStId(user.getStore().getStId());
		}
		this.pageList = commentService.findByQuery(baseQuery);
	}

	@Override
	public String input() throws Exception {
		return INPUT;
	}

	private Integer PId;
	private String comContent;

	@Override
	@InputConfig(methodName = Action.INPUT)
	public String save() throws Exception {
		System.out.println(PId + comContent + "sdf.............");
		Integer id = (Integer) session.getAttribute("cusId");
		user = userService.get(id);
		AdComment comment = new AdComment();
		System.out.println(user);
		comment.setAdCustomer(user);
		System.out.println(productInfoService.get(PId));
		comment.setAdProductInfo(productInfoService.get(PId));
		comment.setAdStore(productInfoService.get(PId).getAdStore());
		comment.setComContent(comContent);
		comment.setComTime(new Timestamp(System.currentTimeMillis()));
		commentService.save(comment);
		return "save";
	}

	// ajax删除
	@Override
	public String delete() throws Exception {
		HttpServletResponse response = ServletActionContext.getResponse();
		response.setContentType("text/json; charset=UTF-8");
		PrintWriter out = response.getWriter();
		try {
			if (comId != null) {
				commentService.delete(comId);
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
			if (comId != null) {
				commentService.delete(comId);
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
		if (comId != null) {
			comment = commentService.get(comId);// 回显数据
		}
	}

	@Override
	public void prepareSave() throws Exception {
		if (comId != null) {
			comment = commentService.get(comId);// 保存修改后没有出现在jsp页面的属性不丢失
		} else {
			comment = new AdComment();// 新增后的保存
		}
	}

	public CommentQuery getBaseQuery() {
		return baseQuery;
	}

	public void setBaseQuery(CommentQuery baseQuery) {
		this.baseQuery = baseQuery;
	}

	public Integer getComId() {
		return comId;
	}

	public void setComId(Integer comId) {
		this.comId = comId;
	}

	public PageList getPageList() {
		return pageList;
	}

	public void setUserService(IUserService userService) {
		this.userService = userService;
	}

	public void setCommentService(ICommentService commentService) {
		this.commentService = commentService;
	}

	public void setStoreService(IStoreService storeService) {
		this.storeService = storeService;
	}

	public void setProductInfoService(IProductInfoService productInfoService) {
		this.productInfoService = productInfoService;
	}

	public AdCustomer getUser() {
		return user;
	}

	public void setUser(AdCustomer user) {
		this.user = user;
	}

	public Integer getPId() {
		return PId;
	}

	public void setPId(Integer pId) {
		PId = pId;
	}

	public String getComContent() {
		return comContent;
	}

	public void setComContent(String comContent) {
		this.comContent = comContent;
	}

}
