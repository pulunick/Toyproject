<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
<%
	String cookieValue="";
	Cookie[] cookies = request.getCookies();
	
	for(int i = 0;cookies!=null && i < cookies.length;i++){
		Cookie c = cookies[i];
		if(c.getName().equals("userid")){
			cookieValue = c.getValue();
			break;
		}
	}
	pageContext.setAttribute("userid", cookieValue);
%>

<% session.removeAttribute("cm") ;%> 

<%
session.removeAttribute("cmmember");
session.removeAttribute("idcheck");
%>


  <!-- ======= Hero Section ======= -->

  <section id="hero" class="d-flex flex-column justify-content-center">
    <div class="container" data-aos="zoom-in" data-aos-delay="100">
      <h1>오늘옷때?</h1>
      <p>오늘의 <span class="typed" data-typed-items="날씨, 패션, 옷 어때?, OTTE"></span></p>
      		
      	<form  method="POST" action="login-action.jsp">
      		<p>
			<input type="text" value="${cookie.userid.value }" name="userId" placeholder="ID 입력" required autofocus
				style="width:30%">
				${loginerr}
			</p>
			<p><input type="password" name="userPw" placeholder="PW 입력" required
				style="width:30%"></p>
			<p><input type="checkbox" name="storeid" ${empty cookie.userid ? '' : 'checked' }>    ID 저장</p>
			<p><button class="btn btn-outline-primary" type="submit" style="width:30%">로그인</button></p>
      	</form>
			<p><a href="createmember.jsp"><button type="button" class="btn btn-outline-primary" style="width:30%">회원 가입</button></a></p>
		
      <div class="social-links">
        <a href="#" class="twitter"><i class="bx bxl-twitter"></i></a>
        <a href="#" class="facebook"><i class="bx bxl-facebook"></i></a>
        <a href="#" class="instagram"><i class="bx bxl-instagram"></i></a>
        <a href="#" class="google-plus"><i class="bx bxl-skype"></i></a>
      </div>
    </div>
  </section><!-- End Hero -->





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
</body>
</html>