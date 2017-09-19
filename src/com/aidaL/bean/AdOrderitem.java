package com.aidaL.bean;

/**
 * AdOrderitem entity. @author MyEclipse Persistence Tools
 */

public class AdOrderitem implements java.io.Serializable {

	// Fields

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Integer OId;
	private AdProductInfo adProductInfo;
	private AdOrder adOrder;
	private String OProductName;
	private Double OProductPrice;
	private Integer OAmount;

	// Constructors

	/** default constructor */
	public AdOrderitem() {
	}

	/** minimal constructor */
	public AdOrderitem(Integer OId, AdProductInfo adProductInfo,
			String OProductName, Double OProductPrice) {
		this.OId = OId;
		this.adProductInfo = adProductInfo;
		this.OProductName = OProductName;
		this.OProductPrice = OProductPrice;
	}

	/** full constructor */
	public AdOrderitem(Integer OId, AdProductInfo adProductInfo,
			AdOrder adOrder, String OProductName, Double OProductPrice,
			Integer OAmount) {
		this.OId = OId;
		this.adProductInfo = adProductInfo;
		this.adOrder = adOrder;
		this.OProductName = OProductName;
		this.OProductPrice = OProductPrice;
		this.OAmount = OAmount;
	}

	// Property accessors

	public Integer getOId() {
		return this.OId;
	}

	public void setOId(Integer OId) {
		this.OId = OId;
	}

	public AdProductInfo getAdProductInfo() {
		return this.adProductInfo;
	}

	public void setAdProductInfo(AdProductInfo adProductInfo) {
		this.adProductInfo = adProductInfo;
	}

	public AdOrder getAdOrder() {
		return this.adOrder;
	}

	public void setAdOrder(AdOrder adOrder) {
		this.adOrder = adOrder;
	}

	public String getOProductName() {
		return this.OProductName;
	}

	public void setOProductName(String OProductName) {
		this.OProductName = OProductName;
	}

	public Double getOProductPrice() {
		return this.OProductPrice;
	}

	public void setOProductPrice(Double OProductPrice) {
		this.OProductPrice = OProductPrice;
	}

	public Integer getOAmount() {
		return this.OAmount;
	}

	public void setOAmount(Integer OAmount) {
		this.OAmount = OAmount;
	}

}