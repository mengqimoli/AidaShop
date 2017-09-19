package com.aidaL.bean;

import java.util.HashSet;
import java.util.Set;

/**
 * AdProductcategory entity. @author MyEclipse Persistence Tools
 */

public class AdProductcategory implements java.io.Serializable {

	// Fields

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Integer cgId;
	private String cgName;
	private Integer cgLevel;
	private Integer cgPid;
	@SuppressWarnings("rawtypes")
	private Set adConsultthemes = new HashSet(0);
	@SuppressWarnings("rawtypes")
	private Set adProductInfos = new HashSet(0);

	// Constructors

	/** default constructor */
	public AdProductcategory() {
	}

	/** minimal constructor */
	public AdProductcategory(Integer cgId, String cgName) {
		this.cgId = cgId;
		this.cgName = cgName;
	}

	/** full constructor */
	@SuppressWarnings("rawtypes")
	public AdProductcategory(Integer cgId, String cgName, Integer cgLevel,
			Integer cgPid, Set adConsultthemes, Set adProductInfos) {
		this.cgId = cgId;
		this.cgName = cgName;
		this.cgLevel = cgLevel;
		this.cgPid = cgPid;
		this.adConsultthemes = adConsultthemes;
		this.adProductInfos = adProductInfos;
	}

	// Property accessors

	public Integer getCgId() {
		return this.cgId;
	}

	public void setCgId(Integer cgId) {
		this.cgId = cgId;
	}

	public String getCgName() {
		return this.cgName;
	}

	public void setCgName(String cgName) {
		this.cgName = cgName;
	}

	public Integer getCgLevel() {
		return this.cgLevel;
	}

	public void setCgLevel(Integer cgLevel) {
		this.cgLevel = cgLevel;
	}

	public Integer getCgPid() {
		return this.cgPid;
	}

	public void setCgPid(Integer cgPid) {
		this.cgPid = cgPid;
	}

	@SuppressWarnings("rawtypes")
	public Set getAdConsultthemes() {
		return this.adConsultthemes;
	}

	@SuppressWarnings("rawtypes")
	public void setAdConsultthemes(Set adConsultthemes) {
		this.adConsultthemes = adConsultthemes;
	}

	@SuppressWarnings("rawtypes")
	public Set getAdProductInfos() {
		return this.adProductInfos;
	}

	@SuppressWarnings("rawtypes")
	public void setAdProductInfos(Set adProductInfos) {
		this.adProductInfos = adProductInfos;
	}

}