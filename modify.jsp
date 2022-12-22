<%@page import="org.apache.tomcat.util.descriptor.web.LoginConfig"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<div class="container">
		<div class="col-lg-4"></div>
		<div class="col-lg-4">
			<div class="jumbotron" style="padding-top: 250px;">
<form action="modify-action.jsp" method="POST">
<fieldset>
	<legend>${login.name }님의 정보 수정</legend>
	<p>
		아이디 : <input type="text" name="userId" value="${login.userId }" readonly >
	</p>

	<p>비밀번호 : <input type="password" name="userPw" value="${login.userPw }" required></p>
	<p>성함 : <input type="text" name="name" value="${login.name }" required></p>
	<p>나이 : <input type="number" name="age" min="0" value="${login.age }" required></p>
	<p>성별 : 
		<span>
			<input type="radio" name="gender" value="남" 
			${login.gender == '남' ? 'checked' : ''}>남
		</span>
		<span>
			<input type="radio" name="gender" value="여" 
			${login.gender == '여' ? 'checked' : ''}>여
			
		</span>
	</p>
	<select name="location" required>
		<option ${login.location == '부산' ? 'selected' : '' } >부산</option>
		<option ${login.location == '서울' ? 'selected' : '' } >서울</option>
		<option ${login.location == '울산' ? 'selected' : '' } >울산</option>
	</select>
</fieldset>
<p> </p>
<p> </p>
	<p><input type="submit" value="회원정보 수정"></p>
</form>
		</div>
	</div>
</div>

</body>
</html>