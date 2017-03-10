package com.mc.base;

import com.jfinal.plugin.activerecord.Model;
import com.jfinal.plugin.activerecord.IBean;

/**
 * Generated by JFinal, do not modify this file.
 */
@SuppressWarnings("serial")
public abstract class BaseWebsites<M extends BaseWebsites<M>> extends Model<M> implements IBean {

	public void setId(java.lang.Integer id) {
		set("id", id);
	}

	public java.lang.Integer getId() {
		return get("id");
	}

	public void setUid(java.lang.Integer uid) {
		set("uid", uid);
	}

	public java.lang.Integer getUid() {
		return get("uid");
	}

	public void setWebsite(java.lang.String website) {
		set("website", website);
	}

	public java.lang.String getWebsite() {
		return get("website");
	}

	public void setWebaddress(java.lang.String webaddress) {
		set("webaddress", webaddress);
	}

	public java.lang.String getWebaddress() {
		return get("webaddress");
	}

	public void setAccount(java.lang.String account) {
		set("account", account);
	}

	public java.lang.String getAccount() {
		return get("account");
	}

	public void setUsername(java.lang.String username) {
		set("username", username);
	}

	public java.lang.String getUsername() {
		return get("username");
	}

	public void setPassword(java.lang.String password) {
		set("password", password);
	}

	public java.lang.String getPassword() {
		return get("password");
	}

	public void setNikename(java.lang.String nikename) {
		set("nikename", nikename);
	}

	public java.lang.String getNikename() {
		return get("nikename");
	}

	public void setEmail(java.lang.String email) {
		set("email", email);
	}

	public java.lang.String getEmail() {
		return get("email");
	}

	public void setTel(java.lang.String tel) {
		set("tel", tel);
	}

	public java.lang.String getTel() {
		return get("tel");
	}

	public void setComment(java.lang.String comment) {
		set("comment", comment);
	}

	public java.lang.String getComment() {
		return get("comment");
	}

}