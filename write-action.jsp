<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>


<jsp:useBean id="ob" class="bbs.BbsDTO"/>
<jsp:setProperty property="*" name="ob"/>
<%
	int row = daos.insert(ob);
	if(row != 0){
		response.sendRedirect("bbs.jsp");
	}
	
%>
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="js/bootstrap.js"></script>


</body>
</html>