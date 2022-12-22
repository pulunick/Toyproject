<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
<jsp:useBean id="user" class="toyproject.ToyMemberDTO"/>
<jsp:setProperty property="*" name="user"/>

<%
	int row = dao.insert(user);

	if(row==0){
		session.setAttribute("idcheck", "ID가 중복됩니다.");
		session.setAttribute("cmmember", user);
		response.sendRedirect("createmember.jsp");
	}
	else{
		session.removeAttribute("cmmember");
		session.removeAttribute("idcheck");
		session.setAttribute("cm",user);
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('환영합니다.')");
		script.println("location.href = 'index.jsp'");
		script.println("</script>");
	}
%>

</body>
</html>