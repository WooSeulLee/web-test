<%@page import="test.web.common.DBCon"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>학생 명단</title>
    <link rel="stylesheet" type="text/css" href="student-css/student-list.css">
</head>

<body>
<h1>학생 명단</h1>
<table border='1'>
<tr>
<th>학생 번호</th>
<th>학생 아이디</th>
<th>학생 비밀번호</th>
<th>학생 이름</th>
<th>학생 생년월일</th>
<th>학생 휴대폰</th>
<th>학생 메일</th>
</tr>

<%
	String siNum = request.getParameter("siNum");
	Connection con = DBCon.getCon();
	String sql = "SELECT SI_NUM, SI_ID, SI_PWD, SI_NAME, SI_BIRTH, SI_PHNUM, SI_MAIL";
	sql+=" FROM STUDENT_INFO";
	PreparedStatement ps = con.prepareStatement(sql);
	
	ResultSet rs = ps.executeQuery();
	
	while(rs.next()){
		out.println("<tr>");
		out.println("<td>"+rs.getString("SI_NUM")+"</td>");
		out.println("<td><a href ='/student/student-view.jsp?siNum="+rs.getString("SI_NUM")+"'>" + rs.getString("SI_ID")+"</a></td>");
		out.println("<td>"+rs.getString("SI_PWD")+"</td>");
		out.println("<td>"+rs.getString("SI_NAME")+"</td>");
		out.println("<td>"+rs.getString("SI_BIRTH")+"</td>");
		out.println("<td>"+rs.getString("SI_PHNUM")+"</td>");
		out.println("<td>"+rs.getString("SI_MAIL")+"</td>");
		out.println("</tr>");
	}
%>
</table>

 <div class="button-container">
        <button id="btn1" onclick="goMenuInsert()">학생 등록</button>
</div>

<script>
	function goMenuInsert(){
		location.href ='/student/student-insert.jsp';
	}
</script>
</body>
</html>