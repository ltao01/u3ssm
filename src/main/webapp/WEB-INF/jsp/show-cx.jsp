<%--
  Created by IntelliJ IDEA.
  User: 刘涛
  Date: 2019/4/8
  Time: 16:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>查询页面</title>
</head>
<body>
<form action="/findAll" method="post" style="text-align: center">
    卡种分类:<select name="userid" >
    <option value="0" name="" >全部</option>
    <c:forEach var="card" items="${sessionScope.card}">

        <option value="${card.cardId}" name=""<c:if test="${card.cardId==sessionScope.page.kaname}" >  selected="selected"</c:if> >${card.cardName}</option>
    </c:forEach>
</select>
    姓名： <input type="text" name="name" value="${sessionScope.page.username}">
    <input type="submit" value="查询">

</body>
</html>
