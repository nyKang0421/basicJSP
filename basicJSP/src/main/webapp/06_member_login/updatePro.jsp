<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="./common.jsp" %>


<%
if(dao.isCheckPw(request.getParameter("pw"))){
	dao.updateAMember(request.getParameter("name"), request.getParameter("sex"));
	%>
		<script>
			msgGoMain("수정 성공")
		</script>
	<%
}else{
	%>
	<script>
		msgUrl("비밀번호를 확인해 주세요","./updateForm.jsp")
	</script>
<%
}

%>