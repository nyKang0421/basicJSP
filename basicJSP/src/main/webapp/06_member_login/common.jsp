<%@page import="member.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script src="./common.js"> </script>    
<%
MemberDAO dao = null;
//System.out.println(session.getAttribute("dao"));
//System.out.println("출력");
if(session.getAttribute("dao")==null){
	System.out.println("common.jsp");
	response.sendRedirect("index.jsp");
	return;
}else{
	dao = (MemberDAO)session.getAttribute("dao");
}
%>