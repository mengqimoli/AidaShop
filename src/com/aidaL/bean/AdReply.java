package com.aidaL.bean;

import java.sql.Timestamp;

/**
 * AdReply entity. @author MyEclipse Persistence Tools
 */

public class AdReply implements java.io.Serializable {

	// Fields

	/**
	 * 
	 */
	private static final long serialVersionUID = 6899801714376051944L;
	private Integer reId;
	private AdConsult adConsult;
	private String reContent;
	private Timestamp reTime;
	private Integer reState;

	// Constructors

	/** default constructor */
	public AdReply() {
	}

	/** minimal constructor */
	public AdReply(Integer reId) {
		this.reId = reId;
	}

	/** full constructor */
	public AdReply(Integer reId, AdConsult adConsult, String reContent,
			Timestamp reTime, Integer reState) {
		this.reId = reId;
		this.adConsult = adConsult;
		this.reContent = reContent;
		this.reTime = reTime;
		this.reState = reState;
	}

	// Property accessors

	public Integer getReId() {
		return this.reId;
	}

	public void setReId(Integer reId) {
		this.reId = reId;
	}

	public AdConsult getAdConsult() {
		return this.adConsult;
	}

	public void setAdConsult(AdConsult adConsult) {
		this.adConsult = adConsult;
	}

	public String getReContent() {
		return this.reContent;
	}

	public void setReContent(String reContent) {
		this.reContent = reContent;
	}

	public Timestamp getReTime() {
		return this.reTime;
	}

	public void setReTime(Timestamp reTime) {
		this.reTime = reTime;
	}

	public Integer getReState() {
		return this.reState;
	}

	public void setReState(Integer reState) {
		this.reState = reState;
	}

}