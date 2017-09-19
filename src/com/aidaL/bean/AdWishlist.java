package com.aidaL.bean;

import java.sql.Timestamp;

/**
 * AdWishlist entity. @author MyEclipse Persistence Tools
 */

public class AdWishlist implements java.io.Serializable {

	// Fields

	/**
	 * 
	 */
	private static final long serialVersionUID = 2630598293193170211L;
	private Integer WId;
	private AdCustomer adCustomer;
	private AdProductInfo adProductInfo;
	private Timestamp WTime;
	private Integer WState;

	// Constructors

	/** default constructor */
	public AdWishlist() {
	}

	/** minimal constructor */
	public AdWishlist(Integer WId, AdCustomer adCustomer,
			AdProductInfo adProductInfo) {
		this.WId = WId;
		this.adCustomer = adCustomer;
		this.adProductInfo = adProductInfo;
	}

	/** full constructor */
	public AdWishlist(Integer WId, AdCustomer adCustomer,
			AdProductInfo adProductInfo, Timestamp WTime, Integer WState) {
		this.WId = WId;
		this.adCustomer = adCustomer;
		this.adProductInfo = adProductInfo;
		this.WTime = WTime;
		this.WState = WState;
	}

	// Property accessors

	public Integer getWId() {
		return this.WId;
	}

	public void setWId(Integer WId) {
		this.WId = WId;
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

	public Timestamp getWTime() {
		return this.WTime;
	}

	public void setWTime(Timestamp WTime) {
		this.WTime = WTime;
	}

	public Integer getWState() {
		return this.WState;
	}

	public void setWState(Integer WState) {
		this.WState = WState;
	}

}