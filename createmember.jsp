<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>


<div class="container">
		<div class="col-lg-4"></div>
		<div class="col-lg-4">
			<div class="jumbotron" style="padding-top: 250px;">
				<form method="POST" action="createmember-action.jsp">
					<h3 style="text-align: center;">회원가입 화면</h3>
					<div class="form-group">
						<input type="text" value="${cmmember.userId }" class="form-control" name="userId" placeholder="Id입력" required autofocus>
							${idcheck }
					</div>
					<br>
					<div class="form-group">
						<input type="password" value="${cmmember.userPw }" class="form-control" name="userPw" placeholder="PW입력" required>
					</div>
					<br>
					<div class="form-group">
						<input type="text" value="${cmmember.name }" class="form-control" name="name" placeholder="이름 입력" required>
					</div>
					<br>
					<div class="form-group">
						<input type="number" value="${cmmember.age }" class="form-control" name="age" min="0" placeholder="나이 입력" required>
					</div>
					<br>
					<div class="form-group" style="text-align: center;">
						<div class="btn-group" data-toggle="buttons">
							<label class="btn btn-primary active">
								<input type="radio" name="gender" ${cmmember.gender == '남' ? 'checked' : '' } autocomplete="off" value="남">남성
							</label>
							<label class="btn btn-primary">
								<input type="radio" name="gender" ${cmmember.gender == '여' ? 'checked' : '' } autocomplete="off" value="여">여성
							</label>
						</div>
					</div>
					<br>
					<div class="form-group">
						<select name="location" class="form-control" required>
							<option>부산</option>
							<option>서울</option>
							<option>울산</option>
						</select>
					</div>
					<br>
					<br>
					<div class="form-group">
					<input type="submit" class="btn btn-primary form-control" value="회원가입">
					</div>
				</form>
			</div>
		</div>
		<div class="col-lg-4"></div>
	</div>

	
	<script src="assets/vendor/purecounter/purecounter_vanilla.js"></script>
  <script src="assets/vendor/aos/aos.js"></script>
  <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="assets/vendor/glightbox/js/glightbox.min.js"></script>
  <script src="assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
  <script src="assets/vendor/swiper/swiper-bundle.min.js"></script>
  <script src="assets/vendor/typed.js/typed.min.js"></script>
  <script src="assets/vendor/waypoints/noframework.waypoints.js"></script>
  <script src="assets/vendor/php-email-form/validate.js"></script>

  <!-- Template Main JS File -->
  <script src="assets/js/main.js"></script>
	
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="js/bootstrap.js"></script>
</body>
</html>