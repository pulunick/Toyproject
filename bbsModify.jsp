<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
<% 

	BbsDTO ob = daos.selectOne(request.getParameter("idx"));
	pageContext.setAttribute("ob", ob);
%>
<div class="container">
		<div class="row">
		<form method="GET" action="bbsModifyAction.jsp">
			<table class="table table-striped" style="text-align: center; border: 1px solid #dddddd;">
				<thead>
					<tr>
						<th colspan="2" style="background-color: #eeeeee; text-align: center;">게시판 글쓰기 양식</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<input type="hidden" name="idx" value="${ob.idx }" >
						<td><input value="${ob.title }" 
						type="text" class="form-control" placeholder="글 제목" name="title" maxlength="50"></td>
					</tr>
					<tr>
						<td><input value="${ob.content }"
						class="form-control" placeholder="내용 입력" name="content" maxlength="2048" style="height:350px;"></textarea></td>
					</tr>
				</tbody>
			</table>
			<input type="submit" class="btn btn-primary pull-right" value="수정하기">
		</form>
		</div>
	</div>
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="js/bootstrap.js"></script>

</body>
</html>

</body>
</html>