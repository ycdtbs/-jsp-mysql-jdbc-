<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%String index=(String)request.getParameter("index"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>学生登陆系统</title>
</head>
<body bgcolor="#99CCFF" >
<form action="loginServlet" method="post">
<h1 align="center"><font color="#242424">欢迎使用学生管理系统</font></h1>
	<table align="center">
		<tr>
			<td height="60px"><strong><font color="#242424" size="5px">管理员账号</font></strong></td>
			<td><input style="border: 0.2px"   size="20px" type="text" name="id"></td>
		</tr>

		<tr>
			<td height="60px"><strong><font color="#242424" size="5px">管理员密码</font></td>
			<td><input style="border: 0.2px" type="password" name="pwd"></td>
		</tr>
		<%if(index!=null){
		%>
		<h1><%=index%>密码错误</h1>
		<%
		}%>
		<tr>
			
			<td align="center" colspan="2" height="20px"><input type="submit"></td>
		</tr>
	
	</table>

</form>
</body>
</html>