package com.mc.dao;

import com.mc.base.model.User;

public interface ILoginDao {
	/**
	 * 登录
	 * @param user
	 * @return
	 */
	public boolean login(User user);
	/**
	 * 注册
	 * @param user
	 * @return
	 */
	public boolean register(User user);
	/**
	 * 注销
	 * @param user
	 * @return
	 */
	public boolean logout(User user);
}
