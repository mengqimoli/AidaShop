package com.aidaL.bean;

import java.sql.Timestamp;
import java.util.HashSet;
import java.util.Set;

/**
 * AdProductInfo entity. @author MyEclipse Persistence Tools
 */

public class AdProductInfo implements java.io.Serializable {
	private static final long serialVersionUID = 1L;
	private Integer PId;
	private AdUploadfile adUploadfile;
	private AdProductcategory adProductcategory;
	private BrandAD brandAD;
	private AdStore adStore;// 所属店铺
	private String PName;
	private String PDescription;
	private Timestamp PCreateTime;
	private Double PBaseprice;// 进货价格
	private Double PMarketprice;// 市场价格
	private Double PSellprice;// 销售价格
	private String PSexrequest;
	private String PPlace;
	private Integer PCount;
	private Integer PCommend;// 推荐等级
	private Integer PState;// 状态(上架/下架)
	private Integer PClickcount;
	private Integer PSellCount;
	private String PSmallPic;// 小图片
	private String PBigPic;// 大图片
	@SuppressWarnings("rawtypes")
	private Set adOrderitems = new HashSet(0);
	@SuppressWarnings("rawtypes")
	private Set adConsults = new HashSet(0);
	@SuppressWarnings("rawtypes")
	private Set commentADs = new HashSet(0);
	@SuppressWarnings("rawtypes")
	private Set adWishlists = new HashSet(0);

	/** default constructor */
	public AdProductInfo() {
	}

	/** minimal constructor */
	public AdProductInfo(Integer PId, String PName) {
		this.PId = PId;
		this.PName = PName;
	}

	/** full constructor */
	@SuppressWarnings("rawtypes")
	public AdProductInfo(Integer PId, AdUploadfile adUploadfile,
			AdProductcategory adProductcategory, BrandAD brandAD, String PName,
			String PDescription, Timestamp PCreateTime, Double PBaseprice,
			Double PMarketprice, Double PSellprice, String PSexrequest,
			String PPlace, Integer PCount, Integer PCommend,
			Integer PClickcount, Integer PSellCount, Set adOrderitems,
			Set adConsults, Set commentADs, Set adWishlists) {
		this.PId = PId;
		this.adUploadfile = adUploadfile;
		this.adProductcategory = adProductcategory;
		this.brandAD = brandAD;
		this.PName = PName;
		this.PDescription = PDescription;
		this.PCreateTime = PCreateTime;
		this.PBaseprice = PBaseprice;
		this.PMarketprice = PMarketprice;
		this.PSellprice = PSellprice;
		this.PSexrequest = PSexrequest;
		this.PPlace = PPlace;
		this.PCount = PCount;
		this.PCommend = PCommend;
		this.PClickcount = PClickcount;
		this.PSellCount = PSellCount;
		this.adOrderitems = adOrderitems;
		this.adConsults = adConsults;
		this.commentADs = commentADs;
		this.adWishlists = adWishlists;
	}

	public Integer getPId() {
		return PId;
	}

	public void setPId(Integer pId) {
		PId = pId;
	}

	public AdUploadfile getAdUploadfile() {
		return adUploadfile;
	}

	public void setAdUploadfile(AdUploadfile adUploadfile) {
		this.adUploadfile = adUploadfile;
	}

	public AdProductcategory getAdProductcategory() {
		return adProductcategory;
	}

	public void setAdProductcategory(AdProductcategory adProductcategory) {
		this.adProductcategory = adProductcategory;
	}

	public BrandAD getBrandAD() {
		return brandAD;
	}

	public void setBrandAD(BrandAD brandAD) {
		this.brandAD = brandAD;
	}

	public AdStore getAdStore() {
		return adStore;
	}

	public void setAdStore(AdStore adStore) {
		this.adStore = adStore;
	}

	public String getPName() {
		return PName;
	}

	public void setPName(String pName) {
		PName = pName;
	}

	public String getPDescription() {
		return PDescription;
	}

	public void setPDescription(String pDescription) {
		PDescription = pDescription;
	}

	public Timestamp getPCreateTime() {
		return PCreateTime;
	}

	public void setPCreateTime(Timestamp pCreateTime) {
		PCreateTime = pCreateTime;
	}

	public Double getPBaseprice() {
		return PBaseprice;
	}

	public void setPBaseprice(Double pBaseprice) {
		PBaseprice = pBaseprice;
	}

	public Double getPMarketprice() {
		return PMarketprice;
	}

	public void setPMarketprice(Double pMarketprice) {
		PMarketprice = pMarketprice;
	}

	public Double getPSellprice() {
		return PSellprice;
	}

	public void setPSellprice(Double pSellprice) {
		PSellprice = pSellprice;
	}

	public String getPSexrequest() {
		return PSexrequest;
	}

	public void setPSexrequest(String pSexrequest) {
		PSexrequest = pSexrequest;
	}

	public String getPPlace() {
		return PPlace;
	}

	public void setPPlace(String pPlace) {
		PPlace = pPlace;
	}

	public Integer getPCount() {
		return PCount;
	}

	public void setPCount(Integer pCount) {
		PCount = pCount;
	}

	public Integer getPCommend() {
		return PCommend;
	}

	public void setPCommend(Integer pCommend) {
		PCommend = pCommend;
	}

	public Integer getPState() {
		return PState;
	}

	public void setPState(Integer pState) {
		PState = pState;
	}

	public Integer getPClickcount() {
		return PClickcount;
	}

	public void setPClickcount(Integer pClickcount) {
		PClickcount = pClickcount;
	}

	public Integer getPSellCount() {
		return PSellCount;
	}

	public void setPSellCount(Integer pSellCount) {
		PSellCount = pSellCount;
	}

	public Set getAdOrderitems() {
		return adOrderitems;
	}

	public void setAdOrderitems(Set adOrderitems) {
		this.adOrderitems = adOrderitems;
	}

	public Set getAdConsults() {
		return adConsults;
	}

	public void setAdConsults(Set adConsults) {
		this.adConsults = adConsults;
	}

	public Set getCommentADs() {
		return commentADs;
	}

	public void setCommentADs(Set commentADs) {
		this.commentADs = commentADs;
	}

	public Set getAdWishlists() {
		return adWishlists;
	}

	public void setAdWishlists(Set adWishlists) {
		this.adWishlists = adWishlists;
	}

	public String getPSmallPic() {
		return PSmallPic;
	}

	public void setPSmallPic(String pSmallPic) {
		PSmallPic = pSmallPic;
	}

	public String getPBigPic() {
		return PBigPic;
	}

	public void setPBigPic(String pBigPic) {
		PBigPic = pBigPic;
	}

}