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
	int num1=Integer.parseInt(request.getParameter("n1"));
	int num2=Integer.parseInt(request.getParameter("n2"));
	int num3=Integer.parseInt(request.getParameter("n3"));
	
	int max=0;
	
	if(num1>num2 && num1>num3)
	{
		max=num1;
	}
	
	else if(num2>num1 && num2>num3)
	{
		max=num2;
	}
	
	else
	{
		max=num3;
	}
	out.print(max);	
%>
</body>
</html>
