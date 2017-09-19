package com.aidaL.bean;

import java.sql.Timestamp;
import java.util.HashSet;
import java.util.Set;

/**
 * AdOrder entity. @author MyEclipse Persistence Tools
 */

public class AdOrder implements java.io.Serializable {

	// Fields

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Integer coId;
	private AdCustomer adCustomer;
	private String coName;
	private String coAddress;
	private String coMobile;
	private Double coTotalPrice;
	private Double coDiscountPrice;
	private Double coFreightCharge;
	private Double coRealPrice;
	private Timestamp coCreateTime;
	private String coPaymentWay;
	private String coOrderState;
	@SuppressWarnings("rawtypes")
	private Set adOrderitems = new HashSet(0);

	// Constructors

	/** default constructor */
	public AdOrder() {
	}

	/** minimal constructor */
	public AdOrder(Integer coId, String coAddress, String coMobile) {
		this.coId = coId;
		this.coAddress = coAddress;
		this.coMobile = coMobile;
	}

	/** full constructor */
	@SuppressWarnings("rawtypes")
	public AdOrder(Integer coId, AdCustomer adCustomer, String coName,
			String coAddress, String coMobile, Double coTotalPrice,
			Double coDiscountPrice, Double coFreightCharge, Double coRealPrice,
			Timestamp coCreateTime, String coPaymentWay, String coOrderState,
			Set adOrderitems) {
		this.coId = coId;
		this.adCustomer = adCustomer;
		this.coName = coName;
		this.coAddress = coAddress;
		this.coMobile = coMobile;
		this.coTotalPrice = coTotalPrice;
		this.coDiscountPrice = coDiscountPrice;
		this.coFreightCharge = coFreightCharge;
		this.coRealPrice = coRealPrice;
		this.coCreateTime = coCreateTime;
		this.coPaymentWay = coPaymentWay;
		this.coOrderState = coOrderState;
		this.adOrderitems = adOrderitems;
	}

	// Property accessors

	public Integer getCoId() {
		return this.coId;
	}

	public void setCoId(Integer coId) {
		this.coId = coId;
	}

	public AdCustomer getAdCustomer() {
		return this.adCustomer;
	}

	public void setAdCustomer(AdCustomer adCustomer) {
		this.adCustomer = adCustomer;
	}

	public String getCoName() {
		return this.coName;
	}

	public void setCoName(String coName) {
		this.coName = coName;
	}

	public String getCoAddress() {
		return this.coAddress;
	}

	public void setCoAddress(String coAddress) {
		this.coAddress = coAddress;
	}

	public String getCoMobile() {
		return this.coMobile;
	}

	public void setCoMobile(String coMobile) {
		this.coMobile = coMobile;
	}

	public Double getCoTotalPrice() {
		return this.coTotalPrice;
	}

	public void setCoTotalPrice(Double coTotalPrice) {
		this.coTotalPrice = coTotalPrice;
	}

	public Double getCoDiscountPrice() {
		return this.coDiscountPrice;
	}

	public void setCoDiscountPrice(Double coDiscountPrice) {
		this.coDiscountPrice = coDiscountPrice;
	}

	public Double getCoFreightCharge() {
		return this.coFreightCharge;
	}

	public void setCoFreightCharge(Double coFreightCharge) {
		this.coFreightCharge = coFreightCharge;
	}

	public Double getCoRealPrice() {
		return this.coRealPrice;
	}

	public void setCoRealPrice(Double coRealPrice) {
		this.coRealPrice = coRealPrice;
	}

	public Timestamp getCoCreateTime() {
		return this.coCreateTime;
	}

	public void setCoCreateTime(Timestamp coCreateTime) {
		this.coCreateTime = coCreateTime;
	}

	public String getCoPaymentWay() {
		return this.coPaymentWay;
	}

	public void setCoPaymentWay(String coPaymentWay) {
		this.coPaymentWay = coPaymentWay;
	}

	public String getCoOrderState() {
		return this.coOrderState;
	}

	public void setCoOrderState(String coOrderState) {
		this.coOrderState = coOrderState;
	}

	@SuppressWarnings("rawtypes")
	public Set getAdOrderitems() {
		return this.adOrderitems;
	}

	@SuppressWarnings("rawtypes")
	public void setAdOrderitems(Set adOrderitems) {
		this.adOrderitems = adOrderitems;
	}

}