package com.mc.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import com.jfinal.aop.Before;
import com.jfinal.core.Controller;
import com.mc.base.model.Mood;
import com.mc.base.model.User;
import com.mc.base.model.VmoodComment;
import com.mc.interceptor.LoginInterceptor;

@Before(LoginInterceptor.class)
public class MoodController extends Controller {
	public void moodJsp(){
		setAttr("comments",getCommentList());
		setAttr("moods",getMoodList());
		render("mood.jsp");
	}
	
	public void publicMood(){
		Mood mood = getBean(Mood.class);
		System.out.println(mood.getPrivacy());
		User user = (User)getSession().getAttribute("user");
		mood.setUid(user.getId());
		mood.setCreatetime(new Date());
		System.out.println(new SimpleDateFormat("yyyy-MM-dd hh:mm:ss").format(new Date()));
		if(mood.save()){
			setAttr("sendSuccess","发表成功");
		} else {
			setAttr("sendFail","发表失败");
			keepPara();
		}
		setAttr("comments",getCommentList());
		setAttr("moods",getMoodList());
		render("mood.jsp");
	}
	
	public static List<Mood> getMoodList(){
		return Mood.dao.find("select * from mood order by createtime desc");
	}
	
	public static List<VmoodComment> getCommentList(){
		return VmoodComment.dao.find("select * from vmood_comment order by comment_createtime");
	}
	
	public void deleteMood(){
		int mid = getParaToInt("mid");
		if(Mood.dao.deleteById(mid)){
			setAttr("result",1);
		} else {
			setAttr("result",2);
		}
		renderJson();
	}
}
