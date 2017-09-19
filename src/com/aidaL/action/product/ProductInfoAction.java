package com.aidaL.action.product;

import java.io.File;
import java.io.PrintWriter;
import java.sql.Timestamp;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletResponse;

import net.coobird.thumbnailator.Thumbnails;

import org.apache.commons.io.FileUtils;
import org.apache.commons.io.FilenameUtils;
import org.apache.struts2.ServletActionContext;

import com.aidaL.action.CRUDAction;
import com.aidaL.bean.AdCustomer;
import com.aidaL.bean.AdProductInfo;
import com.aidaL.bean.AdProductcategory;
import com.aidaL.bean.AdStore;
import com.aidaL.bean.BrandAD;
import com.aidaL.query.BrandQuery;
import com.aidaL.query.PageList;
import com.aidaL.query.ProductInfoQuery;
import com.aidaL.service.IBrandService;
import com.aidaL.service.IProductCateService;
import com.aidaL.service.IProductInfoService;
import com.aidaL.service.IStoreService;
import com.aidaL.service.IUserService;
import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.interceptor.annotations.InputConfig;

public class ProductInfoAction extends CRUDAction<AdProductInfo> {
	private static final long serialVersionUID = 1L;
	private IProductInfoService productInfoService;
	private IProductCateService productCateService;
	private IBrandService brandService;
	private IStoreService storeService;
	private IUserService userService;
	private AdProductInfo productInfo;
	private AdCustomer user;
	private PageList pageList;// getter
	private ProductInfoQuery baseQuery = new ProductInfoQuery();// getter,setter
	private BrandQuery brandQuery = new BrandQuery();// getter,setter
	private Integer PId;
	// 上传图片
	private File proImg;
	private String proImgFileName;
	private String proImgFileType;

	@Override
	public AdProductInfo getModel() {
		return productInfo;
	}

	private List<BrandAD> list;

	@Override
	protected void list() throws Exception {
		Integer id = (Integer) session.getAttribute("cusId");
		user = userService.get(id);
		putContext("allProductCates", productCateService.getAll());
		putContext("allBrands", brandService.getAll());
		putContext("allStores", storeService.getAll());
		if (user.getUAdmin() == 1) {
			baseQuery.setStId(user.getStore().getStId());
		}
		this.pageList = productInfoService.findByQuery(baseQuery);
	}

	@SuppressWarnings("unchecked")
	@Override
	public String input() throws Exception {
		putContext("allProductCates", productCateService.getAll());
		putContext("allBrands", brandService.getAll());
		putContext("allStores", storeService.getAll());
		Integer id = (Integer) session.getAttribute("cusId");
		user = userService.get(id);
		if (user.getStore() != null) {
			brandQuery.setStId(user.getStore().getStId());
			list = brandService.findByQuery(brandQuery).getRows();
			for (BrandAD brandAD : list) {
				System.out.println(brandAD);
			}
			putContext("allStoreBrands", list);
		}
		return INPUT;
	}

	@Override
	@InputConfig(methodName = Action.INPUT)
	public String save() throws Exception {
		System.out.println("asdfsa....... ");
		Integer id = (Integer) session.getAttribute("cusId");
		user = userService.get(id);
		AdStore store = productInfo.getAdStore();
		BrandAD brand = productInfo.getBrandAD();
		AdProductcategory cate = productInfo.getAdProductcategory();
		if (store != null && store.getStId() == -1) {
			productInfo.setAdStore(null);
		}
		if (brand != null && brand.getBrId() == -1) {
			productInfo.setBrandAD(null);
		}
		if (cate != null && cate.getCgId() == -1) {
			productInfo.setAdProductcategory(null);
		}

		if (proImg != null) {
			System.out.println("proImg... " + proImg);
			// 拿到文件上传要的真实路径
			String realPath = ServletActionContext.getRequest()
					.getServletContext().getRealPath("/upload");
			// 拿到文件的后缀
			String extName = FilenameUtils.getExtension(proImgFileName);
			// 产生文件的随机名称
			String uuidName = UUID.randomUUID().toString();
			// 拼写文件的名称
			// 大图片名称
			String bigImgName = uuidName + "." + extName;
			// 小图片名称
			String smallImgName = uuidName + "_small." + extName;
			// 准备好大图片
			File bigFile = new File(realPath, bigImgName);
			// 将图片保存到项目中
			FileUtils.copyFile(proImg, bigFile);
			productInfo.setPBigPic("/AidaShop/upload/" + bigImgName);
			// 将大图片压缩成小图片
			File smallFile = new File(realPath, smallImgName);
			Thumbnails.of(bigFile).size(100, 80);
			FileUtils.copyFile(proImg, smallFile);
			productInfo.setPSmallPic("/AidaShop/upload/" + smallImgName);
		}

		if (PId == null) {
			if (user.getUAdmin() == 1) {
				productInfo.setAdStore(user.getStore());
			}
			baseQuery.setCurrentPage(Integer.MAX_VALUE);
			productInfo
					.setPCreateTime(new Timestamp(System.currentTimeMillis()));
			productInfoService.save(productInfo);
		} else {
			productInfoService.update(productInfo);
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
			if (PId != null) {
				productInfoService.delete(PId);
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
			if (PId != null) {
				productInfoService.delete(PId);
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
		if (PId != null) {
			productInfo = productInfoService.get(PId);// 回显数据
		}
	}

	@Override
	public void prepareSave() throws Exception {
		System.out.println("jjjj " + PId);
		if (PId != null) {
			productInfo = productInfoService.get(PId);// 保存修改后没有出现在jsp页面的属性不丢失
		} else {
			productInfo = new AdProductInfo();// 新增后的保存
		}
	}

	public void setProductInfoService(IProductInfoService productInfoService) {
		this.productInfoService = productInfoService;
	}

	public void setProductCateService(IProductCateService productCateService) {
		this.productCateService = productCateService;
	}

	public void setBrandService(IBrandService brandService) {
		this.brandService = brandService;
	}

	public void setStoreService(IStoreService storeService) {
		this.storeService = storeService;
	}

	public ProductInfoQuery getBaseQuery() {
		return baseQuery;
	}

	public void setBaseQuery(ProductInfoQuery baseQuery) {
		this.baseQuery = baseQuery;
	}

	public PageList getPageList() {
		return pageList;
	}

	public Integer getPId() {
		return PId;
	}

	public void setPId(Integer pId) {
		PId = pId;
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

	public File getProImg() {
		return proImg;
	}

	public void setProImg(File proImg) {
		this.proImg = proImg;
	}

	public void setProImgFileName(String proImgFileName) {
		this.proImgFileName = proImgFileName;
	}

	public void setProImgFileType(String proImgFileType) {
		this.proImgFileType = proImgFileType;
	}

	public BrandQuery getBrandQuery() {
		return brandQuery;
	}

	public void setBrandQuery(BrandQuery brandQuery) {
		this.brandQuery = brandQuery;
	}

	public List<BrandAD> getList() {
		return list;
	}

	public void setList(List<BrandAD> list) {
		this.list = list;
	}

}
