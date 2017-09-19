package com.aidaL.bean;

import java.util.HashSet;
import java.util.Set;

/**
 * AdUploadfile entity. @author MyEclipse Persistence Tools
 */

public class AdUploadfile implements java.io.Serializable {

	// Fields

	/**
	 * 
	 */
	private static final long serialVersionUID = 476808047570248242L;
	private Integer ufId;
	private String ufPath;
	@SuppressWarnings("rawtypes")
	private Set adProductInfos = new HashSet(0);

	// Constructors

	/** default constructor */
	public AdUploadfile() {
	}

	/** minimal constructor */
	public AdUploadfile(Integer ufId, String ufPath) {
		this.ufId = ufId;
		this.ufPath = ufPath;
	}

	/** full constructor */
	@SuppressWarnings("rawtypes")
	public AdUploadfile(Integer ufId, String ufPath, Set adProductInfos) {
		this.ufId = ufId;
		this.ufPath = ufPath;
		this.adProductInfos = adProductInfos;
	}

	// Property accessors

	public Integer getUfId() {
		return this.ufId;
	}

	public void setUfId(Integer ufId) {
		this.ufId = ufId;
	}

	public String getUfPath() {
		return this.ufPath;
	}

	public void setUfPath(String ufPath) {
		this.ufPath = ufPath;
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