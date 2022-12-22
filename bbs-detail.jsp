<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<%	
	pageContext.setAttribute("idx", request.getParameter("idx"));
%>
<c:set var="row" value="${daos.selectOne(idx) }"/>
<div class="container" >
<div class="section-title" style="padding-top: 100px;">
        <h2>패션 게시판</h2>
         <p>상세보기</p>
    </div>
		<div class="panel" style="margin-left:1px;">
<div id="contAreaBox">
<div class="panel">
<div class="panel-body">
<div class="table-responsive" style="text-align:center;">
<table id="datatable-scroller"
	class="table table-bordered tbl_Form">
	<caption></caption>
	<colgroup>
		<col width="250px" />
		<col />
	</colgroup>
	<tbody>
		<tr>
			<th class="active" >제목</th>
			<td>
				${row.title }
			</td>
		</tr>
		<tr>
			<th class="active">작성자</th>
			<td>
				${row.userId }
			</td>
		</tr>
		<tr>
			<th class="align-middle" >내용</th>
			<td>
				${row.content }
			</td>
		</tr>
	</tbody>
</table>
</div>
	<div style="margin-left:1px;">
	<a href="bbs.jsp" class="btn btn-primary">목록</a>
	<a href="bbsModify.jsp?idx=${row.idx }" class="btn btn-primary">수정</a>
	<a href="bbsDelete.jsp?idx=${row.idx }" class="btn btn-primary">삭제</a>
	</div>
</div>
</div>
</div>
</div>
</div>
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="js/bootstrap.js"></script>

</body>
</html>