<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="./header.jsp" %>  
	<h3> 회원 로그인 </h3>
	<form action="./loginPro.jsp" method="post">
		<table border="1">
		<tr>
			<td>ID</td>
			<td><input type="text" name="id" required></td>
		</tr>
		<tr>
			<td>PW</td>
			<td><input type="text" name="pw" required></td>
		</tr>
		<tr align = "center">
			<td colspan="2"><input type="submit" value="로그인" ></td>
		</tr>	
		</table>
	</form>


<%@ include file="./footer.jsp" %>  