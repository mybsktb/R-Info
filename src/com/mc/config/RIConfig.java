package com.mc.config;

import com.jfinal.config.Constants;
import com.jfinal.config.Handlers;
import com.jfinal.config.Interceptors;
import com.jfinal.config.JFinalConfig;
import com.jfinal.config.Plugins;
import com.jfinal.config.Routes;
import com.jfinal.plugin.activerecord.ActiveRecordPlugin;
import com.jfinal.plugin.c3p0.C3p0Plugin;
import com.jfinal.render.ViewType;
import com.mc.base.model.Comment;
import com.mc.base.model.Contacts;
import com.mc.base.model.Groups;
import com.mc.base.model.Mood;
import com.mc.base.model.User;
import com.mc.base.model.VmoodComment;
import com.mc.base.model.Websites;
import com.mc.constant.RIConst;
import com.mc.routes.FrontRoutes;

public class RIConfig extends JFinalConfig {

	@Override
	public void configConstant(Constants me) {
		// 开发模式下运行
		me.setDevMode(true);
		// 视图类型
		me.setViewType(ViewType.JSP);
		me.setBaseViewPath("WEB-INF/pages/");
		// 文件上传路径
		me.setBaseUploadPath("upload/");
		// 设置字符编码
		me.setEncoding(RIConst.ENCODING);
	}

	@Override
	public void configRoute(Routes me) {
		me.add(new FrontRoutes());
	}

	/* 插件配置
	 * (non-Javadoc)
	 * @see com.jfinal.config.JFinalConfig#configPlugin(com.jfinal.config.Plugins)
	 */
	@Override
	public void configPlugin(Plugins me) {
		// 加载属性配置文件
		loadPropertyFile("db.properties");
		// 配置C3p0
		C3p0Plugin c3p0Plugin = new C3p0Plugin(getProperty("jdbcUrl"), 
				getProperty("user"), getProperty("password"));
		me.add(c3p0Plugin);
		
		ActiveRecordPlugin arp = new ActiveRecordPlugin(c3p0Plugin);
		arp.setShowSql(true);
		me.add(arp);
		// 添加映射关系
		arp.addMapping("user",User.class);
		arp.addMapping("contacts", Contacts.class);
		arp.addMapping("websites", Websites.class);
		arp.addMapping("mood", Mood.class);
		arp.addMapping("comment", Comment.class);
		arp.addMapping("groups", Groups.class);
		arp.addMapping("vmood_comment", VmoodComment.class);
	}

	@Override
	public void configInterceptor(Interceptors me) {}

	@Override
	public void configHandler(Handlers me) {}

}
