package com.aidaL.bean;

import java.util.HashSet;
import java.util.Set;

/**
 * AdConsulttheme entity. @author MyEclipse Persistence Tools
 */

public class AdConsulttheme implements java.io.Serializable {

	// Fields

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Integer ctThemeid;
	private AdProductcategory adProductcategory;
	private String ctName;
	private Set<?> adConsults = new HashSet<Object>(0);

	// Constructors

	/** default constructor */
	public AdConsulttheme() {
	}

	/** minimal constructor */
	public AdConsulttheme(Integer ctThemeid, String ctName) {
		this.ctThemeid = ctThemeid;
		this.ctName = ctName;
	}

	/** full constructor */
	public AdConsulttheme(Integer ctThemeid,
			AdProductcategory adProductcategory, String ctName, Set<?> adConsults) {
		this.ctThemeid = ctThemeid;
		this.adProductcategory = adProductcategory;
		this.ctName = ctName;
		this.adConsults = adConsults;
	}

	// Property accessors

	public Integer getCtThemeid() {
		return this.ctThemeid;
	}

	public void setCtThemeid(Integer ctThemeid) {
		this.ctThemeid = ctThemeid;
	}

	public AdProductcategory getAdProductcategory() {
		return this.adProductcategory;
	}

	public void setAdProductcategory(AdProductcategory adProductcategory) {
		this.adProductcategory = adProductcategory;
	}

	public String getCtName() {
		return this.ctName;
	}

	public void setCtName(String ctName) {
		this.ctName = ctName;
	}

	public Set<?> getAdConsults() {
		return this.adConsults;
	}

	public void setAdConsults(Set<?> adConsults) {
		this.adConsults = adConsults;
	}

}