<%@page import="test.web.common.DBCon"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	table{
	background: #F7F8E0;
	width: 500px;
	height: 300px;
	text-align: center;
	margin: auto;
	border: solid 1px;
	}
	th{
	background: #F2F5A9;
	}
	h2{
	text-align: center;
	}
	body{
	align-items: center;
	position: relative;
	}
	#btn1{
	width:100px;
	height: 50px;
	position: absolute;
    top: 450px;
    left: 50%;
    transform: translate(-50%, -50%);
	}
</style>
</head>
<body>
<%
String miName = request.getParameter("miName") == null ? "": request.getParameter("miName");
%>
<h2>메뉴판</h2>

<form>
	<input type="text" name="miName" value="<%=miName%>"><button>검색</button>
</form>

<table border ="1">
	<tr>
		<th>번호</th>
		<th>메뉴명</th>
		<th>가격</th>
	</tr>
<%
Connection con = DBCon.getCon();
String sql = "SELECT Mi_NUM, MI_NAME, MI_PRICE, MI_DESC FROM MENU_INFO";

if(miName != null && !miName.equals("")){
	sql += " WHERE MI_NAME LIKE ?";
}

PreparedStatement ps = con.prepareStatement(sql);
if(miName != null && !miName.equals("")){
	ps.setString(1,"%"+miName+"%");
}

ResultSet rs = ps.executeQuery();
while(rs.next()){
	
	out.println("<tr>");
	out.println("<td>" + rs.getString("MI_NUM")+"</td>");
	out.println("<td><a href ='/menu/menu-view.jsp?miNum="+ rs.getString("MI_NUM")+"'>" + rs.getString("MI_NAME")+"</a></td>");
	out.println("<td>" + rs.getString("MI_PRICE")+"</td>");
	out.println("</tr>");
%>

<%
}
%>
</table>
<button id="btn1" onclick="goMenuInsert()">메뉴 등록</button>
<script>

function goMenuInsert(){
	location.href ='/menu/menu-insert.jsp';
}


</script>
</body>
</html>