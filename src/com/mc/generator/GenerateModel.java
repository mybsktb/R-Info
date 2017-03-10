package com.mc.generator;

import java.util.Properties;
import javax.sql.DataSource;

import com.jfinal.kit.PathKit;
import com.jfinal.kit.Prop;
import com.jfinal.plugin.activerecord.generator.Generator;
import com.jfinal.plugin.druid.DruidPlugin;

/**
 * 自动生成Model
 */
public class GenerateModel {

	public static void main(String[] args) {
		
		// 从文件中获取属性
		Prop p = new Prop("db.properties");
		Properties properties = p.getProperties();
		
		DruidPlugin dp = new DruidPlugin(properties.getProperty("jdbcUrl"),
				properties.getProperty("user"), properties.getProperty("password"),
				properties.getProperty("driverClass"));
		
		dp.start();
		
		DataSource dataSource = dp.getDataSource();
		
		// base model 所使用的包名
		String baseModelPkg = "com.mc.base";
		// base model 文件保存路径
		String baseModelDir = PathKit.getWebRootPath() + "/src/com/mc/base";
		System.out.println(PathKit.getWebRootPath() + "/src/com/mc/base");
		
		// model 所使用的包名
		String modelPkg = "com.mc.base.model";
		// model 文件保存路径
		String modelDir = baseModelDir + "/model";
		System.out.println(baseModelDir + "/model");
		
		Generator gernerator = new Generator(dataSource, baseModelPkg, baseModelDir, modelPkg, modelDir);
		gernerator.generate();
		
		dp.stop();
	}
}
