<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!-- directive SPRING-FORM -->
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>

<!-- directive cua JSTL -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>

<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title></title>
<jsp:include page="/WEB-INF/views/common/variables.jsp"></jsp:include>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" />
<link rel="stylesheet" href="${base}/user/font/fontawesome/css/all.css" />
<link
	href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500;700;900&amp;display=swap"
	rel="stylesheet" />
<link
	href="https://fonts.googleapis.com/css2?family=Pattaya&amp;display=swap"
	rel="stylesheet" />
<link rel="stylesheet" href="${base}/user/css/style.css" />
<link rel="stylesheet" href="${base}/user/css/footer.css" />
<link href=".${base}/user/img/favicon.svg" type="image/x-icon" rel="icon" />
<link rel="stylesheet" type="text/css" href=""${base}/user/css/slick/slick.css" />
<link rel="stylesheet" href="${base}/user/css/home.css" />

<style type="text/css">
.boder {
	border: 2px solid;
	border-color: red;
}

#header__user1 {
	position: fixed;
	top: 0;
	left: 50%;
	transform: translate(-50%, -100%);
	transition: all 0.3s ease-in-out;
	z-index: 20;
	background-color: var(- -color-white);
	border-radius: 0.5rem;
	font-family: Roboto;
	font-style: normal;
	font-weight: normal;
	font-size: 1.6rem;
	line-height: 1.9rem;
	width: 38rem;
	padding-bottom: 5rem;
	visibility: hidden;
}
</style>
</head>
<body>
	<header>
		<div class="container header">
			<div class="header-left">
				<div class="logo">
					<a class="logo__link" href="./index.html"><img
						src="${base}/user/img/logo.png" alt="Cake" /></a>
				</div>
			</div>
			<div class="header-right">
				<nav class="header-right__main-menu desktop">
					<ul class="header-right__list">
						<li class="header-right__item"><a
							class="header-right__link home--active" href="./index.html">Trang
								chủ</a></li>
						<li class="header-right__item"><a
							class="header-right__link product--active" href="./product.html">Sản
								Phẩm</a></li>
						<li class="header-right__item"><a
							class="header-right__link blog--active" href="./blog.html">Tin
								Tức</a></li>
						<li class="header-right__item"><a
							class="header-right__link contact--active" href="./contact.html">Liên
								Hệ</a></li>
					</ul>
				</nav>
			</div>
		</div>
		<div class="border"></div>
	</header>
	<!--  <main> -->
	<c:if test="${not empty param.login_error }">
		<div class="alert alert-danger" role="alert">Login attempt was
			not successful, try again</div>
	</c:if>
	<div class="header__user1" style="padding: 0 400px;">
		<div class="user__box">
			<p class="user--active user__action">Đăng nhập</p>
			<p class="user__action"><a style="color: black" href="${base }/register">Đăng ký</a></p>
		</div>
		<form class="user__form" method="POST" action="/perform_login" data-number="0"
			id="user__signin">
			<div class="group-input">
				<input type="text" placeholder="User name" id="username"
					name="username" />

			</div>
			<div class="group-input group-last">
				<input type="password" placeholder="Password" id="password"
					name="password" />

			</div>
			<a class="user__form__box" href="#"><i
				class="far fa-question-circle"></i>
				<p>Quên mật khẩu</p></a>
			<button class="user__btn">ĐĂNG NHẬP</button>
			<div class="user__socail">
				<p>Hoặc đăng nhập với</p>
				<div class="user__socail__list">
					<a class="user__socail__box" href="#"><img
						src="${base}/user/img/user-1.svg" alt="facebook" /></a><a
						class="user__socail__box" href="#"><img src="${base}/user/img/user-2.svg"
						alt="google" /></a><a class="user__socail__box" href="#"><img
						src="${base}/user/img/user-3.svg" alt="twiter" /></a>
				</div>
			</div>
		</form>
		
	</div>

	<div class="border"></div>

	<footer class="footer">
		<div class="footer__top">
			<div class="container">
				<div class="row">
					<div class="col">
						<div class="footer__box">
							<h4 class="footer__top-heading">ĐĂNG KÍ NHẬN THÔNG BÁO</h4>
							<p class="footer__top-title">Đăng ký nhận thông tin khuyến
								mãi và cập nhật sản phẩm mới nhất từ Cake.</p>
							<form class="footer__top-form">
								<div class="row">
									<div class="col-xl-8 col-lg-8 col-md-8 col-sm-8 col-12">
										<input class="footer__top-input" type="text"
											placeholder="Nhập địa chỉ Email của bạn" />
									</div>
									<div class="col-xl-4 col-lg-4 col-md-4 col-sm-4 col-12">
										<button class="btn btn--form">ĐĂNG KÝ</button>
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="footer__main">
			<div class="container">
				<div class="row">
					<div class="col-xl-4 col-lg-4 col-md-4 col-sm-4">
						<div class="footer__main-logo">
							<img src="${base}/user/img/logo.svg" alt="Cake" />
						</div>
						<div class="footer__main-title">Bí quyết và tâm huyết chắt
							chiu hơn 20 năm kinh nghiệm bậc thầy tạo nên vị ngon đặc trưng
							khó cưỡng, khiến mỗi chiếc bánh là một công trình ẩm thực kỳ công
							và đẳng cấp.</div>
						<div class="footer__main-box-icon">
							<a href="#"><i class="fab fa-youtube"></i></a><a href="#"><i
								class="fab fa-twitter-square"></i></a><a href="#"><i
								class="fab fa-facebook-square"></i></a><a href="#"><i
								class="fab fa-instagram"></i></a>
						</div>
					</div>
					<div class="col-xl-4 col-lg-4 col-md-4 col-sm-4">
						<h4 class="footer__main-header">Liên kiết nhanh</h4>
						<ul class="footer__main-list">
							<li class="footer__main-item"><a class="footer__main-link"
								href="#">Về chúng tôi</a><a class="footer__main-link" href="#">Sản
									phẩm bán chạy</a><a class="footer__main-link" href="#">Tin tức
									sản phẩm</a><a class="footer__main-link" href="#">Liên hệ</a><a
								class="footer__main-link" href="#">Góp ý</a><a
								class="footer__main-link" href="./error.html">Trang lỗi</a></li>
						</ul>
					</div>
					<div class="col-xl-4 col-lg-4 col-md-4 col-sm-4">
						<h4 class="footer__main-header">Thông tin cửa hàng</h4>
						<a class="footer__main-link" href="#">
							<p class="footer__main-map">Cơ sở 1:</p>
							<p>Điện thoại: 039 539 0668</p>
							<p class="footer__main-margin">Địa chỉ: Số 4, đường Nguyễn
								Chí Thanh, Đống Đa</p>
						</a><a class="footer__main-link" href="#">
							<p class="footer__main-map">Cơ sở 2:</p>
							<p>Điện thoại: 039 539 0668</p>
							<p>Địa chỉ: Số 6, đường Nguyễn Chí Thanh, Đống Đa</p>
						</a>
					</div>
				</div>
			</div>
		</div>
		<div class="footer__bot">
			<p>Cake © 2020.</p>
		</div>
	</footer>
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
		integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
		integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"
		integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI"
		crossorigin="anonymous"></script>
	<script src="./js/jQuery.js"></script>
	<script src="./js/layout.js"></script>
	<script src="https://unpkg.com/aos@next/dist/aos.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.9.0/slick.js"
		integrity="sha512-eP8DK17a+MOcKHXC5Yrqzd8WI5WKh6F1TIk5QZ/8Lbv+8ssblcz7oGC8ZmQ/ZSAPa7ZmsCU4e/hcovqR8jfJqA=="
		crossorigin="anonymous"></script>
	<script src="./js/home.js"></script>
</body>
</html>