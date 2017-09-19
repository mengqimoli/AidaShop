package com.aidaL.dao;

import java.util.List;
import com.aidaL.bean.AdStore;

public interface AdStoreDAO {
	/**
	 *根据id查找店铺
	 *@param id 需要查找的店铺id
	 */
	AdStore get(Integer id);
	
	/**
	 * 增加店铺
	 * @param store 需要增加的店铺
	 */
	void save(AdStore store);
	
	/**
	 * 修改店铺
	 * @param store 需要修改的店铺
	 */
	void update(AdStore store);
	
	 /**

     * 删除店铺

     * @param id 需要删除的店铺id

     */ 
    void delete(Integer id);

    /**

     * 删除店铺

     * @param user 需要删除的店铺

     */ 
    void delete(AdStore store);

    /**

     * 查询全部店铺

     * @return 获得全部店铺

     */
    List<AdStore> findAll();

    /**

     * 通过Id查询店铺

     * @return 获得店铺信息

     */
    AdStore findStoreById(Integer id);

    /**
     * 保存并返回ID
     * @param store
     * @return
     */
	Integer saveResID(AdStore store);
}
