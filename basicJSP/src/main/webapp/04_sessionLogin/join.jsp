<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h1>회원가입</h1>
<form action="./joinPro.jsp" method="post">

name: <input type="text" name="name" required> <br>
ID : <input type="text" name="id" required> <br>
PW : <input type="text" name="pw" required> <br>
<button>회원가입</button>
</form>
<button onclick="location.href">홈으로</button>

</body>
</html>