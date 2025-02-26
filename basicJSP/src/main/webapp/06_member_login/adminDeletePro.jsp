<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="./common.jsp" %>

<%
	if(dao.getLog() == -1){ %>
		<script>
			msgGoMain("로그인 상태에서 가능합니다");
		</script>
		<%
	}else if(dao.getLog() == 0){
		if(dao.removeAMember(Integer.parseInt(request.getParameter("idx")))){
			%>
			<script>
				msgUrl("삭제 성공","./memberList.jsp");
			</script>
			<%
		}else{
			%>
			<script>
				msgUrl("삭제 실패","./memberList.jsp");
			</script>
			<%
		}
	}else {
		%>
			<script>
				msgUrl("관리자 메뉴입니다","./memberList.jsp");
			</script>
		<%
		
	}


%>