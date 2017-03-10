package com.mc.service.impl;

import com.mc.base.model.User;
import com.mc.dao.impl.LoginDaoImpl;
import com.mc.service.ILoginService;

public class LoginServiceImpl implements ILoginService {

	@Override
	public boolean login(User user) {
		if(user==null) return false;
		return new LoginDaoImpl().login(user);
	}

	@Override
	public boolean register(User user) {
		return false;
	}

	@Override
	public boolean logout(User user) {
		return false;
	}

}
