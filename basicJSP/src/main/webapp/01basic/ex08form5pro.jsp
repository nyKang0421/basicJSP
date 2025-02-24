<%@page import = "java.util.Arrays"%>
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
	String stu_no = request.getParameter("stu_no");
	String stu_name = request.getParameter("stu_name");
	String grade = request.getParameter("radio");
	String sub = request.getParameter("sub");
	String hab[] = request.getParameterValues("hab");
	String hab_info = Arrays.toString(hab);
	String memo = request.getParameter("memo");
%>
<table border="1">
	<tr>
		<td>학번</td>
		<td>이름</td>
		<td>학년</td>
		<td>과목</td>
		<td>취미</td>
		<td>메모</td>
	</tr>
	<tr>
		<td><%= stu_no%></td>
		<td><%= stu_name%></td>
		<td><%= grade%></td>
		<td><%= sub%></td>
		<td><%= hab_info%></td>
		<td><%= memo%></td>
	</tr>
	
</table>

</body>
</html>