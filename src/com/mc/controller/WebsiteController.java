package com.mc.controller;

import com.jfinal.aop.Before;
import com.jfinal.core.Controller;
import com.mc.interceptor.LoginInterceptor;

@Before(LoginInterceptor.class)
public class WebsiteController extends Controller {
	public void websiteJsp(){
		render("websites.jsp");
	}
}
