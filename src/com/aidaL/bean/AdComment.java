package com.aidaL.bean;

import java.sql.Timestamp;

/**
 * AdComment entity. @author MyEclipse Persistence Tools
 */

public class AdComment implements java.io.Serializable {
	private static final long serialVersionUID = 1L;
	private Integer comId;// 评论id
	private AdCustomer adCustomer;// 用户多对一
	private AdProductInfo adProductInfo;// 商品多对一
	private AdStore adStore;// 店铺多对一
	private String comContent;// 评论内容
	private Timestamp comTime;// 评论时间
	private Integer comPstate;// 商品购买状态
	private Integer comLove;// 点赞数量
	private Integer comPid;

	/** default constructor */
	public AdComment() {
	}

	public Integer getComId() {
		return this.comId;
	}

	public void setComId(Integer comId) {
		this.comId = comId;
	}

	public AdCustomer getAdCustomer() {
		return this.adCustomer;
	}

	public void setAdCustomer(AdCustomer adCustomer) {
		this.adCustomer = adCustomer;
	}

	public AdProductInfo getAdProductInfo() {
		return this.adProductInfo;
	}

	public void setAdProductInfo(AdProductInfo adProductInfo) {
		this.adProductInfo = adProductInfo;
	}

	public AdStore getAdStore() {
		return adStore;
	}

	public void setAdStore(AdStore adStore) {
		this.adStore = adStore;
	}

	public String getComContent() {
		return this.comContent;
	}

	public void setComContent(String comContent) {
		this.comContent = comContent;
	}

	public Timestamp getComTime() {
		return this.comTime;
	}

	public void setComTime(Timestamp comTime) {
		this.comTime = comTime;
	}

	public Integer getComPstate() {
		return this.comPstate;
	}

	public void setComPstate(Integer comPstate) {
		this.comPstate = comPstate;
	}

	public Integer getComLove() {
		return this.comLove;
	}

	public void setComLove(Integer comLove) {
		this.comLove = comLove;
	}

	public Integer getComPid() {
		return this.comPid;
	}

	public void setComPid(Integer comPid) {
		this.comPid = comPid;
	}

}