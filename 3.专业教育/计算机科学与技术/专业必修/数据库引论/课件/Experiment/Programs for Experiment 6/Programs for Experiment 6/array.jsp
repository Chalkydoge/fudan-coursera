<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
 String[] arr={"apple","orange","cherry"};
 %>
 <%
 int j;
 out.println("<p>����������Ԫ���ǣ�</p>");
 for(j=0;j<arr.length;j++){
     out.println(arr[j]);
 }
 %>