package com.aidaL.bean;

import java.util.Date;
import java.util.HashSet;
import java.util.Set;

@SuppressWarnings("serial")
public class AdStore implements java.io.Serializable {

	// Fields
	private Integer stId;
	private String stName;
	private String stTag;// 店铺标签
	private Date stCreateTime;// 创建时间
	private Date stEndTime;// 到期时间
	private Double stServiceManner;// 服务态度
	private Double stServiceQuality;// 服务质量
	private Double stSpeed;// 发货速度
	private Integer stLevel;// 店铺等级
	private Integer stState;// 店铺状态
	private String st_IDCard_front;// 身份证前
	private String st_IDCard_back;// 身份证后
	private Double stFavorablerate;// 好评率
	private Set<BrandAD> brandADs = new HashSet<BrandAD>();

	public AdStore() {
	}

	public Integer getStId() {
		return this.stId;
	}

	public void setStId(Integer stId) {
		this.stId = stId;
	}

	public String getStName() {
		return this.stName;
	}

	public void setStName(String stName) {
		this.stName = stName;
	}

	public String getStTag() {
		return this.stTag;
	}

	public void setStTag(String stTag) {
		this.stTag = stTag;
	}

	public Date getStCreateTime() {
		return this.stCreateTime;
	}

	public void setStCreateTime(Date stCreateTime) {
		this.stCreateTime = stCreateTime;
	}

	public Date getStEndTime() {
		return this.stEndTime;
	}

	public void setStEndTime(Date stEndTime) {
		this.stEndTime = stEndTime;
	}

	public Double getStServiceManner() {
		return this.stServiceManner;
	}

	public void setStServiceManner(Double stServiceManner) {
		this.stServiceManner = stServiceManner;
	}

	public Double getStServiceQuality() {
		return this.stServiceQuality;
	}

	public void setStServiceQuality(Double stServiceQuality) {
		this.stServiceQuality = stServiceQuality;
	}

	public Double getStSpeed() {
		return this.stSpeed;
	}

	public void setStSpeed(Double stSpeed) {
		this.stSpeed = stSpeed;
	}

	public Integer getStLevel() {
		return this.stLevel;
	}

	public void setStLevel(Integer stLevel) {
		this.stLevel = stLevel;
	}

	public Integer getStState() {
		return this.stState;
	}

	public void setStState(Integer stState) {
		this.stState = stState;
	}

	public Double getStFavorablerate() {
		return this.stFavorablerate;
	}

	public void setStFavorablerate(Double stFavorablerate) {
		this.stFavorablerate = stFavorablerate;
	}

	public Set<BrandAD> getBrandADs() {
		return brandADs;
	}

	public void setBrandADs(Set<BrandAD> brandADs) {
		this.brandADs = brandADs;
	}

	public String getSt_IDCard_front() {
		return st_IDCard_front;
	}

	public void setSt_IDCard_front(String st_IDCard_front) {
		this.st_IDCard_front = st_IDCard_front;
	}

	public String getSt_IDCard_back() {
		return st_IDCard_back;
	}

	public void setSt_IDCard_back(String st_IDCard_back) {
		this.st_IDCard_back = st_IDCard_back;
	}

	@Override
	public String toString() {
		return "AdStore [stId=" + stId + ", stName=" + stName + ", stTag="
				+ stTag + ", stCreateTime=" + stCreateTime + ", stEndTime="
				+ stEndTime + ", stServiceManner=" + stServiceManner
				+ ", stServiceQuality=" + stServiceQuality + ", stSpeed="
				+ stSpeed + ", stLevel=" + stLevel + ", stState=" + stState
				+ ", st_IDCard_front=" + st_IDCard_front + ", st_IDCard_back="
				+ st_IDCard_back + ", stFavorablerate=" + stFavorablerate + "]";
	}

}