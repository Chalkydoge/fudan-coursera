<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%! int fontSize; %> 
<html> 
<head><title>WHILEѭ��ʾ��</title></head> 
<body>
<h2>Whileѭ��ʾ����</h2>
<%while ( fontSize <= 5){ %>
   <font color="green" size="<%= fontSize %>">
    JSP Tutorial
   </font><br />
<%fontSize++;%>
<%}%>
</body> 
</html>