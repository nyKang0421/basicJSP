<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="./common.jsp" %>

<%-- 
process page 는 나중에 서블렛 자바 클래스 부분 

자바랑 자바스크립트만 쓴다 : 화면에 보이는 부분이 아니라 
사용자의 요청을 처리하는 부분 
그리고 다른 페이지로 연결해준다

 --%>
 
 <%
 	
 	String input_id = request.getParameter("id");
	String input_pw = request.getParameter("pw");
	String input_name = request.getParameter("name");
	boolean input_sex = request.getParameter("name").equals("true")?true:false;
	System.out.println(input_sex);
	boolean isJoin = dao.isJoin(input_id,input_pw,input_name,input_sex);
 	
	
 %>
 
 <%if(isJoin){%>
	<script>
		msgGoMain("회원가입 성공");
	</script>
<%}else{%>
	<script>
	    msgUrl("회원가입 실패, 동일 아이디 존재", "./joinForm.jsp");
	</script>
<%}%>