<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
<jsp:useBean id="ob7" class="bbs.BbsDTO"/>
<jsp:setProperty property="*" name="ob7"/>
<%
	int row = daos.modify(ob7);
%>
<script>
	alert('수정 완료')
	location.href='${cpath}/bbs.jsp'
</script>

</body>
</html>