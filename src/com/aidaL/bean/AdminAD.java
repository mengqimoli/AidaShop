package com.aidaL.bean;
// default package



/**
 * AdminAD entity. @author MyEclipse Persistence Tools
 */

public class AdminAD  implements java.io.Serializable {


    // Fields    

     /**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Integer AId;
     private String AUsername;
     private String APassword;
     private Integer ACategory;


    // Constructors

    /** default constructor */
    public AdminAD() {
    }

    
    /** full constructor */
    public AdminAD(Integer AId, String AUsername, String APassword, Integer ACategory) {
        this.AId = AId;
        this.AUsername = AUsername;
        this.APassword = APassword;
        this.ACategory = ACategory;
    }

   
    // Property accessors

    public Integer getAId() {
        return this.AId;
    }
    
    public void setAId(Integer AId) {
        this.AId = AId;
    }

    public String getAUsername() {
        return this.AUsername;
    }
    
    public void setAUsername(String AUsername) {
        this.AUsername = AUsername;
    }

    public String getAPassword() {
        return this.APassword;
    }
    
    public void setAPassword(String APassword) {
        this.APassword = APassword;
    }

    public Integer getACategory() {
        return this.ACategory;
    }
    
    public void setACategory(Integer ACategory) {
        this.ACategory = ACategory;
    }
   








}