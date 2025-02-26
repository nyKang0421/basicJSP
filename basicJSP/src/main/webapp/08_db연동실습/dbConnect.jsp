<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%

String database = "mvc1db";
String url="jdbc:mysql://localhost:3306/"+database+"?charaterEncoding=UTF-8&serverTimezone=UTC";
String user ="root";
String password ="1234";
Connection conn = null;

try{
	Class.forName("com.mysql.jdbc.Driver");
	conn = DriverManager.getConnection(url,user,password); // mysql db 객체 생성
	System.out.println(conn);
}catch(Exception e){
	System.out.println("db연동 실패");
	e.printStackTrace();
}


%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>