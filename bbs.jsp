<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<div class="container">
	<div class="section-title" style="padding-top: 150px;">
        <h2>패션 게시판</h2>
         <p></p>
    </div>
		<div class="row" style="padding-top: 50px;">
			<table class="table table-striped table-bordered table-hover" style="text-align: center; border: 1px solid #dddddd;">
				<thead>
					<tr>
						<th style="background-color: #eeeeee; text-align: center;">번호</th>
						<th style="background-color: #eeeeee; text-align: center;">제목</th>
						<th style="background-color: #eeeeee; text-align: center;">작성자</th>
						<th style="background-color: #eeeeee; text-align: center;">작성일</th>
					</tr>
				</thead>
				<tbody>
				
					<c:forEach var="row" items="${daos.selectList() }">
					
					<tr class="bbs-table" onclick="location.href='bbs-detail.jsp?idx=${row.idx }'" style="cursor:Pointer;">
						<td>${row.bbsId }</td>
						<td>${row.title }</td>
						<td>${row.userId }</td>
						<td>${row.bdate }</td>
					</tr>
					</c:forEach>
				</tbody>
			</table>
			<a href="write.jsp"  class="btn btn-primary pull-right">글쓰기</a>
		</div>
	</div>
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="js/bootstrap.js"></script>

</body>
</html>