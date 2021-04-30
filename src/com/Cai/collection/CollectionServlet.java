package com.Cai.collection;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class CollectionServlet
 */
@WebServlet("/CollectionServlet")
public class CollectionServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CollectionServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		addItem(req, resp);
	}
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void addItem(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		boolean flag= (boolean) request.getSession().getAttribute("flag");
		if(flag==false){
    		request.getRequestDispatcher("login.html").forward(request, response);
    	}else{
    		//�õ���Ʒ�ĸ�������
    		String productId=request.getParameter("id");
    		String productTitle= request.getParameter("title");
    		String productPrice= request.getParameter("price");
    		String productUrl= request.getParameter("url");
    		String productPic= request.getParameter("pic");
    		String productSku= request.getParameter("sku");
        	
        	Collectionimp co = new Collectionimp();
        	Commodity c = new Commodity(productId, productTitle, productPrice, productUrl,productPic,productSku);
        	Commodity comm= co.getCommodityById(productSku);
        	Favorite fav=(Favorite) request.getSession().getAttribute("favorite");
        	if(fav==null){
        		fav=new Favorite(comm);
        		request.getSession().setAttribute("favorite",fav);
        		List<Commodity>list=fav.getCollectionItems(comm);
        		for (Object object : list) {
    				System.out.println(object.toString());
    			}
    	}
        	//���ղؼ��������Ʒ
        	fav.addItem(comm);                                       
        	request.getSession().setAttribute("newTitle",c.getTitle());
        	//��ȡ��Ӧ��url��ַ
        	response.sendRedirect("mainpage1.html");

	}

	}
    protected void deleteItem(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{
        // ��ȡ��Ʒurl
        String id = req.getParameter("id");
        // ��ȡ���ﳵ����
        Favorite fav = (Favorite) req.getSession().getAttribute("favorite");
        if (fav != null) {
            // ɾ�����ղؼ���Ʒ��
            fav.deleteItem(id);
            // �ض����ԭ�����ﳵչʾҳ��
            resp.sendRedirect(req.getHeader("Referer"));
        }
    }

}
