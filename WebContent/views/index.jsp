<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>主页</title>
</head>
<body>
	<p style="color:red">${msg}</p><hr>
	用户登录<br>
	<form action="login" method="post">
		用户名：<input type="text" name="username" /><br>
		密码：<input type="password" name="password" /><br>
		<input type="submit" value="提交"><br>
	</form><hr>
	用户注册<br>
	<form action="register" method="post">
		用户名：<input type="text" name="username" /><br>
		密码：<input type="password" name="password" /><br>
		<input type="submit" value="提交"><br>
	</form><hr>
	修改密码<br>
	<form action="modifyPassword" method="post">
		用户名：<input type="text" name="username" /><br>
		密码：<input type="password" name="password" /><br>
		新密码：<input type="password" name="newpassword" /><br>
		<input type="submit" value="提交"><br>
	</form><hr>	
	
</body>
</html>