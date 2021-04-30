<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<script type="text/javascript">
	//权限验证--验证是否在seesion域中保存登录数据
	<%String ss =(String)request.getAttribute("value");%>

	
	
	//删除按钮
	       $(function () {
//给从收藏夹中删除物品绑定单击事件
        $("a.deleteItem").click(function () {
            return confirm("Do you want to delete["
                + $(this).parent().parent().find("td:first").text() +"] ?")
        });
    });




	</script>
		       <div style="text-align: center">
	       <c:if test="${empty session.favorite.items}">
	           <%--购物车为空的输出--%>
	           <tr>
	           <td colspan="5"><a href= "mainpage1.html"> Collection is empty, go to search some commodity</a>
	           </tr>
	       </c:if>
	       <c:if test="${not empty session.favorite.items}">
	           <%--购物车非空的输出--%>
	           <c:forEach items ="${session.favorite.items}" var="entry">
	           <tr>
	           <td> ${entry.items.title}</td>
	           <td> ${entry.items.id}</td>
	           <td> ${entry.items.price}</td>
	           <td> ${entry.items.url}</td>
	           <td> ${entry.items.sku}</td>
	     	   <td> ${entry.items.pic}</td>
	           </tr>
	       </c:forEach>    
	       </c:if>
	   </div>
</body>
</html>