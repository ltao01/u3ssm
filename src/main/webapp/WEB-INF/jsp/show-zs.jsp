<%--
  Created by IntelliJ IDEA.
  User: 刘涛
  Date: 2019/4/8
  Time: 16:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>展示页面</title>
</head>
<body>
<table align="center" border="1" cellpadding="15" cellspacing="0" bgcolor="aqua">
    <tr>
        <td>编号</td>
        <td>姓名</td>
        <td>年龄</td>
        <td>性别</td>
        <td align="center">日期</td>
        <td>工资</td>
        <td>部门</td>
        <td align="center" >操作&emsp;|&emsp;<input type="button" value="新增" onclick="location.href='/WEB-INF/jsp/add.jsp'"></input></td>
    </tr>
    <c:forEach var="user" items="${pageInfo.list}" varStatus="vs" >

        <tr <c:if test="${vs.count%2!=0}" >bgcolor="#87cefa"</c:if>>
            <td>${user.id}</td>
            <td>${user.num}</td>
            <td>${user.name}</td>
            <td>${user.addr}</td>`
            <td>${user.date}</td>
            <%--<td>${user.userid.cardname}</td>--%>
            <td><a href="/delete?id=${user.id}">删除</a>&emsp;&emsp;
                <a href="/select?id=${user.id}">修改</a> </td>
        </tr>
   </c:forEach>
     <tr > <td align="center" colspan="8">${sessionScope.delete}${sessionScope.alter}${sessionScope.add}</td>

    </tr>

</table>

</body>
</html>
