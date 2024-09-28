<%@page import="dao.ProductRepository"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="dto.Product"%>
<%@ page import="dao.ProductRepository" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>제품 상세보기</title>
  <!-- Vendor CSS Files -->
  <link href="../resources/assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="../resources/assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="../resources/assets/vendor/aos/aos.css" rel="stylesheet">
  <link href="../resources/assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
  <link href="../resources/assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

  <!-- Main CSS File -->
  <link href="../resources/assets/css/main.css" rel="stylesheet">
</head>
<body class="index-page">
	<!-- header include -->
	<%@ include file="navi.jsp" %>
	
	<main class="main">
		<section id="#" class="section --bs-warning mt-5">
			<div class="container position-relative">

				<div class="row mt-5">
					<h1>상품 상세 정보</h1>
				</div>
				<br />
				
				<%
					String id = request.getParameter("id");
					ProductRepository dao = ProductRepository.getInstance();
					Product product = dao.getProductById(id);
				%>
				
				<div class="row">
					<div class="col-md-6">
						<img src="../resources/assets/img/product/<%=product.getFilename() %>" alt="" />
						<h3><%= product.getPname() %></h3>
						<p><%= product.getDescription() %></p>
						<p><b>상품코드 : </b><span><%= product.getProductId() %></span></p>
						<p><b>분류 : </b><%= product.getCategory() %></p>
						<p><b>제품상태 : </b><%= product.getDescription() %></p>
						<p><b>제품가격 : </b><%= product.getUnitPrice() %></p>
						<p>
							<a href="#" class="btn btn-info">상품 주문 &raquo;</a>
							<a href="./index.jsp#products" class="btn btn-secondary">상품 목록 &raquo;</a>
						</p>
					</div>
				</div>
				
			</div>
		</section>
	</main>
	
	<!-- footer include -->
	<%@ include file="footer.jsp" %>
	
	
	
  <!-- Vendor JS Files -->
  <script src="../resources/assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="../resources/assets/vendor/php-email-form/validate.js"></script>
  <script src="../resources/assets/vendor/aos/aos.js"></script>
  <script src="../resources/assets/vendor/glightbox/js/glightbox.min.js"></script>
  <script src="../resources/assets/vendor/swiper/swiper-bundle.min.js"></script>
  <script src="../resources/assets/vendor/purecounter/purecounter_vanilla.js"></script>
  <script src="../resources/assets/vendor/imagesloaded/imagesloaded.pkgd.min.js"></script>
  <script src="../resources/assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>

  <!-- Main JS File -->
  <script src="../resources/assets/js/main.js"></script>
	
</body>
</html>