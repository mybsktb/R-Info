package com.mc.interceptor;

import javax.servlet.http.HttpSession;

import com.jfinal.aop.Interceptor;
import com.jfinal.aop.Invocation;
import com.mc.base.model.User;

public class LoginInterceptor implements Interceptor {

	@Override
	public void intercept(Invocation inv) {
		 HttpSession session = inv.getController().getSession();
		 if(session==null){
			 inv.getController().redirect("/");
		 } else {
			 User user = (User)session.getAttribute("user");
			 if(user==null){
				 inv.getController().redirect("/");
			 } else {
				 inv.invoke();
			 }
		 }
	}

}
