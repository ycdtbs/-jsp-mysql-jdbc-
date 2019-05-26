<%@page import="java.sql.ResultSet"%>
<%@page import="tools.DBUtil"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<div align="center">
<h1>请修改信息</h1>
<body bgcolor="#99CCFF">
<%String id=request.getParameter("sid");
String sql="select id,name,sex,class from student where id='"+id+"'";
DBUtil db=DBUtil.getDB();
ResultSet rs=db.query(sql);
rs.next();
%>
<form action="Update" method="post">
	<table>
	<tr>
	<td>学号<input type="text" readonly="readonly" value=<%=rs.getString("id") %> name="sid"></td>
	</tr>
	<tr>
	<td>姓名<input type="text"  value=<%=rs.getString("name") %> name="sname"></td>
	</tr>	
	<tr>
	<td>性别<input type="text"  value=<%=rs.getString("sex") %> name="ssex"></td>
	</tr>
	<tr>
	<td>班级<input type="text"  value=<%=rs.getString("class") %> name="nclass"></td>
	</tr>
	</table>
	<input type="submit" value="确认修改">
	</form>
</body>
</div>
</html>