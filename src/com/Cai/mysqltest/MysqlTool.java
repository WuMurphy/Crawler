package com.Cai.mysqltest;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

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
						System.out.println("account name or password is wrong£¡");
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
	public static void main(String[] args)  {
		MysqlTool c=new MysqlTool();
		c.read();
		c.write("cai","12356");
		c.seek("csdn", "123");

	}

}
