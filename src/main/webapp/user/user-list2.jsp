<%@page import="test.web.common.DBCon"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<table border="1" >
	
	<th>번호</th>
	<th>이름</th>
	<th>아이디</th>
	<th>가입일</th>
	
<%
Connection con = DBCon.getCon();
Statement stmt = con.createStatement();

String sql = "SELECT * FROM USER_INFO";
ResultSet rs = stmt.executeQuery(sql);

while(rs.next()){
	out.println("<tr>");
	out.println("<td>"+rs.getString("UI_NUM"));
	out.println("<td>"+rs.getString("UI_NAME"));
	out.println("<td>"+rs.getString("UI_ID"));
	out.println("<td>"+rs.getString("CREDAT"));
	out.println("</tr>");
}

rs.close();
stmt.close();
con.close();
%>
	
	
</table>

</body>
</html>