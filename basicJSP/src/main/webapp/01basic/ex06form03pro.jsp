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
	String num1 = request.getParameter("number1");
	String num2 = request.getParameter("number2");
	String result = "";
	
	if(num1.length() == 0 || num2.length() == 0){
		result = "비어있는 값이 있습니다";
	} else {
		int n1 = Integer.parseInt(num1);
		int n2 = Integer.parseInt(num2);
		if(n1 > n2){
			result = num1 + "이(가) 더 큽니다";
		} else if(n1 < n2){
			result = num2 + "이(가) 더 큽니다";
		} else {
			result = "두 수가 같습니다";
		}
	}

%>

<h1> <%= result %></h1>
<%-- 기존 값을 사용 하려면 반드시 <% %> 안에 값을 넣어줘야 한다 --%>

</body>
</html>