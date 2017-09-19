package com.aidaL.bean;

/**
 * AdStoreAuth entity. @author MyEclipse Persistence Tools
 */

@SuppressWarnings("serial")
public class AdStoreAuth implements java.io.Serializable {

	// Fields

	private Integer saId;
	private Integer UId;
	private String saIdcardFront;
	private String saIdcardBack;
	private String saName;
	private String saTag;
	private Integer saStatu;

	// Constructors

	/** default constructor */
	public AdStoreAuth() {
	}

	/** minimal constructor */
	public AdStoreAuth(Integer saId, Integer UId, String saIdcardFront,
			String saIdcardBack, Integer saStatu) {
		this.saId = saId;
		this.UId = UId;
		this.saIdcardFront = saIdcardFront;
		this.saIdcardBack = saIdcardBack;
		this.saStatu = saStatu;
	}

	/** full constructor */
	public AdStoreAuth(Integer saId, Integer UId, String saIdcardFront,
			String saIdcardBack, String saName, String saTag, Integer saStatu) {
		this.saId = saId;
		this.UId = UId;
		this.saIdcardFront = saIdcardFront;
		this.saIdcardBack = saIdcardBack;
		this.saName = saName;
		this.saTag = saTag;
		this.saStatu = saStatu;
	}

	// Property accessors

	public Integer getSaId() {
		return this.saId;
	}

	public void setSaId(Integer saId) {
		this.saId = saId;
	}

	public Integer getUId() {
		return this.UId;
	}

	public void setUId(Integer UId) {
		this.UId = UId;
	}

	public String getSaIdcardFront() {
		return this.saIdcardFront;
	}

	public void setSaIdcardFront(String saIdcardFront) {
		this.saIdcardFront = saIdcardFront;
	}

	public String getSaIdcardBack() {
		return this.saIdcardBack;
	}

	public void setSaIdcardBack(String saIdcardBack) {
		this.saIdcardBack = saIdcardBack;
	}

	public String getSaName() {
		return this.saName;
	}

	public void setSaName(String saName) {
		this.saName = saName;
	}

	public String getSaTag() {
		return this.saTag;
	}

	public void setSaTag(String saTag) {
		this.saTag = saTag;
	}

	public Integer getSaStatu() {
		return this.saStatu;
	}

	public void setSaStatu(Integer saStatu) {
		this.saStatu = saStatu;
	}

	@Override
	public String toString() {
		return "AdStoreAuth [saId=" + saId + ", UId=" + UId
				+ ", saIdcardFront=" + saIdcardFront + ", saIdcardBack="
				+ saIdcardBack + ", saName=" + saName + ", saTag=" + saTag
				+ ", saStatu=" + saStatu + "]";
	}

}