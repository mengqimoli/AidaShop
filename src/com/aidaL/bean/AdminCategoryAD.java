package com.aidaL.bean;
// default package



/**
 * AdminCategoryAD entity. @author MyEclipse Persistence Tools
 */

public class AdminCategoryAD  implements java.io.Serializable {


    // Fields    

     /**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private Integer acgId;
     private String acgName;
     private Integer acgLevel;
     private Integer acgPid;


    // Constructors

    /** default constructor */
    public AdminCategoryAD() {
    }

	/** minimal constructor */
    public AdminCategoryAD(Integer acgId, String acgName) {
        this.acgId = acgId;
        this.acgName = acgName;
    }
    
    /** full constructor */
    public AdminCategoryAD(Integer acgId, String acgName, Integer acgLevel, Integer acgPid) {
        this.acgId = acgId;
        this.acgName = acgName;
        this.acgLevel = acgLevel;
        this.acgPid = acgPid;
    }

   
    // Property accessors

    public Integer getAcgId() {
        return this.acgId;
    }
    
    public void setAcgId(Integer acgId) {
        this.acgId = acgId;
    }

    public String getAcgName() {
        return this.acgName;
    }
    
    public void setAcgName(String acgName) {
        this.acgName = acgName;
    }

    public Integer getAcgLevel() {
        return this.acgLevel;
    }
    
    public void setAcgLevel(Integer acgLevel) {
        this.acgLevel = acgLevel;
    }

    public Integer getAcgPid() {
        return this.acgPid;
    }
    
    public void setAcgPid(Integer acgPid) {
        this.acgPid = acgPid;
    }
   








}