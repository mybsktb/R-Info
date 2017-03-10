package com.mc.controller;

import java.util.List;

import com.jfinal.aop.Before;
import com.jfinal.core.Controller;
import com.mc.base.model.Mood;
import com.mc.base.model.User;
import com.mc.base.model.VmoodComment;
import com.mc.constant.RIConst;
import com.mc.interceptor.LoginInterceptor;
import com.mc.service.ILoginService;
import com.mc.service.impl.LoginServiceImpl;

public class IndexController extends Controller {
	/**
	 * 登录页面
	 */
	public void index() {
		render("login.jsp");
	}
	
	@Before(LoginInterceptor.class)
	public void indexJsp(){
		List<Mood> moods = Mood.dao.find("select * from mood order by createtime desc");
		setAttr("moods", moods);
		render("index.jsp");
	}
	
	/**
	 * 注册页面
	 */
	public void registerJsp(){
		render("register.jsp");
	}
	
	/**
	 * 登录页面
	 */
	public void loginJsp(){
		render("login.jsp");
	}
	
	public void resetPwdJsp(){
		render("reset_password.jsp");
	}
	
	public void login(){
		User user = getBean(User.class);
		ILoginService loginService = new LoginServiceImpl();
		if(loginService.login(user)){
			User _user = user.findFirst("select id,username,email,tel,birthday,company,school,sex,address,hobby,shortinfo,icon,nikename from user where username='"+user.getUsername()+"'");
			getSession().setAttribute("user", _user);
			List<Mood> moods = Mood.dao.find("select * from mood order by createtime desc");
			List<VmoodComment> comments = VmoodComment.dao.find("select * from vmood_comment order by comment_createtime");
			setAttr("comments",comments);
			setAttr("moods", moods);
			render("index.jsp");
		} else {
			setAttr("loginMsg","用户名或密码错误");
			render("login.jsp");
		}
	}
	
	public void logout(){
		getSession().invalidate();
		render("login.jsp");
	}
}
