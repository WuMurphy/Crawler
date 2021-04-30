package com.Cai.mysqltest;

import java.sql.*;
public class MysqlTool {
	static Connection con;
	static Statement sql;
	static ResultSet res;
	public Connection Connection(){
		// TODO Auto-generated method stub
		String Driver="com.mysql.cj.jdbc.Driver";
		String url="jdbc:mysql://localhost:3306/userid?serverTimezone=UTC&useUnicode=true&characterEncoding=utf8&useSSL=false&allowPublicKeyRetrieval=true";
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
	public void read()  {
		MysqlTool c=new MysqlTool();
		con=c.Connection();
		try {
			sql=con.createStatement();
			res=sql.executeQuery("select * from register");
			while(res.next()) {
				String name=res.getString("username");
				String password=res.getString("password");
				System.out.println(name+" "+password);
			}
		}
		catch(SQLException e) {
			e.printStackTrace();
		}
		
	}
	public void write(String name,String password) {
		MysqlTool c=new MysqlTool();
		con=c.Connection();
		try {
			sql=con.createStatement();
			String  code= "insert into register(username,password) values(?,?)";
			PreparedStatement pst=con.prepareStatement(code);
			pst.setString(1, name);
			pst.setString(2, password);
			pst.executeUpdate();
		}
		catch (SQLException e){
			e.printStackTrace();
		}
		
	}
	
	public boolean seek (String name,String password) {
		MysqlTool c=new MysqlTool();
		con=c.Connection();
		try {
			sql=con.createStatement();
			res=sql.executeQuery("select * from register");
			while(res.next()) {
				if(name.equals(res.getString("username"))) {					
					if(password.equals(res.getString("password"))) {
						System.out.println("login successfully");
						return true;
					}
						
					else {
						System.out.println("account name or password is wrong！");
						return false;
					}
						
				}
			}
			System.out.println("NO user");
			return false;
		}
		catch(SQLException e) {
			e.printStackTrace();
			return false;
		}
	}
	public boolean seekusername (String name) {
		MysqlTool c=new MysqlTool();
		con=c.Connection();
		try {
			sql=con.createStatement();
			res=sql.executeQuery("select * from register");
			while(res.next()) {
				if(name.equals(res.getString("username"))) {					
						System.out.println("User name available");
						return true;
					}
						
					else {
						System.out.println("User name is not available！");
						return false;
					}
						
				
			}
			System.out.println("NO user");
			return false;
		}
		catch(SQLException e) {
			e.printStackTrace();
			return false;
		}
	}
	public static void search()  {
		MysqlTool c=new MysqlTool();
		con=c.Connection();
		try {
			String sea = "select * from register where username like '%yao%'";
			sql=con.createStatement();
			res=sql.executeQuery(sea);
			int id;
			String password,name;
	      System.out.println("id\t username\t password");
	      while(res.next()){
	        id=res.getInt("id");
	        name=res.getString(2);
	        password=res.getString("password");
	        System.out.println(id+"\t"+name+"\t"+password);//输出查询结果
	      }

		}catch (SQLException e) {
		      // TODO Auto-generated catch block
		      e.printStackTrace();
		    }
		
	}
	public static void main(String[] args) {
		MysqlTool c=new MysqlTool();
		c.read();
		//c.write("cai","12356");
		c.seek("csdn", "123");
		search();

	}

}
