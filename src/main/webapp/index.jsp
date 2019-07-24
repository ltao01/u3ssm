

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@taglib prefix="kgc" uri="http://www.kgc.cn/jsp/functions" %>--%>
<html>
  <head>
    <title>$Title$</title>
  </head>
  <body>

  <a href="/findAll">欢迎来到员工系统</a>
<%-- <jsp:forward page="/WEB-INF/jsp/show.jsp"></jsp:forward>--%>


<%--



 &lt;%&ndash; String[] strs = {"a", "b","c"};&ndash;%&gt;
  List list = new ArrayList();
  list.add("a");
  pageContext.setAttribute("arr", strs);
  pageContext.setAttribute("list", list);

  ${fn:length(arr) }<br/><!--3-->
  ${fn:length(list) }<br/><!--1-->
  ${fn:toLowerCase("Hello") }<br/> <!-- hello -->
  ${fn:toUpperCase("Hello") }<br/> <!-- HELLO -->
  ${fn:contains("abc", "a")}<br/><!-- true -->
  ${fn:containsIgnoreCase("abc", "Ab")}<br/><!-- true -->
  ${fn:contains(arr, "a")}<br/><!-- true -->
  ${fn:containsIgnoreCase(list, "A")}<br/><!-- true -->
  ${fn:endsWith("Hello.java", ".java")}<br/><!-- true -->
  ${fn:startsWith("Hello.java", "Hell")}<br/><!-- true -->
  ${fn:indexOf("Hello-World", "-")}<br/><!-- 5 -->
  ${fn:join(arr, ";")}<br/><!-- a;b;c -->
  ${fn:replace("Hello-World", "-", "+")}<br/><!-- Hello+World -->
  ${fn:join(fn:split("a;b;c;", ";"), "-")}<br/><!-- a-b-c -->

  ${fn:substring("0123456789", 6, 9)}<br/><!-- 678 -->
  ${fn:substring("0123456789", 5, -1)}<br/><!-- 56789 -->
  ${fn:substringAfter("Hello-World", "-")}<br/><!-- World -->
  ${fn:substringBefore("Hello-World", "-")}<br/><!-- Hello -->
  ${fn:trim("     a b c     ")}<br/><!-- a b c -->
  ${fn:escapeXml("<html></html>")}<br/> <!-- <html></html> -->

  <form action="a.jsp" method="post" >
      姓名：<input type="text" name="name" ><br>
      密码：<input type="text" name="psw" ><br>
      爱好：<input type="checkbox" name="like" value="游戏">游戏
      <input type="checkbox" name="like" value="java">java<br>
      <input type="submit" name="" value="提交" ><br>
  </form>

  <% User1 user1 = new User1();

       user1.setName("曹操");
       user1.setPsw("123");
       Cat cat = new Cat();
       cat.setName("猫猫");
       user1.setCat(cat);
       session.setAttribute("User",user1);

   %>
 ${sessionScope.User.cat.name}
   ${sessionScope.get("User").getCat().getName()}--%>
  </body>
</html>
