package com.aidaL.service.impl;

import java.util.List;

import com.aidaL.bean.AdComment;
import com.aidaL.bean.AdProductInfo;
import com.aidaL.service.ICommentService;

public class CommentServiceImpl extends BaseServiceImpl<AdComment> implements
		ICommentService {

	/*
	 * 根据商品ID查询评论
	 */
	@Override
	public List<AdComment> getCommentByproId(Integer num) {
		String hql = "select a from com.aidaL.bean.AdComment a where a.adProductInfo.PId = '"
				+ num + "'";
		List<AdComment> list = baseDao.findByHql(hql);
		for (AdComment comment : list) {
			System.out.println(comment);
		}
		return baseDao.findByHql(hql);
	}

}
