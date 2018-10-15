<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="Semantic/semantic.min.css">
<script src="Semantic/juqery-3.3.1.min.js"></script>
<script src="Semantic/semantic.min.js"></script>
<title>Welcome to register!</title>
</head>
<body>
	<form action="register" method="POST">
		User name:
		<input name="userName"/><br /> 
		Password:
		<input name="password" type="password"/><br /> 
		Gender:
		<select name="gender" multiple="" class="ui dropdown">
		  	<option value="male">male</option>
			<option value="female">female</option>
		</select><br /> 
		Age:
		<input name="age"/><br />
		<input type="submit" value="submit"/><br />
	</form>
</body>
</html>