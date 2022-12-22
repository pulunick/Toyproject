<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<%

	int idx = Integer.parseInt(request.getParameter("idx"));
	int row = daos.delete(idx);
%>

<script>
	alert('삭제 완료되었습니다.')
	location.href='${cpath}/bbs.jsp'
</script>

</body>
</html>