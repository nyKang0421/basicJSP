<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="./common.jsp" %>


<%
if(dao.getLog()==0){
	%>
		<script>
			msgGoMain("관리자는 불가 합니다")
		</script>
	<%
}else{
	if(dao.isCheckPw(request.getParameter("pw"))){
		dao.removeAMember(dao.getLog());
		dao.setLog(-1);
		%>
		<script>
			msgGoMain("삭제 성공")
		</script><%
	}else{
		%>
		<script>
			msgUrl("비밀번호를 확인해 주세요","./deleteForm.jsp")
		</script>
		<%
	}
}
%>


