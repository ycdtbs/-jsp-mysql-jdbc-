<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>修改数据</title>
</head>
<body bgcolor="#99CCFF">
<form action="updateServlet" method="post">
<h1 align="center">请输入要修改的学号</h1>
	<table align="center">
	<tr>
		
		<td>学号<input type="text" name="updatestuid"></td>
	</tr>
	<tr>
		<td>请输入新的值</td>
		
	</tr>
	<tr>
	<td>姓名<input type="text" name="updatestuname"></td>
	</tr>
	<tr>
	<td>性别<input type="text" name="updatestusex"></td>
	</tr>
	<tr>
	<td>班级<input type="text" name="updatestuclass"></td>
	</tr>
		
	<tr>
		
		<td><input type="submit" ></td>
	</tr>
	</table>

</form>
</body>
</html>