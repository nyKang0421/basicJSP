<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="./header.jsp" %>  
	
<%
	if(dao.getLog() == 0){
		%>
		<script>
			msgGoMain("회원전용 메뉴입니다")
		</script>
		
		<%
	}else{
		System.out.println(dao.getLog());
		%>
		<h3> 회원수정 </h3>
	<form action="./updatePro.jsp" method="post">
		<table border="1">
		<tr>
			<td>ID</td>
			<td><input type="text" name="id" value="<%=dao.getList().get(dao.getLog()).getId() %>" readonly></td>
		</tr>
		<tr>
			<td>PW</td>
			<td><input type="text" name="pw"  required></td>
		</tr>
		<tr>
			<td>name</td>
			<td><input type="text" name="name" value="<%=dao.getList().get(dao.getLog()).getName() %>" required></td>
		</tr>
		<tr>
			<td>성별</td>
			<td><input type="radio" name="sex" value=true <%if(dao.getList().get(dao.getLog()).isGender())%> checked<% %>> 남성</input>
			<input type="radio" name="sex" value=false <%if(!dao.getList().get(dao.getLog()).isGender())%> checked<% %>> 여성</input></td>
		</tr>
		<tr align = "center">
			<td colspan="2"><input type="submit" value="정보수정" ></td>
		</tr>	
		</table>
		</form>
		
		<%
	}

%>


<%@ include file="./footer.jsp" %>  

