<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="./header.jsp" %>  

<h3> 회원탈퇴 </h3>
	<form action="./deletePro.jsp" method="post">
		<table border="1">
		<tr>
			<td>PW</td>
			<td><input type="text" name="pw" required></td>
		</tr>
		<tr align = "center">
			<td colspan="2"><input type="submit" value="회원탈퇴" ></td>
		</tr>	
		</table>
	</form>


<%@ include file="./footer.jsp" %>  

