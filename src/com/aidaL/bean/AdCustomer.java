package com.aidaL.bean;

import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 * AdCustomer entity. @author MyEclipse Persistence Tools
 */

@SuppressWarnings("serial")
public class AdCustomer implements java.io.Serializable {

	// Fields
	private AdStore store;// 多对一.多个商家管理员对应一个店铺
	private Integer UId;
	private String UName;
	private String UNickName;
	private String UPassword;
	private String URelaname;
	private String USex;
	private Date UBirthday;
	private String UAddress;
	private String UCardId;
	private String UEmail;
	private String UMobile;
	private Integer UStylingDesigner;
	private Integer UState;
	private Integer UAdmin;
	private String UActivecode;
	private Set<?> adWishlists = new HashSet<Object>(0);
	//private Set<?> adComments = new HashSet<Object>(0);
	private Set<?> adConsults = new HashSet<Object>(0);
	private Set<?> adOrders = new HashSet<Object>(0);

	// Constructors

	/** default constructor */
	public AdCustomer() {
	}

	/** minimal constructor */
	public AdCustomer(Integer UId, String UName, String UPassword,
			Integer UState) {
		this.UId = UId;
		this.UName = UName;
		this.UPassword = UPassword;
		this.UState = UState;
	}

	// Property accessors

	public Integer getUId() {
		return this.UId;
	}

	public void setUId(Integer UId) {
		this.UId = UId;
	}

	public String getUName() {
		return this.UName;
	}

	public void setUName(String UName) {
		this.UName = UName;
	}

	public String getUNickName() {
		return this.UNickName;
	}

	public void setUNickName(String UNickName) {
		this.UNickName = UNickName;
	}

	public String getUPassword() {
		return this.UPassword;
	}

	public void setUPassword(String UPassword) {
		this.UPassword = UPassword;
	}

	public String getURelaname() {
		return this.URelaname;
	}

	public void setURelaname(String URelaname) {
		this.URelaname = URelaname;
	}

	public String getUSex() {
		return this.USex;
	}

	public void setUSex(String USex) {
		this.USex = USex;
	}

	public Date getUBirthday() {
		return this.UBirthday;
	}

	public void setUBirthday(Date UBirthday) {
		this.UBirthday = UBirthday;
	}

	public String getUAddress() {
		return this.UAddress;
	}

	public void setUAddress(String UAddress) {
		this.UAddress = UAddress;
	}

	public String getUCardId() {
		return this.UCardId;
	}

	public void setUCardId(String UCardId) {
		this.UCardId = UCardId;
	}

	public String getUEmail() {
		return this.UEmail;
	}

	public void setUEmail(String UEmail) {
		this.UEmail = UEmail;
	}

	public String getUMobile() {
		return this.UMobile;
	}

	public void setUMobile(String UMobile) {
		this.UMobile = UMobile;
	}

	public Integer getUStylingDesigner() {
		return this.UStylingDesigner;
	}

	public void setUStylingDesigner(Integer UStylingDesigner) {
		this.UStylingDesigner = UStylingDesigner;
	}

	public Integer getUState() {
		return this.UState;
	}

	public void setUState(Integer UState) {
		this.UState = UState;
	}

	public Integer getUAdmin() {
		return this.UAdmin;
	}

	public void setUAdmin(Integer UAdmin) {
		this.UAdmin = UAdmin;
	}

	public String getUActivecode() {
		return this.UActivecode;
	}

	public void setUActivecode(String UActivecode) {
		this.UActivecode = UActivecode;
	}

	public Set<?> getAdWishlists() {
		return this.adWishlists;
	}

	public void setAdWishlists(Set<?> adWishlists) {
		this.adWishlists = adWishlists;
	}

//	public Set<?> getAdComments() {
//		return this.adComments;
//	}
//
//	public void setAdComments(Set<?> adComments) {
//		this.adComments = adComments;
//	}

	public Set<?> getAdConsults() {
		return this.adConsults;
	}

	public void setAdConsults(Set<?> adConsults) {
		this.adConsults = adConsults;
	}

	public Set<?> getAdOrders() {
		return this.adOrders;
	}

	public void setAdOrders(Set<?> adOrders) {
		this.adOrders = adOrders;
	}

	public AdStore getStore() {
		return store;
	}

	public void setStore(AdStore store) {
		this.store = store;
	}

	@Override
	public String toString() {
		return "AdCustomer [store=" + store + ", UId=" + UId + ", UName="
				+ UName + ", UNickName=" + UNickName + ", UPassword="
				+ UPassword + ", URelaname=" + URelaname + ", USex=" + USex
				+ ", UBirthday=" + UBirthday + ", UAddress=" + UAddress
				+ ", UCardId=" + UCardId + ", UEmail=" + UEmail + ", UMobile="
				+ UMobile + ", UStylingDesigner=" + UStylingDesigner
				+ ", UState=" + UState + ", UAdmin=" + UAdmin
				+ ", UActivecode=" + UActivecode + ", adWishlists="
				+ adWishlists + ", adConsults="
				+ adConsults + ", adOrders=" + adOrders + "]";
	}

}