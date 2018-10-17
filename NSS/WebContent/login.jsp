<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css"
	href="assist/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="assist/css/style.css">
<script src="assist/js/juqery-3.3.1.min.js"></script>
<title>Welcome to use Nursing Service System</title>
</head>
<body class="login-body">
	<div class="login-div">
		<form name="loginForm" action="login" method="POST">
			<div class="panel panel-default no-border">
				<div class="panel-heading"
					style="font-size: 17pt; background-color: #4A4A4A; color: #ffffff">
					<span>登 陆</span>
				</div>
				<div class="panel-body">
					<div class="input-group" style="width: 50%; margin-left: 25%;">
						<span class="input-group-addon"> <span
							class="glyphicon glyphicon-user"></span>
						</span> <input name="userName" type="text" class="form-control"
							placeholder="Username"></input>
					</div>
					<br>
					<div class="input-group" style="width: 50%; margin-left: 25%;">
						<span class="input-group-addon"> <span
							class="glyphicon glyphicon-lock"></span>
						</span> <input name="password" type="password" class="form-control"
							placeholder="Password"></input>
					</div>
					<br>
					<button type="button" class="btn btn-primary btn-no-border bg-color-deepgreen"
						onclick="submit();">登&nbsp;&nbsp;&nbsp;&nbsp;录</button>
					<button type="button" class="btn btn-warning" style="margin-left: 50px" onclick="clear();">取&nbsp;&nbsp;&nbsp;&nbsp;消</button>
				</div>
			</div>
	</div>
	</form>
	</div>
</body>
<script>
	alert("123213");
	function submit() {
		document.getElementsByName("loginForm").submit();
	}

	function clear() {
		alert("123213");
	}
</script>
</html>