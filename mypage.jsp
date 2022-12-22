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
 <section id="about" class="about" style="padding-top: 300px;">
      <div class="container" data-aos="fade-up">

        <div class="section-title">
          <h2>MyPage</h2>
          <p></p>
        </div>

        <div class="row">
          <div class="col-lg-4">
            <img src="assets/img/profile-img.png" class="img-fluid" alt="">
          </div>
          <div class="col-lg-8 pt-4 pt-lg-0 content">
            <h3>${login.name }님의 마이페이지</h3>
            <p class="fst-italic">
              “Dress shabbily and they remember

				the dress; dress impeccably and

				 they remember the woman.” 

				- Coco Chanel
            </p>
            <div class="row">
              <div class="col-lg-6">
                <ul>
                  <li><i class="bi bi-chevron-right"></i> <strong>Name:</strong> <span>${login.name }</span></li>
                  <li><i class="bi bi-chevron-right"></i> <strong>ID:</strong> <span>${login.userId }</span></li>
                  <li><i class="bi bi-chevron-right"></i> <strong>PW:</strong> <span>*******</span></li>
                </ul>
              </div>
              <div class="col-lg-6">
                <ul>
                  <li><i class="bi bi-chevron-right"></i> <strong>Age:</strong> <span>${login.age }</span></li>
                  <li><i class="bi bi-chevron-right"></i> <strong>Gender:</strong> <span>${login.gender }	</span></li>
                  <li><i class="bi bi-chevron-right"></i> <strong>Location:</strong> <span>${login.location }</span></li>
                </ul>
              </div>
            </div>
            <p>
				<a href="${cpath }/modify.jsp"><button type="button" class="btn btn-outline-primary">회원 수정</button></a>
				<a href="${cpath }/delete.jsp"><button type="button" class="btn btn-outline-primary">회원 탈퇴</button></a>

            </p>
          </div>
        </div>

      </div>
    </section><!-- End About Section -->



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