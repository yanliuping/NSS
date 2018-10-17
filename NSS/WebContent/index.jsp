<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="com.nss.entity.UserInfo"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Welcome to use Nursing Service System</title>

<%
	UserInfo userInfo = (UserInfo) request.getSession().getAttribute("userInfo");
%>
<style type="text/css">
.ui.segment {
	border-radius: 0px;
}
</style>

</head>
<body>
	<div class="ui inverted segment">
		<div class="ui inverted secondary menu">
			<div class="item active">Home</div>
			<div class="item">item1</div>
			<div class="ui item dropdown">
				item2 <i class="dropdown icon"></i>
				<div class="menu">
					<div class="item">Action</div>
					<div class="item">Another Action</div>
					<div class="item">Something else here</div>
					<div class="divider"></div>
					<div class="item">Separated Link</div>
					<div class="divider"></div>
					<div class="item">One more separated link</div>
				</div>
			</div>
			<div class="right menu">
				<div class="item">
					<div class="ui action left icon input">
						<i class="search icon"></i> <input type="text"
							placeholder="Search">
						<button class="ui button">Submit</button>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="ui inverted vertical pointing menu">
		<a class="active item">Home </a> <a class="item">Messages </a> <a
			class="item">好友 </a>
	</div>
</body>
<script>
	$(document).ready(function() {
		$('.ui.menu .ui.dropdown').dropdown({
			on : 'hover'
		});
		$('.ui.menu a.item').on('click', function() {
			$(this).addClass('active').siblings().removeClass('active');
		});
	});
</script>
</html>