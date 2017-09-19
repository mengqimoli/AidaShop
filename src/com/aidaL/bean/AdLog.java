package com.aidaL.bean;

import java.sql.Timestamp;

/**
 * AdLog entity. @author MyEclipse Persistence Tools
 */

@SuppressWarnings("serial")
public class AdLog implements java.io.Serializable {

	// Fields

	private Integer logId;
	private Integer stId;
	private Integer UId;
	private Timestamp logTime;
	private String logIp;
	private String logAdress;

	// Constructors

	/** default constructor */
	public AdLog() {
	}

	/** minimal constructor */
	public AdLog(Integer logId, Integer UId) {
		this.logId = logId;
		this.UId = UId;
	}

	/** full constructor */
	public AdLog(Integer logId, Integer stId, Integer UId, Timestamp logTime,
			String logIp, String logAdress) {
		this.logId = logId;
		this.stId = stId;
		this.UId = UId;
		this.logTime = logTime;
		this.logIp = logIp;
		this.logAdress = logAdress;
	}

	// Property accessors

	public Integer getLogId() {
		return this.logId;
	}

	public void setLogId(Integer logId) {
		this.logId = logId;
	}

	public Integer getStId() {
		return this.stId;
	}

	public void setStId(Integer stId) {
		this.stId = stId;
	}

	public Integer getUId() {
		return this.UId;
	}

	public void setUId(Integer UId) {
		this.UId = UId;
	}

	public Timestamp getLogTime() {
		return this.logTime;
	}

	public void setLogTime(Timestamp logTime) {
		this.logTime = logTime;
	}

	public String getLogIp() {
		return this.logIp;
	}

	public void setLogIp(String logIp) {
		this.logIp = logIp;
	}

	public String getLogAdress() {
		return this.logAdress;
	}

	public void setLogAdress(String logAdress) {
		this.logAdress = logAdress;
	}

}