package com.aidaL.service;

import java.util.List;
import java.util.Map;

import com.aidaL.bean.AdCustomer;
import com.aidaL.bean.AdLog;
import com.aidaL.bean.AdStore;
import com.aidaL.bean.AdStoreAuth;
import com.aidaL.bean.BrandAD;
import com.aidaL.dao.AdBrandDAO;
import com.aidaL.dao.AdStoreDAO;
import com.aidaL.dao.AdUserDAO;

public interface ActionManager {
	
	//用户管理
	public void saveOrUpdateCust(AdCustomer adCustomer);
	public Map<String, Object> validLogin(String username,String password);
	public AdUserDAO getAdUserDAO();
	public void setAdUserDAO(AdUserDAO adUserDAO);
	public List<AdCustomer> finAllCustomer(Integer uid);
	public AdCustomer findCustById(Integer id);
	public List<AdCustomer> findVIPCust(Integer uid);
	public List<AdCustomer> findStyleCust(Integer uid);
	public List<AdCustomer> findAuthenCust(Integer uid);
	public List<AdCustomer> findAdminCust(Integer uid);
	public List<AdCustomer> findSupCust(Integer uid);
	public List<AdCustomer> findStoreCust();
	public Integer findCustByName(String uName);
	public void addCust(AdCustomer viCust);
	public Integer addCustRetID(AdCustomer viCust);
	
	//店铺管理
	public void saveOrUpdateStore(AdStore store);
	public void deleteStore(Integer id);
	public void addStore(AdStore store);
	public AdStore findStoreById(Integer id);
	public List<AdStore> findAllStores();
	public AdStoreDAO getAdStoreDAO();
	public void setAdStoreDAO(AdStoreDAO adStoreDAO);
	public Integer addStoreResID(AdStore store);
	
	//品牌管理
	public void saveOrUpdateBrand(BrandAD brand);
	public void deteleBrand(Integer id);
	public void addBrand(BrandAD brand);
	public BrandAD findBrandById(Integer id);
	public BrandAD findBrandByName(String brName);
	public List<BrandAD> findAllBrand();
	public AdBrandDAO getAdBrandDAO();
	public void setAdBrandDAO(AdBrandDAO adBrandDAO);
	
	//日志管理
	public void saveOrUpdateLog(AdLog adLog);
	public void deleteLog(Integer id);
	public void addLog(AdLog adLog);
	public AdLog findMaxLogByUId(Integer uid);
	public List<AdLog> findSevenLog();
	
	//店铺申请表
	public void saveOrUpdateStoreAuth(AdStoreAuth storeAuth);
	public void deleteStoreAuth(Integer id);
	public void addStoreAuth(AdStoreAuth storeAuth);
	public List<AdStoreAuth> findAllStoreAuths();
	public AdStoreAuth findStoreAuthById(Integer id);
	public AdStoreAuth findStoreAuthByUId(Integer uid);
	
}
