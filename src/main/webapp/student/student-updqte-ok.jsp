<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="test.web.common.DBCon"%>
<%@page import="java.sql.*"%>

<%
	request.setCharacterEncoding("UTF-8");
	String siNum = request.getParameter("siNum");
	String siId = request.getParameter("siId");
	String siPwd = request.getParameter("siPwd");
	String siName = request.getParameter("siName");
	String siBirth = request.getParameter("siBirth");
	String siPhnum = request.getParameter("siPhnum");
	String siMail = request.getParameter("siMail");
	
	Connection con = DBCon.getCon();
	
	String sql = "UPDATE STUDENT_INFO SET "
	           + "SI_ID = ?, "
	           + "SI_PWD = ?, "
	           + "SI_NAME = ?, "
	           + "SI_BIRTH = ?, "
	           + "SI_PHNUM = ?, "
	           + "SI_MAIL = ? "
	           + "WHERE SI_NUM = ?";
	
	PreparedStatement ps = con.prepareStatement(sql);
	ps.setString(1, siId);
	ps.setString(2, siPwd);
	ps.setString(3, siName);
	ps.setString(4, siBirth);
	ps.setString(5, siPhnum);
	ps.setString(6, siMail);
	ps.setString(7, siNum);
	
	int result = ps.executeUpdate();
	
	if(result==1){
%>
<script>
	alert('학생 정보를 성공적으로 수정했습니다.');
	location.href='/student/student-view.jsp?siNum=<%=siNum%>';
</script>
<%
}
%>
	
