<%@page import="gugudan.GugudanDAO"%>
<%@page import="gugudan.GugudanVO"%>
<%@page import="java.util.ArrayList"%>
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
	GugudanDAO dao = (GugudanDAO) session.getAttribute("dao");
	ArrayList<GugudanVO> arr = dao.getQuiz();
%>


<h1>구구단 게임</h1>
<%if(dao.getCnt() >= 5){ %>
<h3>게임 종료! 당신의 총점수 <%=dao.getScore() %></h3>
<a href="./index.jsp">처음으로</a>
<%} else { 
	int num1 = arr.get(dao.getCnt()).getNum1();
	int num2 = arr.get(dao.getCnt()).getNum2();
%>
<h3><%=dao.getCnt()+1 %> 번째 문제 (현재 점수 : <%=dao.getScore() %>)</h3>
<form action="./gamePro.jsp" method = "post">
<h3><%=num1 %> X <%=num2 %> <input type ="number" name="ans" required></h3> 
<input type="submit" value="전송">
</form>
<%} %>


</body>
</html>