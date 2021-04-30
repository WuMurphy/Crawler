package com.Cai.collection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

//完成数据库数据的调用，查找等操作
public class Collectionimp  {
	static Connection con;
	static Statement sql;
	static ResultSet res;
	public Connection Connection(){
		String Driver="com.mysql.cj.jdbc.Driver";
		String url="jdbc:mysql://localhost:3306/favorite?serverTimezone=UTC&useUnicode=true&characterEncoding=utf8&useSSL=false&allowPublicKeyRetrieval=true";
		String name="root";
		String code="";
		
		try {
			Class.forName(Driver);
		}
		catch(ClassNotFoundException e) {
			e.printStackTrace();
		}
		try {
			con=DriverManager.getConnection(url, name, code);
			return con;
		}
		catch(SQLException e) {
			e.printStackTrace();
		}
		return con;
	}
	public Commodity getCommodityById(String productId) {
		Collectionimp imp =new Collectionimp();
		con=imp.Connection();
		
		try {
			sql=con.createStatement();
			res=sql.executeQuery("select * from register where id=fsku");
			while(res.next()) {
				Commodity c =new Commodity(res.getString("id"), res.getString("title"),res.getString("price"),res.getString("url"),res.getString("pic"),res.getString("sku"));
				 				return c ;	
				}
			System.gc();
			return null;
		}
		catch(SQLException e) {
			e.printStackTrace();
			return null;
		}
	}

	

}
