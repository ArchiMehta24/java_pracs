<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
	String mystr=request.getParameter("mystring");
	StringBuffer sb=new StringBuffer(mystr);
	String rev=sb.reverse().toString();
	out.print(rev);
%>
</body>
</html>
