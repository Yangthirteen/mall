<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%--
  Created by IntelliJ IDEA.
  User: 詹
  Date: 2019/8/29
  Time: 15:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<c:forEach items="${productList}" var="p">
    <li>
        <div>
            <a href="#">
                    ${p.product_name}
            </a>
        </div>
    </li>
</c:forEach>
</body>
</html>
