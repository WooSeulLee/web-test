<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>학생 등록</title>
<link rel="stylesheet" type="text/css" href="student-css/student-insert.css">
</head>
<body>
<form action="/student/student-insert-ok.jsp" method="POST">
	<table border='1'>
		<tr>
			<th scope="col">학생 아이디</th>
			<td><input type = "text" name="siId"></td>
		</tr>
		
		<tr>
			<th scope="row">학생 비밀번호</th>
			<td><input type = "text" name = "siPwd"></td>
		</tr>
		
		<tr>
			<th scope="row">학생 이름</th>
			<td><input type = "text" name = "siName"></td>
		</tr>
		
		<tr>
			<th scope="row">학생 생년월일</th>
			<td><input type = "text" name = "siBirth"></td>
		</tr>
		
		<tr>
			<th scope="row">학생 휴대폰</th>
			<td><input type = "text" name = "siPhnum"></td>
		</tr>
		
		<tr>
			<th scope="row">학생 메일</th>
			<td><input type = "text" name = "siMail"></td>
		</tr>
	</table>
	<button>학생 정보 등록</button>
</form>

</body>
</html>