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
	int num=Integer.parseInt(request.getParameter("n"));
	
	int d=0,sum=0,square=0;
	while(num!=0)
	{
		d=num%10;
		square=d*d;
		sum+=square;
		num=num/10;
	}
	out.print(sum);
%>
</body>
</html>
