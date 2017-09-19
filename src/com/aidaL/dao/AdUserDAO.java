package com.aidaL.dao;

import java.util.List;

import com.aidaL.bean.AdCustomer;

public interface AdUserDAO {
	/**
	 *根据id查找用户
	 *@param id 需要查找的用户id
	 */
	AdCustomer get(Integer id);
	
	/**
	 * 增加用户
	 * @param user 需要增加的用户
	 */
	void save(AdCustomer user);
	
	/**
	 * 修改用户
	 * @param user 需要修改的用户
	 */
	void update(AdCustomer user);
	
	 /**

     * 删除用户

     * @param id 需要删除的用户id

     */ 
    void delete(Integer id);

    /**

     * 删除用户

     * @param user 需要删除的用户

     */ 
    void delete(AdCustomer user);

    /**

     * 查询全部用户
     * @param uid 需要提出的当前的会员ID 

     * @return 获得全部用户

     */
    List<AdCustomer> findAll(Integer uid);

    /**

     * 根据用户名，密码查找用户

     * @param username 查询所需的用户名

     * @param pass 查询所需的密码

     * @return 对应的用户

     */

    AdCustomer findUserByNameAndPass(String username , String password);

    /**
     * 根据ID查找用户
     * @param id 用户ID
     * @return 整条用户信息
     */
	AdCustomer finCustById(Integer id);

	/**
	 * 查询vip用户
	 * @param uid 需要提出的当前的会员ID 
	 * @return
	 */
	List<AdCustomer> finVIPCust(Integer uid);

	/**
	 * 查询已认证和认证中的造型师
	 * @param uid 需要提出的当前的会员ID 
	 * @return
	 */
	List<AdCustomer> findStyleCust(Integer uid);

	/**
	 * 查询验证中的造型师
	 * @param uid 需要提出的当前的会员ID 
	 * @return
	 */
	List<AdCustomer> findAuthenCust(Integer uid);

	/**
	 * 出啊讯所有的管理员
	 * @param uid 需要提出的当前的会员ID
	 * @return
	 */
	List<AdCustomer> findAdminCust(Integer uid);

	/**
	 * 查询所有的超级管理员
	 * @param uid 需要提出的当前的会员ID
	 * @return
	 */
	List<AdCustomer> findSupCust(Integer uid);

	/**
	 * 查询所有的店铺管理员
	 * @return
	 */
	List<AdCustomer> findStoreCust();

	/**
	 * 验证用户名是否存在
	 * @param uName
	 * @return
	 */
	Integer finCustByName(String uName);

	/**
	 * 添加用户并返回ID
	 * @param viCust
	 * @return
	 */
	Integer addCustRetID(AdCustomer viCust);
}
