<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="test.web.common.DBCon"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<h2>학생 상세 정보</h2>
<body>
<%
String siNum = request.getParameter("siNum");
Connection con = DBCon.getCon();
String sql = "SELECT SI_NUM, SI_ID, SI_PWD, SI_NAME, SI_BIRTH, SI_PHNUM, SI_MAIL";
sql+=" FROM STUDENT_INFO WHERE SI_NUM=?";
PreparedStatement ps = con.prepareStatement(sql);
ps.setString(1,siNum);
ResultSet rs = ps.executeQuery();

if(rs.next()){
%>

<form>
	<table border='1'>
		<tr>
			<th scope="col">학생 아이디</th>
			<td><input type = "text" name="siId" value="<%=rs.getString("SI_ID")%>"></td>
		</tr>
		
		<tr>
			<th scope="row">학생 비밀번호</th>
			<td><input type = "text" name = "siPwd" value="<%=rs.getString("SI_PWD")%>"></td>
		</tr>
		
		<tr>
			<th scope="row">학생 이름</th>
			<td><input type = "text" name = "siName" value="<%=rs.getString("SI_NAME")%>"></td>
		</tr>
		
		<tr>
			<th scope="row">학생 생년월일</th>
			<td><input type = "text" name = "siBirth" value="<%=rs.getString("SI_BIRTH")%>"></td>
		</tr>
		
		<tr>
			<th scope="row">학생 휴대폰</th>
			<td><input type = "text" name = "siPhnum" value="<%=rs.getString("SI_PHNUM")%>"></td>
		</tr>
		
		<tr>
			<th scope="row">학생 메일</th>
			<td><input type = "text" name = "siMail" value="<%=rs.getString("SI_MAIL")%>"></td>
		</tr>
	</table>
	
	<input type="hidden" name = "siNum" value="<%=rs.getString("SI_NUM")%>">

</form>

<%}%>
</body>
</html>