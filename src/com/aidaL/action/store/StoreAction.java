package com.aidaL.action.store;

import java.io.File;
import java.io.PrintWriter;
import java.util.Date;
import java.util.UUID;

import javax.servlet.http.HttpServletResponse;

import net.coobird.thumbnailator.Thumbnails;

import org.apache.commons.io.FileUtils;
import org.apache.commons.io.FilenameUtils;
import org.apache.struts2.ServletActionContext;

import com.aidaL.action.CRUDAction;
import com.aidaL.bean.AdCustomer;
import com.aidaL.bean.AdStore;
import com.aidaL.db.TimeIPDB;
import com.aidaL.query.PageList;
import com.aidaL.query.StoreQuery;
import com.aidaL.service.IBrandService;
import com.aidaL.service.IStoreService;
import com.aidaL.service.IUserService;

public class StoreAction extends CRUDAction<AdStore> {
	private IUserService userService;
	private IStoreService storeService;
	private IBrandService brandService;
	private AdStore store;
	private AdStore storeapply;
	private PageList pageList;// getter
	private StoreQuery baseQuery = new StoreQuery();// getter,setter
	private AdCustomer user;
	private Integer stId;

	@Override
	public AdStore getModel() {
		return store;
	}

	@Override
	protected void list() throws Exception {
		this.pageList = storeService.findByQuery(baseQuery);
	}

	public String applylist() throws Exception {
		baseQuery.setStState(1);
		this.pageList = storeService.findByQuery(baseQuery);
		return "applylist";
	}

	public String applyinput() throws Exception {
		if (stId != null) {
			storeapply = storeService.get(stId);// 回显数据
		}
		return "applyinput";
	}

	private String sftg;

	public String getSftg() {
		return sftg;
	}

	public void setSftg(String sftg) {
		this.sftg = sftg;
	}

	public String checkapply() throws Exception {
		System.out.println("sdaf..." + sftg);
		System.out.println("storeapply..." + stId);
		if (stId != null) {
			store = storeService.get(stId);
			Integer id = store.getStId();
			AdCustomer user = userService.findByStore(store);
			System.out.println(user);
			System.out.println(store);
			if ("是".equals(sftg)) {
				store.setStState(2);
				user.setUAdmin(1);
			} else if ("否".equals(sftg)) {
				store.setStState(0);
			}
			storeService.update(store);
			userService.update(user);
		}
		return SUCCESS;
	}

	@Override
	public String input() throws Exception {
		System.out.println(store);
		return INPUT;
	}

	@Override
	public String save() throws Exception {
		if (stId == null) {
			baseQuery.setCurrentPage(Integer.MAX_VALUE);
			storeService.save(store);
		} else {
			storeService.update(store);
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
			if (stId != null) {
				storeService.delete(stId);
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
			if (stId != null) {
				storeService.delete(stId);
				out.print("{\"success\":true,\"msg\":\"删除成功\"}");
			} else {
				out.print("{\"success\":false,\"msg\":\"删除失败：没有对应的数据\"}");
			}
		} catch (Exception e) {
			e.printStackTrace();
			out.print("{\"success\":false,\"msg\":\"无法删除\"}");
		}
		return NONE;
	}

	@Override
	public void prepareInput() throws Exception {
		if (stId != null) {
			store = storeService.get(stId);// 回显数据
		}
	}

	@Override
	public void prepareSave() throws Exception {
		if (stId != null) {
			store = storeService.get(stId);// 保存修改后没有出现在jsp页面的属性不丢失
		} else {
			store = new AdStore();// 新增后的保存
		}
	}

	public StoreQuery getBaseQuery() {
		return baseQuery;
	}

	public void setBaseQuery(StoreQuery baseQuery) {
		this.baseQuery = baseQuery;
	}

	public AdCustomer getUser() {
		return user;
	}

	public void setUser(AdCustomer user) {
		this.user = user;
	}

	public Integer getStId() {
		return stId;
	}

	public void setStId(Integer stId) {
		this.stId = stId;
	}

	public PageList getPageList() {
		return pageList;
	}

	public void setUserService(IUserService userService) {
		this.userService = userService;
	}

	public void setStoreService(IStoreService storeService) {
		this.storeService = storeService;
	}

	public void setBrandService(IBrandService brandService) {
		this.brandService = brandService;
	}

	public String getStName() {
		return stName;
	}

	public void setStName(String stName) {
		this.stName = stName;
	}

	public String getStTag() {
		return stTag;
	}

	public void setStTag(String stTag) {
		this.stTag = stTag;
	}

	public File getIDCardfrontImg() {
		return IDCardfrontImg;
	}

	public void setIDCardfrontImg(File iDCardfrontImg) {
		IDCardfrontImg = iDCardfrontImg;
	}


	public String getIDCardfrontImgFileName() {
		return IDCardfrontImgFileName;
	}

	public void setIDCardfrontImgFileName(String iDCardfrontImgFileName) {
		IDCardfrontImgFileName = iDCardfrontImgFileName;
	}

	public String getIDCardbackImgFileName() {
		return IDCardbackImgFileName;
	}

	public void setIDCardbackImgFileName(String iDCardbackImgFileName) {
		IDCardbackImgFileName = iDCardbackImgFileName;
	}

	public File getIDCardbackImg() {
		return IDCardbackImg;
	}

	public void setIDCardbackImg(File iDCardbackImg) {
		IDCardbackImg = iDCardbackImg;
	}


	public AdStore getStoreapply() {
		return storeapply;
	}

	public void setStoreapply(AdStore storeapply) {
		this.storeapply = storeapply;
	}

	// 店铺申请
	private String stName;
	private String stTag;
	private File IDCardfrontImg;
	private String IDCardfrontImgFileName;
	private File IDCardbackImg;
	private String IDCardbackImgFileName;

	public String apply() throws Exception {
		System.out.println(stName);
		System.out.println(stTag);
		AdStore store = new AdStore();

		if (IDCardfrontImg != null) {
			System.out.println("proImg... " + IDCardfrontImg);
			// 拿到文件上传要的真实路径
			String realPath = ServletActionContext.getRequest()
					.getServletContext().getRealPath("/upload");
			// 拿到文件的后缀
			String extName = FilenameUtils.getExtension(IDCardfrontImgFileName);
			// 产生文件的随机名称
			String uuidName = UUID.randomUUID().toString();
			// 拼写文件的名称
			// 大图片名称
			String bigImgName = uuidName + "." + extName;
			// 准备好大图片
			File bigFile = new File(realPath, bigImgName);
			// 将图片保存到项目中
			FileUtils.copyFile(IDCardfrontImg, bigFile);
			System.out.println("bigImgName........."+bigImgName);
			store.setSt_IDCard_front("/AidaShop/upload/" + bigImgName);
		}
		if (IDCardbackImg != null) {
			System.out.println("proImg... " + IDCardbackImg);
			// 拿到文件上传要的真实路径
			String realPath = ServletActionContext.getRequest()
					.getServletContext().getRealPath("/upload");
			// 拿到文件的后缀
			String extName = FilenameUtils.getExtension(IDCardbackImgFileName);
			// 产生文件的随机名称
			String uuidName = UUID.randomUUID().toString();
			// 拼写文件的名称
			// 大图片名称
			String bigImgName = uuidName + "." + extName;
			// 准备好大图片
			File bigFile = new File(realPath, bigImgName);
			// 将图片保存到项目中
			FileUtils.copyFile(IDCardbackImg, bigFile);
			System.out.println("bigImgName........."+bigImgName);
			store.setSt_IDCard_back("/AidaShop/upload/" + bigImgName);
		}
		store.setStName(stName);
		store.setStTag(stTag);
		store.setStServiceManner(0.0);
		store.setStServiceQuality(0.0);
		store.setStSpeed(0.0);
		store.setStFavorablerate(0.00);
		store.setStLevel(0);
		store.setStState(1);
		store.setStCreateTime(new Date());
		TimeIPDB timeIPDB = new TimeIPDB();
		store.setStEndTime(timeIPDB.stringToDate(timeIPDB.getAfterMonth(60))); // 设置结束时间为当前时间后5年
		storeService.save(store);
		// 获取用户id
		Integer id = (Integer) session.getAttribute("cusId");
		user = userService.get(id);
		user.setStore(store);
		userService.update(user);
		return "apply";
	}

	public String grperson() throws Exception {
		Integer id = (Integer) session.getAttribute("cusId");
		user = userService.get(id);
		return "grperson";
	}

	public String sqvi() throws Exception {
		Integer id = (Integer) session.getAttribute("cusId");
		user = userService.get(id);
		return "sqvi";
	}

}
