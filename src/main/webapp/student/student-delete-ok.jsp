<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="test.web.common.DBCon"%>

<%
	request.setCharacterEncoding("UTF-8");
	String siNum = request.getParameter("siNum");
	Connection con = DBCon.getCon();
	String sql = "DELETE FROM STUDENT_INFO WHERE SI_NUM=?";
	PreparedStatement ps = con.prepareStatement(sql);
	ps.setString(1, siNum);

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