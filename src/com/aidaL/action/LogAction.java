package com.aidaL.action;

import java.sql.Timestamp;
import java.util.List;


import com.aidaL.bean.AdLog;
import com.aidaL.db.TimeIPDB;
import com.aidaL.service.ActionManager;
import com.aidaL.util.Json;

public class LogAction extends BaseAction {

	/**
	 * 
	 */
	private static final long serialVersionUID = -5562051178461366649L;

 	protected ActionManager logmgr;
 	private AdLog adLog;
	private Integer stId;
	private Integer UId;
	private Timestamp logTime;
	private String logIp;
	private String logAdress;

	//获取最近7条信息
	public String findSeven() {
		List<AdLog> listSeven = this.logmgr.findSevenLog();
		Json json = new Json();
		if (listSeven==null) {
			json.setMsg("无最近数据");
			json.setSuccess(false);
		} else {
			json.setMsg("查询成功");
			json.setObj(listSeven);
			json.setSuccess(true);
		}
		writeJson(json);
		
		return null;
	}
	
	/**
	 * 获取当前最近日志信息并保存在日志中，然后向数据库添加日志信息
	 * @return
	 */
	public String setnear() {
		Integer uid = (Integer) session.getAttribute("cusId");
		AdLog adLogSession = new AdLog();
		adLogSession = this.logmgr.findMaxLogByUId(uid);
		session.setAttribute("adLog", adLogSession);
		addLog();
		return null;
	}
	
	public String getnear() {
		AdLog adLogSession = new AdLog();
		adLogSession = (AdLog) session.getAttribute("adLog");
		
		//Json转化
		Json json = new Json();
		json.setMsg("record success");
		json.setObj(adLogSession);
		json.setSuccess(true);
		
		writeJson(json);
		return null;
	}
	
	/**
	 * 添加日志
	 * @return
	 */
	public String add() {
		AdLog log = new AdLog();
		TimeIPDB timeIPDB = new TimeIPDB();
		
		//获取当前系统时间，并以Timestamp类型保存
		logTime = Timestamp.valueOf(timeIPDB.record());
		//获取当前客户机IP
		logIp = timeIPDB.getLocalIP();
		//获取IP所在地
		logAdress = timeIPDB.getAdress(logIp);
		//获取当前用户ID
		Integer uid = (Integer) session.getAttribute("cusId");
		//获取当前店铺ID
		Integer stID = (Integer) session.getAttribute("cusStore");
		
		log.setStId(stID);
		log.setUId(uid);
		log.setLogTime(logTime);
		log.setLogIp(logIp);
		log.setLogAdress(logAdress);
		
		this.logmgr.addLog(log);
		return null;
	}

	/**
	 * 向数据库添加最新日志信息
	 */
	private void addLog() {
		AdLog log = new AdLog();
		TimeIPDB timeIPDB = new TimeIPDB();
		
		//获取当前系统时间，并以Timestamp类型保存
		logTime = Timestamp.valueOf(timeIPDB.record());
		//获取当前客户机IP
		logIp = timeIPDB.getLocalIP();
		//获取IP所在地
		logAdress = timeIPDB.getAdress(logIp);
		//获取当前用户ID
		Integer uid = (Integer) session.getAttribute("cusId");
		//获取当前店铺ID
		Integer stID = (Integer) session.getAttribute("cusStore");
		
		log.setStId(stID);
		log.setUId(uid);
		log.setLogTime(logTime);
		log.setLogIp(logIp);
		log.setLogAdress(logAdress);
		
		this.logmgr.addLog(log);
	}
	
	public ActionManager getLogmgr() {
		return logmgr;
	}

	public void setLogmgr(ActionManager logmgr) {
		this.logmgr = logmgr;
	}

	public Integer getStId() {
		return stId;
	}

	public void setStId(Integer stId) {
		this.stId = stId;
	}

	public Integer getUId() {
		return UId;
	}

	public void setUId(Integer uId) {
		UId = uId;
	}

	public Timestamp getLogTime() {
		return logTime;
	}

	public void setLogTime(Timestamp logTime) {
		this.logTime = logTime;
	}

	public String getLogIp() {
		return logIp;
	}

	public void setLogIp(String logIp) {
		this.logIp = logIp;
	}

	public String getLogAdress() {
		return logAdress;
	}

	public void setLogAdress(String logAdress) {
		this.logAdress = logAdress;
	}

	public AdLog getAdLog() {
		return adLog;
	}

	public void setAdLog(AdLog adLog) {
		this.adLog = adLog;
	}
	
}
