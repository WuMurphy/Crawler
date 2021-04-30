package com.Cai.mysqltest;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class FavoriteServlet
 */
@WebServlet("/FavoriteServlet")
public class FavoriteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FavoriteServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(req, resp);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
    	request.setCharacterEncoding("gbk");//编码部分
		response.setCharacterEncoding("gbk");
		response.setHeader("content-type", "text/html;charset=gbk");//解码部分
		
		String name=request.getParameter("fid");//获得html界面的信息
		String password=request.getParameter("password");
		MysqlTool logining=new MysqlTool();
		HashMap<String ,Object> result = new HashMap<>();
		boolean flag= logining.seek(name,password);//使用上面的第二步，写入数据库
		
		PrintWriter printwriter=response.getWriter();//浏览器界面显示
		if(flag==false) {
			HttpSession session = request.getSession();
			session.setAttribute("qualification", false);
			response.sendRedirect("mainpage1.html");
		}
		else {
			System.out.println("login failure");
			request.setAttribute("msg","username or password is wrong!!!");
			request.setAttribute("username", name);
			request.getRequestDispatcher("login.html").forward(request, response);

		}
	}
	
}
