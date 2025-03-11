<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form action = "processregistration3.jsp" method = "post">
		UID: <input type="text" name="uid"><br>
		NAME: <input type="text" name="name"><br>
		COURSE: <select name="course">
					<option>ARTS</option>
					<option>BCOM</option>
					<option>SCIENCE</option>
				</select><br>
		AGE: <input type="text" name="age"><br>
		GENDER: <input type="radio" name="gender" value="male">Male <input type="radio" name="gender" value="female">Female<br>
		HOBBY: <br><input type="checkbox" id="hobby" name="hobby" value="reading">
		       <label for="hobby">READING</label><br>
		       <input type="checkbox" id="hobby" name="hobby" value="writing">
		       <label for="hobby">WRITING</label><br>
		       <input type="checkbox" id="hobby" name="hobby" value="cricket">
		       <label for="hobby">CRICKET</label><br>
		       <input type="checkbox" id="hobby" name="hobby" value="travelling">
		       <label for="hobby">TRAVELLING</label><br>
		<input type="submit">
	</form>
</body>
</html>
