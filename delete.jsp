<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<div class="container">
		<div class="col-lg-4"></div>
		<div class="col-lg-4">
			<div class="jumbotron" style="padding-top: 300px;" width="100%">
				<h2>${login.name }님 탈퇴 하시겠습니까??</h2>
					<P><a href="delete-action.jsp"><button>탈퇴하겠습니다.</button></a></P>
					<P><a href="main.jsp"><button>Home</button></a></P>
			</div>
		</div>
	<div class="col-lg-4"></div>
</div>

</body>
</html>