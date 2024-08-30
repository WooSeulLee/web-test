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
body {
            font-family: Arial, sans-serif;
            background-color: #f0f8ff; /* 파스텔 블루 */
            color: #333;
            margin: 0;
            padding: 0;
        }
        
        h1 {
            color: #ff6f61; /* 파스텔 오렌지 */
            text-align: center;
            margin-bottom: 20px;
        }

        table {
            width: 80%;
            border-collapse: collapse;
            margin: 20px auto;
            background-color: #ffffff;
            border-radius: 8px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
        }

        th, td {
            padding: 10px;
            border: 1px solid #e0e0e0; /* 연한 회색 */
        }

        th {
            background-color: #ffdfd3; /* 파스텔 오렌지 */
            color: #333;
        }
		#serch{
		margin-left: 400px;
		width: 30%
		}

</style>
</head>
<body>
<%
String uiName = request.getParameter("uiName") == null ?"":request.getParameter("uiName");
String uiGender = request.getParameter("uiGender") == null ?"":request.getParameter("uiGender");
%>

<h1>회원 리스트</h1>

<form>
	<select name="uiGender">
		<option value="1" <%= uiGender.equals("1") ? "selected":"" %>>남자</option>
		<option value="2" <%= uiGender.equals("2") ? "selected":"" %>>여자</option>
	</select>
	<input type ="text" name="uiName" value="<%=uiName%>" id="serch" placeholder="이름"><button>검색</button>
</form>

<table border="1">
<tr>
<th>번호</th>
<th>이름</th>
<th>아이디</th>
<th>비밀번호</th>
<th>성별</th>
<th>생일</th>
<th>취미</th>
<th>자기소개</th>
<th>가입 날짜</th>
<th>가입 시간</th>
<th>삭제</th>
</tr>

<%
Connection con = DBCon.getCon();
String sql = "SELECT UI_NUM, UI_NAME, UI_ID, UI_PWD, UI_GENDER, UI_BIRTH, UI_HOBBY, UI_DESC, CREDAT, CRETIM FROM user_info";

if (uiName != null && !uiName.equals("")) {
    sql += " WHERE UI_NAME LIKE ?";
    if (uiGender != null && !uiGender.equals("")) {
        sql += " AND UI_GENDER = ?";
    }
} else if (uiGender != null && !uiGender.equals("")) {
    sql += " WHERE UI_GENDER = ?";
}

PreparedStatement ps = con.prepareStatement(sql);
int result = 1;

if (uiName != null && !uiName.equals("")) {
    ps.setString(1, "%" + uiName + "%");
}


ResultSet rs = ps.executeQuery();

while (rs.next()) {
	%>
	<tr style=cursor:pointer"
	onclick="goPage(event,this,<%=rs.getString("UI_UNM") %>)"
	onmouseover="this.style.backgroundColor=''"
>
	<%

    out.println("<td>" + rs.getString("UI_NUM") + "</td>");
    out.println("<td>" + rs.getString("UI_NAME") + "</td>");
    out.println("<td>" + rs.getString("UI_ID") + "</td>");
    out.println("<td>" + rs.getString("UI_PWD") + "</td>");
    out.println("<td>" + (rs.getString("UI_GENDER").equals("1") ? "남자" : "여자") + "</td>");
    out.println("<td>" + rs.getString("UI_BIRTH") + "</td>");
    out.println("<td>" + rs.getString("UI_HOBBY") + "</td>");
    out.println("<td>" + rs.getString("UI_DESC") + "</td>");
    out.println("<td>" + rs.getString("CREDAT") + "</td>");
    out.println("<td>" + rs.getString("CRETIM") + "</td>");
    out.println("<td><button>삭제</button></td>");
    out.println("</tr>");
}

%>
</table>

<script>
	function goPage(evt, obj, uiNum){
		if(evt.target.targetName==='BUTTON'){
			return;
		}
		location.href='/user2/user-view.jsp?uiNum='+uiNum;
	}
</script>
</body>
</html>