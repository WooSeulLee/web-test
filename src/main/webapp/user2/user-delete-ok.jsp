<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="test.web.common.DBCon"%>


<%
	Connection con = DBCon.getCon();
	String sql = "DELETE FROM user_info WHERE UI_NUM = ?";
	PreparedStatement ps = con.prepareStatement(sql);
	ps.setString(1, "uiNum");
	
	int result = ps.executeUpdate();

	if(result==1){
%>
	<script>
	alert('학생 정보를 삭제했습니다.');
	location.href='/student/student-list.jsp';
	</script>

<%
	}
%>