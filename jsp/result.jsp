<%@ page language="java" import="java.sql.*, java.util.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
		boolean found = false;
			String name = null;
			int percent= 0;
			String uid = request.getParameter("uid");
			int u = Integer.parseInt(uid);
			String passwd = request.getParameter("pwd");
			try{
				Class.forName("org.mariadb.jdbc.Driver");
				Connection cn = DriverManager.getConnection("jdbc:mariadb://localhost:3306/mydb","root","maria");
				PreparedStatement ps = cn.prepareStatement("select * from marks where uid=? and password=?");
				ps.setInt(1, u);
				ps.setString(2, passwd);
				ResultSet rs = ps.executeQuery();
				while(rs.next())
				{
					name = rs.getString("name");
					percent = rs.getInt("percent");
					found = true;
				}
				
				if(found==true)
				{
					out.println("user found and welcome: "+name+" with percent: "+percent);
				}
				else
				{
					out.println("you are not an authenticated user");
				}
			
			}
			catch(Exception e)
			{
			    e.printStackTrace();
			}
		
	%>
</body>
</html>
