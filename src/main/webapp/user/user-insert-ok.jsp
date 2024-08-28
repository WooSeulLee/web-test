<%@page import="test.web.common.DBCon"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

   
<%
String uiId = request.getParameter("uiId");
String uiPwd = request.getParameter("uiPwd");
String uiName = request.getParameter("uiName");
%>

<%="아이디: " +uiId%><br>
<%="비밀번호: " +uiPwd%><br>
<%="이름: " +uiName%><br>

<%
Connection con = DBCon.getCon();
Statement stmt = con.createStatement();

String sql = "INSERT INTO user_info (UI_NAME, UI_ID, UI_PWD, CREDAT, CRETIM) VALUES ('"
        + uiName + "', '"
        + uiId + "', '"
        + uiPwd + "', DATE_FORMAT(NOW(),'%Y%m%d'), DATE_FORMAT(NOW(),'%H%i%s'))";

int result = stmt.executeUpdate(sql);

if(result==1){
%>
<script>
	alert('회원가입이 완료되었습니다');
	location.href='/user/user-list.jsp';
</script>
<%
}else{
   out.println("입력 실패");

%>
<script>
alert('회원가입이 실패하였습니다');
location.href='/user/user-list.jsp';
</script>
<%} %>


