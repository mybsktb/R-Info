package com.mc.controller;

import com.jfinal.aop.Before;
import com.jfinal.core.Controller;
import com.mc.interceptor.LoginInterceptor;

@Before(LoginInterceptor.class)
public class AccountController extends Controller {
	public void accountJsp(){
		render("account.jsp");
	}
	
	public void changePwdJsp(){
		render("change_password.jsp");
	}
	
	public void personalInfoJsp(){
		render("personal_info.jsp");
	}
}
