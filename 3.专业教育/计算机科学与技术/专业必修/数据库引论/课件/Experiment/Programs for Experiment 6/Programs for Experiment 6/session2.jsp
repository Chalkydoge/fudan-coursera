<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
 <html>

<head><title>Sessionʾ��2</title></head>

<body> 
 <%
 String name = request.getParameter("name");
 if((name!=null))
 {
     session.setAttribute("username",name);
 }
 %>
 <a href="session3.jsp">��������ת��session3.jsp</a>
</body>
 </html>