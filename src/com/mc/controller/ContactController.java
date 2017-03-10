package com.mc.controller;

import java.util.List;

import com.jfinal.aop.Before;
import com.jfinal.core.Controller;
import com.mc.base.model.Contacts;
import com.mc.base.model.Groups;
import com.mc.base.model.User;
import com.mc.interceptor.LoginInterceptor;

/**
 * @author Administrator
 * 联系人
 */
@Before(LoginInterceptor.class)
public class ContactController extends Controller {
	
	/**
	 * 初始化联系人页面
	 */
	public void contactJsp(){
		int currPage = getParaToInt(0);
		int size = getParaToInt(1);
		List<Contacts> contacts = getContactsLimitSize(currPage,size);
		User user = (User)getSession().getAttribute("user");
		List<Contacts> list = getContactsByUid(user.getId());
		int count = list.size();
		int total = 0;
		if(size!=0){
			if(count%size==0){
				total = count / size;
			} else {
				total = count / size + 1;
			}
		}
		setAttr("total",total);
		List<Groups> groups = getGroups();
		setAttr("currPage",currPage);
		setAttr("size",size);
		setAttr("groups",groups);
		setAttr("contacts",contacts);
		render("contacts.jsp");
	}
	
	/**
	 * 通过用户ID获取联系人信息
	 * @param uid
	 * @return
	 */
	public static List<Contacts> getContactsByUid(int uid){
		return Contacts.dao.find("select * from contacts where uid='"+uid+"' order by name asc");
	}
	
	/**
	 * 分页查询
	 * @param currPage 当前页
	 * @param size 每页记录数
	 * @return
	 */
	public static List<Contacts> getContactsLimitSize(int currPage,int size){
		return Contacts.dao.find("select * from contacts order by name asc limit " + (currPage-1)*size + "," + size);
	}
	
	/**
	 * 更新联系人
	 */
	public void updateContact(){
		Contacts contact = getBean(Contacts.class);
		if(contact.update()){
			setAttr("saveOk","更新成功");
		} else {
			setAttr("saveFail","更新失败");
		}
		keepPara();
		List<Groups> groups = getGroupsNotInOne();
		setAttr("groups",groups);
		render("update_contact.jsp");
	}
	
	public static List<Groups> getGroups(){
		return Groups.dao.find("select distinct id,groupname from groups order by id");
	}
	
	public void addContactJsp(){
		List<Groups> groups = Groups.dao.find("select id,groupname from groups where id not in('1') order by id desc");
		setAttr("groups", groups);
		render("add_contact.jsp");
	}
	
	public void saveContact(){
		Contacts contacts = getBean(Contacts.class);
		if(contacts.save()){
			setAttr("saveOk","保存成功");
		} else {
			setAttr("saveFail","保存失败");
		}
		List<Groups> groups = getGroupsNotInOne();
		setAttr("groups", groups);
		render("add_contact.jsp");
	}
	
	public void updateContactJsp(){
		int id = getParaToInt(0);
		List<Groups> groups = getGroups();
		setAttr("groups",groups);
		Contacts contact = Contacts.dao.findById(id);
		setAttr("contact",contact);
		render("update_contact.jsp");
	}
	
	public static List<Groups> getGroupsNotInOne(){
		return Groups.dao.find("select id,groupname from groups where id not in('1') order by id desc");
	}
	
	public void addGroup(){
		Groups group = getBean(Groups.class);
		if(group.save()){
			setAttr("okMsg","添加成功");
		} else {
			setAttr("okMsg","添加成功");
		}
		List<Groups> groups = Groups.dao.find("select id,groupname from groups where id not in('1') order by id desc");
		setAttr("groups", groups);
		render("add_contact.jsp");
	}
}
