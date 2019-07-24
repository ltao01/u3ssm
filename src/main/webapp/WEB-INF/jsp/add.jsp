<%--
  Created by IntelliJ IDEA.
  User: 刘涛
  Date: 2019/4/6
  Time: 14:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>添加数据</title>
</head>
<body>
<table border="1" align="center" bgcolor="aqua">
    <h1 align="center">添加数据</h1>
    <tr><td>
        <form action="/select" method="post" >
            姓名：<input type="text" name="name" value=""><br>
            年龄：<input type="text" name="age" value=""><br>
            性别：<input type="text" name="sex" value=""><br>
            日期：<input type="date" name="birth" value=""><br>
            工资：<input type="text" name="salary" value=""><br>
            部门：<input type="text" name="deptId" value=""><br>
            <input type="submit" value="提交">
        </form>
    </td></tr>

</table>

</body>
</html>
