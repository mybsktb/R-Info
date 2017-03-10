package com.mc.service.impl;

import com.mc.base.model.Mood;
import com.mc.service.IMoodService;

public class MoodServiceImpl implements IMoodService {

	@Override
	public boolean publicMood(Mood mood) {
		if(mood==null) return false;
		String sql = "insert into mood('uid','content','createtime','privacy') values ('"
				+ mood.getUid() + "','" + mood.getContent() + "',now(),'" + mood.getPrivacy() + "');";
		
		return mood.save();
	}

}
