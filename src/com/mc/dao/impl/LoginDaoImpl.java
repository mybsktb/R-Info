package com.mc.dao.impl;

import java.util.List;

import com.mc.base.model.User;
import com.mc.dao.ILoginDao;

public class LoginDaoImpl implements ILoginDao {

	@Override
	public boolean login(User user) {
		if(user==null) return false;
		String sql = "select * from user where username='" + user.getUsername()
				+ "' and password='" + user.getPassword() + "'";
		System.out.println(sql);
		List<User> list = user.find(sql);
		if(list.size()==1) return true;
		return false;
	}

	@Override
	public boolean register(User user) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean logout(User user) {
		// TODO Auto-generated method stub
		return false;
	}

}
