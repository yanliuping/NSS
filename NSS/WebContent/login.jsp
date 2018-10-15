<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="Semantic/semantic.min.css">
<script src="Semantic/juqery-3.3.1.min.js"></script>
<script src="Semantic/semantic.min.js"></script>
<style type="text/css">
body>.grid {
	height: 100%;
}

.column {
	max-width: 450px;
}
</style>
<title>Welcome to use Nursing Service System</title>
</head>
<body>
	<div class="ui middle aligned center aligned grid">
		<div class="column">
			<h2 class="ui teal header">
				<div class="content">Log-in to your account</div>
			</h2>
			<form class="ui large form" action="login" method="POST">
				<div class="ui stacked segment">
					<div class="field">
						<div class="ui left icon input">
							<i class="user icon"></i> <input type="text" name="userName"
								placeholder="User name">
						</div>
					</div>
					<div class="field">
						<div class="ui left icon input">
							<i class="lock icon"></i> <input type="password" name="password"
								placeholder="Password">
						</div>
					</div>
					<div class="ui fluid fade large animated submit primary button ">
						<div class="visible content">Login</div>
						<div class="hidden content">
							<i class="checkmark icon"></i>
						</div>
					</div>
				</div>

				<div class="ui error message"></div>

			</form>

			<div class="ui message">
				New to us? <a href="register.jsp">Sign Up</a>
			</div>
		</div>
	</div>
</body>
<script>
	$(document).ready(function() {
		$('.ui.form').form({
			fields : {
				email : {
					identifier : 'userName',
					rules : [ {
						type : 'empty',
						prompt : 'Please enter your user name'
					} ]
				},
				password : {
					identifier : 'password',
					rules : [ {
						type : 'empty',
						prompt : 'Please enter your password'
					} ]
				}
			}
		});
	});
</script>
</html>