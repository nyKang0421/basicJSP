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
		int ans_num = Integer.parseInt(request.getParameter("num"));
		int cheat_num = Integer.parseInt(request.getParameter("right"));
		String result = "";
		if(ans_num > cheat_num){
			result = "Up";
		}else if(ans_num < cheat_num){
			result = "Down";
		}else{
			result = "정답입니다 : "+cheat_num;
		}
	%>
	
	<h1><%=result %></h1>
	
</body>
</html>