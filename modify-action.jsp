<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
<%@ page import="java.io.PrintWriter" %>

<jsp:useBean id="user" class="toyproject.ToyMemberDTO"/>
<jsp:setProperty property="*" name="user"/>

<%
	int result = dao.modify(user);
	ToyMemberDTO ob = dao.selectOne(user.getUserId());
	if (result == -1) {
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('수정실패했습니다.')");
		script.println("history.back()");
		script.println("</script>");
	} else {
		session.setAttribute("login", ob);
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('수정 성공했습니다.')");
		script.println("location.href = 'main.jsp'");
		script.println("</script>");
	}
%>

</body>
</html>