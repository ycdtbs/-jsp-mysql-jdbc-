<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="tools.DBUtil"
    import="java.sql.Connection"
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body bgcolor="#99CCFF">
<div  align="center" >
<h1>所有学生信息</h1>


<% 
	request.setCharacterEncoding("utf-8");
	String xuehao=request.getParameter("xuehao");
	String xingming=request.getParameter("xingming");
	String xingbie=request.getParameter("xingbie");
	String banji=request.getParameter("banji");
	String jiguan=request.getParameter("local");
	String sql="select id,name,sex,class,local.place as pn from student left join local on student.laizi=local.number where flag=0 ";
	
	if(xuehao !=null&&xuehao.length()>0){
	sql=sql+"and id='"+xuehao+"'";
	}
	if(xingming !=null&&xingming.length()>0){
		sql=sql+"and name like'%"+xingming+"%'";
	}
	if(xingbie !=null&&xingbie.length()>0){
		if(xingbie.equals("男")||xingbie.equals("女")){
			sql=sql+"and sex='"+xingbie+"'";	
		}
		else{
			sql=sql+"and sex='男' or sex='女'";
		}
		
	}
	if(banji !=null&&banji.length()>0){
		sql=sql+"and class='"+banji+"'";
	}
	if(jiguan !=null&&jiguan.length()>0){
		if(jiguan.equals("查询全部")){
			sql=sql;
		}
		else{
			sql=sql+"and place='"+jiguan+"'";
		}
		
		
	}
	
	DBUtil db=DBUtil.getDB();
	ResultSet rs=db.query(sql);
	System.out.println(sql);

   
   %>
   <form action="selectstudent.jsp" method="post">
   <table border="1">
   <tr>
   <th>编号</th>
   <th>姓名</th>
   <th>性别</th>
   <th>班级</th>
   <th>籍贯</th>
   
   <th colspan="2">操作</th>
   <tr>
   <tr >
   	<td><input type="text" value="<%=xuehao==null?"":xuehao %>" style="background-color: #99CCFF" name="xuehao"></td>
   	<td><input type="text" value="<%=xingming==null?"":xingming %>" style="background-color: #99CCFF" name="xingming"></td>
   	<td>男<input type="radio" value="男" name="xingbie">女<input type="radio" value="女" name="xingbie">全部<input type="radio" value="" name="xingbie"></td>
   	<td><input type="text" value="<%=banji==null?"":banji %>" style="background-color: #99CCFF" name="banji"></td>
   	<!-- <td><input type="text" value="<%=jiguan==null?"":jiguan %>" style="background-color: #99CCFF" name="jiguan"></td> -->
   	<td><select name="local" >
   	<option>查询全部</option>
   	<%
   	String sql2="select number,place from local ";
	DBUtil db2=	DBUtil.getDB();
   	ResultSet rs2=db2.query(sql2);
   	System.out.println(sql2);
   	while(rs2.next()){
   	%>
   	<option><%=rs2.getString("place") %></option>
   	
   	<%} %>
   
   	
   	</select></td>
   	<th><input type="submit" value="确认查询" ></th>
   	<th><a href="selectstudent.jsp"><input type="button" value="清空" name="del"></a></th>
   </tr>
   <%
   
   
   while(rs.next()){
	   %>
	  
	<tr>
		
		<td><%=rs.getString("id")%></td>
		<td><%=rs.getString("name")%></td>
		<td><%=rs.getString("sex")%></td>
		<td><%=rs.getString("class")%></td>
		<td><%=rs.getString("pn")%></td>
		<td><a href="studelete?sid=<%=rs.getString("id") %>" ><input type="button" value="删除"></a></td>
		<td><a href="update.jsp?sid=<%=rs.getString("id")%>" ><input type="button" value="修改"></a>
		</td>
	
	</tr>

<%} %>
</table>
</form>
<%db.close(); %>
<br>
<a href="chenggong.jsp"><input type="button" value="回到功能选择"></a>
</div>
</body>

</html>