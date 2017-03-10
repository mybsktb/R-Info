package com.mc.routes;

import com.jfinal.config.Routes;
import com.mc.controller.AccountController;
import com.mc.controller.ContactController;
import com.mc.controller.IndexController;
import com.mc.controller.MoodController;
import com.mc.controller.WebsiteController;

public class FrontRoutes extends Routes {

	@Override
	public void config() {
		add("/",IndexController.class);
		add("/mood",MoodController.class,"/mood");
		add("/contact",ContactController.class,"/contact");
		add("/account",AccountController.class,"/account");
		add("/website",WebsiteController.class,"/website");
	}
}
