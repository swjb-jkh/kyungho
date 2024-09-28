<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="dto.Product"%>
<jsp:useBean id="productDAO" class="dao.ProductRepository"
	scope="session" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 등록</title>
<!-- Vendor CSS Files -->
<link href="../resources/assets/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<link
	href="../resources/assets/vendor/bootstrap-icons/bootstrap-icons.css"
	rel="stylesheet">
<link href="../resources/assets/vendor/aos/aos.css" rel="stylesheet">
<link href="../resources/assets/vendor/glightbox/css/glightbox.min.css"
	rel="stylesheet">
<link href="../resources/assets/vendor/swiper/swiper-bundle.min.css"
	rel="stylesheet">

<!-- Main CSS File -->
<link href="../resources/assets/css/main.css" rel="stylesheet">
</head>
<body class="index-page">
	<!-- header include -->
	<%@ include file="navi.jsp"%>

	<main class="main">
		<section id="#" class="section --bs-warning mt-5">
			<div class="container position-relative">

				<div class="row mt-5">
					<h1>상품 등록</h1>
				</div>
				<br />
				<div class="row">
					<form class="g-3" action="./processAddProduct.jsp" method="post">
						<div class="row m-3">
							<div class="col-2">
								<label for="newProduct" class="">상품 코드</label>
							</div>
							<div class="col-4">
								<input type="text" class="form-control"	id="newProduct" 
									placeholder="" name="newProduct">							
							</div>
						</div>

						<div class="row m-3">
							<div class="col-2">
								<label for="pName" class="">상품명</label>
							</div>
							<div class="col-4">
								<input type="text" class="form-control" id="pName"
									placeholder="" name="pName">
							</div>
						</div>

						<div class="row m-3">
							<div class="col-2">
								<label for="unitPrice" class="">상품 가격</label>
							</div>
							<div class="col-4">
								<input type="text" class="form-control" id="unitPrice"
									placeholder="" name="unitPrice">
							</div>
						</div>
						
						<div class="row m-3">
							<div class="col-2">
								<label for="description" class="">상세 정보</label>
							</div>
							<div class="col-4">
								<input type="text" class="form-control" id="description"
									placeholder="" name="description">
							</div>
						</div>
						
						<div class="row m-3">
							<div class="col-2">
								<label for="category" class="">분류</label>
							</div>
							<div class="col-4">
								<input type="text" class="form-control" id="category"
									placeholder="" name="category">
							</div>
						</div>
						
						<div class="row m-3">
							<div class="col-2">
								<label for="condition" class="">제품 상태</label>
							</div>
							<div class="col-4">
								<input type="radio" id="New"
									placeholder="" value="New" name="condition" checked>
								<label for="New">신제품</label> 
								<input type="radio"	id="Old" 
									placeholder="" value="Old" name="condition">
								<label for="Old">중고품</label> 
							</div>
						</div>

						<div class="row m-3">
							<div class="col-6">
								<input type="submit" 
									class="btn btn-secondary mb-3 btn-block" value="등록"/>
							</div>
						</div>
					</form>
				</div>
			</div>
		</section>
	</main>

	<!-- footer include -->
	<%@ include file="footer.jsp"%>



	<!-- Vendor JS Files -->
	<script
		src="../resources/assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	<script src="../resources/assets/vendor/php-email-form/validate.js"></script>
	<script src="../resources/assets/vendor/aos/aos.js"></script>
	<script src="../resources/assets/vendor/glightbox/js/glightbox.min.js"></script>
	<script src="../resources/assets/vendor/swiper/swiper-bundle.min.js"></script>
	<script
		src="../resources/assets/vendor/purecounter/purecounter_vanilla.js"></script>
	<script
		src="../resources/assets/vendor/imagesloaded/imagesloaded.pkgd.min.js"></script>
	<script
		src="../resources/assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>

	<!-- Main JS File -->
	<script src="../resources/assets/js/main.js"></script>

</body>
</html>