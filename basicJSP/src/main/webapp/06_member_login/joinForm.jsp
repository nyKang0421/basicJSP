<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="./header.jsp" %>  

	<h3> 회원가입 페이지 </h3>
	<form action="./joinPro.jsp" method="post">
		<table border="1">
		<tr>
			<td>회원가입 ID</td>
			<td><input type="text" name="id" required></td>
		</tr>
		<tr>
			<td>회원가입 PW</td>
			<td><input type="text" name="pw" required></td>
		</tr>
		<tr>
			<td>회원가입 name</td>
			<td><input type="text" name="name" required></td>
		</tr>
		<tr>
			<td>성별</td>
			<td><input type="radio" name="sex" value="true" checked> 남성</input>
			<input type="radio" name="sex" value="false"> 여성</input></td>
		</tr>
		<tr align = "center">
			<td colspan="2"><input type="submit" value="회원가입" ></td>
		</tr>	
		</table>
	</form>


<%@ include file="./footer.jsp" %>  