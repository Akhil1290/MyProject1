<%@ page language="java" import="com.tcs.User.dao.UserDao" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<jsp:useBean id="u" class="com.tcs.bean.Userbean"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>
<%

System.out.println(u.getId()); 

%>
<% 


int i=UserDao.update(u);  
System.out.println(i+"hhhhhhh");
response.sendRedirect("viewusers.jsp");  
%>

</body>
</html>