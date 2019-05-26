<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body bgcolor="#99CCFF">
<form action="addServlet" method="post">
<h1 align="center">请添加学生信息</h1>
	<table align="center">
	<tr>
		<td>学号</td>
		<td><input type="text" name="addstuid"></td>
	</tr>
	<tr>
		<td>姓名</td>
		<td><input type="text" name="addstuname"></td>
	</tr>
	<tr>
		<td>性别</td>
		<td><input type="text" name="addstusex"></td>
	</tr>
	<tr>
		<td>班级</td>
		<td><input type="text" name="addstuclass"></td>
	</tr>
	<tr>
		
		<td><input type="submit" ></td>
	</tr>
	</table>

</form>
</body>
</html>