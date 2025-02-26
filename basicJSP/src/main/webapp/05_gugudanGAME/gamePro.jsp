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
	boolean check = dao.checkAns(Integer.parseInt(request.getParameter("ans")));
%>



<%if(check){%>
<script>
	alert("정답입니다")
	location.href='./game.jsp';
</script>
<%} else{ %>
<script>
	alert("오답입니다")
	location.href='./game.jsp';
</script>
<%} %>

</body>
</html>