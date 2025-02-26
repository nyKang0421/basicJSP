<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
<%@ include file="./header.jsp" %>  
	
	<%if(dao.getLog() == -1){ %>
		<h1>메인:로그아웃 상태</h1>
		
	
	<%} else { %>
		<h1>메인:로그인 상태</h1>
		<a href="./logoutPro.jsp">로그아웃</a>
		
		
	<%} %>


<%@ include file="./footer.jsp" %>  