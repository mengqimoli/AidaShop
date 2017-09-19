package com.aidaL.bean;

import java.sql.Timestamp;
import java.util.HashSet;
import java.util.Set;

/**
 * AdConsult entity. @author MyEclipse Persistence Tools
 */

public class AdConsult implements java.io.Serializable {

	// Fields

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Integer conId;
	private AdConsulttheme adConsulttheme;
	private AdCustomer adCustomer;
	private AdProductInfo adProductInfo;
	private String conContent;
	private Timestamp conTime;
	private Integer conState;
	private Set<?> adReplies = new HashSet<Object>(0);

	// Constructors

	/** default constructor */
	public AdConsult() {
	}

	/** minimal constructor */
	public AdConsult(Integer conId, AdConsulttheme adConsulttheme,
			AdCustomer adCustomer, AdProductInfo adProductInfo,
			String conContent) {
		this.conId = conId;
		this.adConsulttheme = adConsulttheme;
		this.adCustomer = adCustomer;
		this.adProductInfo = adProductInfo;
		this.conContent = conContent;
	}

	/** full constructor */
	public AdConsult(Integer conId, AdConsulttheme adConsulttheme,
			AdCustomer adCustomer, AdProductInfo adProductInfo,
			String conContent, Timestamp conTime, Integer conState,
			Set<?> adReplies) {
		this.conId = conId;
		this.adConsulttheme = adConsulttheme;
		this.adCustomer = adCustomer;
		this.adProductInfo = adProductInfo;
		this.conContent = conContent;
		this.conTime = conTime;
		this.conState = conState;
		this.adReplies = adReplies;
	}

	// Property accessors

	public Integer getConId() {
		return this.conId;
	}

	public void setConId(Integer conId) {
		this.conId = conId;
	}

	public AdConsulttheme getAdConsulttheme() {
		return this.adConsulttheme;
	}

	public void setAdConsulttheme(AdConsulttheme adConsulttheme) {
		this.adConsulttheme = adConsulttheme;
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

	public String getConContent() {
		return this.conContent;
	}

	public void setConContent(String conContent) {
		this.conContent = conContent;
	}

	public Timestamp getConTime() {
		return this.conTime;
	}

	public void setConTime(Timestamp conTime) {
		this.conTime = conTime;
	}

	public Integer getConState() {
		return this.conState;
	}

	public void setConState(Integer conState) {
		this.conState = conState;
	}

	public Set<?> getAdReplies() {
		return this.adReplies;
	}

	public void setAdReplies(Set<?> adReplies) {
		this.adReplies = adReplies;
	}

}