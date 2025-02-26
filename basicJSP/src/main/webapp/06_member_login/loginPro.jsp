<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="./common.jsp" %>

<%

	String input_id = request.getParameter("id");
	String input_pw = request.getParameter("pw");
	
	boolean isLogin = dao.isLogin(input_id, input_pw);
	System.out.println(isLogin);
%>

<%if(isLogin){%>
	<script>
		msgGoMain("로그인 성공");
	</script>
<%}else{%>
	<script>
	    msgUrl("아이디 또는 비밀번호를 확인해 주세요", "./loginForm.jsp");
	</script>
<%}%>