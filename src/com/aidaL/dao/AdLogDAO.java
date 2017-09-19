package com.aidaL.dao;

import java.util.List;

import com.aidaL.bean.AdLog;

public interface AdLogDAO {

	/**
	 * 根据id查找日志
	 * @param id 日志id
	 * @return
	 */
	AdLog get(Integer id);
	
	/**
	 * 增加日志
	 * @param adLog 日志
	 */
	void save(AdLog adLog);
	
	/**
	 * 修改日志
	 * @param adLog 需要修改的日志
	 */
	void update(AdLog adLog);
	
	 /**

     * 删除日志

     * @param id 需要删除的日志id

     */ 
    void delete(Integer id);

    /**

     * 删除日志

     * @param adLog 需要删除的日志

     */ 
    void delete(AdLog adLog);

    /**

     * 查询全部日志

     * @return 获得全部日志

     */
    List<AdLog> findAll();

    /**

     * 通过Id查询日志

     * @return 获得日志

     */
    AdLog findLogById(Integer id);
    
    /**

     * 通过当前用户ID,uId查询日志

     * @return 获得日志

     */
    AdLog findLogByUId(Integer uId);
    
    /**
     * 通过当前用户ID,uId查询最近日志的ID
     * @param uId
     * @return 获得日志
     */
    AdLog findMaxLogByUID(Integer uId);
    
    /**
     * 查找最近的7条日志信息
     * @return
     */
    List<AdLog> findSevenLog();
}
