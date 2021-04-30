<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
 
<body>

<Script type="text/javascript">
        $(function () {
            // 给加入购物车按钮绑定单击事件
            $("button.addToCart").click(function () {
                /**
                 * 在事件响应的function函数 中，有一个this对象，这个this对象，是当前正在响应事件的dom对象
                 * @type {jQuery}
                 */
                var commodityUrl = $(this).attr("url");
                location.href = "http://localhost:8080/book/CollectionServlet?action=addItem&url=" + commodityUrl;
            });
        });
    </Script>

</body>
</html>