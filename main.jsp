<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<script>
	const mypagecheck = ${empty login}
	
	if(mypagecheck){
		alert('먼저 로그인 후 이용 가능한 기능입니다.')
		location.href = '${cpath}/index.jsp'
					
	}
</script>

<section id="hero" class="d-flex flex-column justify-content-center">
    <div class="container" data-aos="zoom-in" data-aos-delay="100">
      <h1>오늘옷때?</h1>
      <p>오늘의 <span class="typed" data-typed-items="날씨, 패션, 옷 어때?, OTTE"></span></p>
      <fieldset>
      	<legend>
		${login.name }님 환영합니다.
      	</legend>
      </fieldset>
	<p>
		<a href="logout.jsp"><button type="button" class="btn btn-outline-primary">로그아웃</button></a>
		<span><a href="mypage.jsp"><button type="button" class="btn btn-outline-primary">마이페이지</button></a></span>	
	</p>
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