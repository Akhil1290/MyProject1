<%@ page language="java" import="com.tcs.User.dao.UserDao" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
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
int i=UserDao.save(u);  
if(i>0){  
response.sendRedirect("addusersuccess.jsp");  
}
else
{  
response.sendRedirect("addusererror.jsp");  
}  
%>   

</body>
</html>


