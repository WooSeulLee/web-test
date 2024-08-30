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

<%	
	String uiNum = request.getParameter("uiNum");
	Connection con = DBCon.getCon();
	String sql = "SELECT UI_NUM, UI_NAME, UI_ID, UI_PWD,"
	+"UI_GENDER, STR_TO_DATE(UI_BIRTH,'%Y%m%d') AS UI_BIRTH, UI_HOBBY, UI_DESC,"
	+"CREDAT,CRETIM"
	+" FROM user_info WHERE UI_NUM=?";
	PreparedStatement ps = con.prepareStatement(sql);
	ps.setString(1,"uiNum");
	
	ResultSet rs = ps.executeQuery();
	
	if (rs.next()) {
		
%>

<form method="POST" action="/user2/user-update-ok.jsp" id="frm">
	<input type="hidden" name="uiNum" value="<%="UI_NUM"%>">
    <label for="uiName">이름:</label>
    <input type="text" id="uiName" name="uiName" value="<%=rs.getString("UI_NAME")%>"><br>

    <label for="uiId">아이디:</label>
    <input type="text" id="uiId" name="uiId" value="<%=rs.getString("UI_ID")%>"><br>

    <label for="uiPwd">비밀번호:</label>
    <input type="password" id="uiPwd" name="uiPwd" value="<%=rs.getString("UI_PWD")%>"><br>

    성별:
    <label for="male">남</label>
    <input type="radio" name="uiGender" value="1" id="male" <%=(rs.getString("UI_GENDER").equals("1")) ? "checked" : "" %>>
    <label for="female">여</label>
    <input type="radio" name="uiGender" value="2" id="female" <%=(rs.getString("UI_GENDER").equals("2")) ? "checked" : "" %>><br>

    <label for="uiBirth">생일:</label>
    <input type="date" id="uiBirth" name="uiBirth" value="<%=rs.getString("UI_BIRTH")%>"><br>

    <label for="uiHobby">취미:</label>
   	<input type="checkbox" id="h1" name="uiHobby" value="사진 촬영"<%= (rs.getString("UI_HOBBY").indexOf("사진 촬영") != -1) ? "checked" : "" %>>
    <label for="h1">사진 촬영</label>
    <input type="checkbox" id="h2" name="uiHobby" value="음악 감상"<%= (rs.getString("UI_HOBBY").indexOf("음악 감상") != -1) ? "checked" : "" %>>
    <label for="h2">음악 감상</label>
    <input type="checkbox" id="h3" name="uiHobby" value="게임"<%= (rs.getString("UI_HOBBY").indexOf("게임") != -1) ? "checked" : "" %>>
    <label for="h3">게임</label><br>

    <label for="uiDesc">자기소개:</label><br>
    <textarea id="uiDesc" name="uiDesc"><%=rs.getString("UI_DESC")%></textarea><br>
    
    <button type="submit">회원 정보 수정</button>
</form>

<%} %>

</body>
</html>