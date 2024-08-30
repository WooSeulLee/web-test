<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form method="POST" action="/user2/user-insert-ok.jsp">
    <label for="uiName">이름:</label>
    <input type="text" id="uiName" name="uiName"><br>

    <label for="uiId">아이디:</label>
    <input type="text" id="uiId" name="uiId"><br>

    <label for="uiPwd">비밀번호:</label>
    <input type="password" id="uiPwd" name="uiPwd"><br>

    성별:
    <label for="male">남</label>
    <input type="radio" name="uiGender" value="1" id="male">
    <label for="female">여</label>
    <input type="radio" name="uiGender" value="2" id="female"><br>

    <label for="uiBirth">생일:</label>
    <input type="date" id="uiBirth" name="uiBirth"><br>

    <label for="uiHobby">취미:</label>
    <input type="checkbox" id="h1" name="uiHobby" value="사진 촬영">
    <label for="h1">사진 촬영</label>
    <input type="checkbox" id="h2" name="uiHobby" value="음악 감상">
    <label for="h2">음악 감상</label>
    <input type="checkbox" id="h3" name="uiHobby" value="게임">
    <label for="h3">게임</label><br>

    <label for="uiDesc">자기소개:</label><br>
    <textarea id="uiDesc" name="uiDesc"></textarea><br>
    
    <button type="submit">회원가입</button>
</form>




</body>
</html>