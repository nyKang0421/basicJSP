<%@ page import = "java.util.Random" %>
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
	Random rd = new Random();
	int cor_num = rd.nextInt(100)+1;
%>

<form action="./updownGamePlayPro.jsp" method="get">
	<div> 치트키 : <%=cor_num %></div>
	<h1>업다운게임</h1>
	<input type="number" name="num" required>
	<button>전송</button>
	<input type="hidden" name="right" value="<%=cor_num%>">
</form>

</body>
</html>