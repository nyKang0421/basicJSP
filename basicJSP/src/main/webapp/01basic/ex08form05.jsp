<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="./ex08form5pro.jsp" method="post">
		<table border='1'>
		<tr>
			<td>학번</td>
			<td><input type="number" name = "stu_no"></input></td>
		</tr>
		<tr>
			<td>이름</td>
			<td><input type="text" name = "stu_name"></input></td>
		</tr>
		<tr>
			<td>학년</td>
			<td>
				<input type="radio" name="radio" value="1학년">1학년
				<input type="radio" name="radio" value="2학년">2학년
				<input type="radio" name="radio" value="3학년">3학년
				<input type="radio" name="radio" value="4학년">4학년
			</td>
		</tr>
		<tr>
			<td>선택과목</td>
			<td>
				<select name="sub">
					<option value="java">JAVA</option>
					<option value="spring">SPRING</option>
					<option value="mysql">MySQL</option>
				</select>
			</td>
		</tr>
		<tr>
			<td>취미</td>
			<td>
				<input type="checkbox" name="hab" value="운동">운동
				<input type="checkbox" name="hab" value="독서">독서
				<input type="checkbox" name="hab" value="공부">공부
				<input type="checkbox" name="hab" value="쇼핑">쇼핑
			</td>
		</tr>
		<tr>
			<td>메모</td>
			<td>
				<textarea name="memo" cols="50" rows="10"></textarea>
			</td>
		</tr>
		<tr>
			<td style="text-align:center" colspan="2"><input id="btn"  type="submit"></td>
		</tr>
	
	</table>
	</form>

</body>
</html>

<script>


</script>