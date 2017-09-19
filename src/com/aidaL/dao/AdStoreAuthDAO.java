package com.aidaL.dao;

import java.util.List;

import com.aidaL.bean.AdStoreAuth;

public interface AdStoreAuthDAO {
	
	/**
	 *根据id查找店铺申请信息
	 *@param id 需要查找的店铺申请信息id
	 */
	AdStoreAuth get(Integer id);
	
	/**
	 * 增加店铺申请信息
	 * @param StoreAuth 需要增加的店铺申请信息
	 */
	void save(AdStoreAuth storeAuth);
	
	/**
	 * 修改店铺申请信息
	 * @param StoreAuth 需要修改的店铺申请信息
	 */
	void update(AdStoreAuth storeAuth);
	
	 /**

     * 删除店铺申请信息

     * @param id 需要删除的店铺申请信息id

     */ 
    void delete(Integer id);

    /**

     * 删除店铺申请信息

     * @param user 需要删除的店铺申请信息

     */ 
    void delete(AdStoreAuth storeAuth);

    /**

     * 查询全部店铺申请信息

     * @return 获得全部店铺申请信息

     */
    List<AdStoreAuth> findAll();

    /**

     * 通过Id查询店铺申请信息

     * @return 获得店铺申请信息

     */
    AdStoreAuth findStoreAuthById(Integer id);

    /**
     * 通过用户ID查询店铺申请表
     * @param uid 用户ID
     * @return	返回该列信息
     */
	AdStoreAuth findStoreAuthByUId(Integer uid);

}
