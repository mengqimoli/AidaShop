package com.aidaL.service;

import java.util.List;

import com.aidaL.bean.AdComment;

public interface ICommentService extends IBaseService<AdComment> {
	
	List<AdComment> getCommentByproId(Integer num);
	
}
