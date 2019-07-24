<%--
  Created by IntelliJ IDEA.
  User: 刘涛
  Date: 2019/4/6
  Time: 8:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<table border="1" align="center" bgcolor="aqua">
    <h1 align="center">修改表单</h1>
    <tr><td>
        <form action="/delete" method="post" >
            <input type="hidden" name="id" value="${sessionScope.list1.id}">

         姓名：<input type="text" name="name" value="${sessionScope.list1.name}"><br>
        年龄：<input type="text" name="age" value="${sessionScope.list1.age}"><br>
        性别：<input type="text" name="sex" value="${sessionScope.list1.sex}"><br>
        日期：<input type="date" name="birth" value="${sessionScope.list1.birth}"><br>
        工资：<input type="text" name="salary" value="${sessionScope.list1.salary}"><br>
        部门：<input type="text" name="deptId" value="${sessionScope.list1.deptId}"><br>
            <input type="submit" value="提交">
 </form>
    </td></tr>

</table>

</body>
</html>
