<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!-- directive SPRING-FORM -->
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>

<!-- directive cua JSTL -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
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
<link href="./img/favicon.svg" type="image/x-icon" rel="icon" />
<link rel="stylesheet" href="${base}/user/css/product.css" />

<title>| Sản Phẩm</title>
<style>
.font-size16 {
	font-size: 16px !important;
}

.btn-sm {
	font-size: 16px !important;
}

.h6, h6 {
	font-size: 1.6rem;
}

.fa-eye:before {
	color: red;
	content: "\f06e";
}

.fa-shopping-cart:before {
	color: red;
	content: "\f07a";
}

.page-size {
	width: 65px;
	height: 65px;
}
</style>

</head>
<body>
	<jsp:include page="/WEB-INF/views/user/layouts/header.jsp"></jsp:include>
	<main>
		<div class="banner-common">
			<div class="container">
				<div class="row">
					<div class="col">
						<div class="banner-common__content">
							<h1 class="heading-primary heading-primary--white">Sản Phẩm</h1>
							<div class="banner-common__box">
								<a href="./index.html">
									<p class="banner-common__title">Trang chủ</p>
								</a>
								<div class="banner-common__icon">
									<img src="./img/arrows-banner.svg" alt="" />
								</div>
								<a href="">
									<p
										class="banner-common__title-2 banner-common__title-2--active">Sản
										Phẩm</p>
								</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<main class="product">
			<div class="container">
				<div class="row">
					<div class="col-xl-3 col-lg-3">
						<div id="product__filter-icon">
							<i class="fas fa-filter"></i>
						</div>
						<div class="product__background"></div>
						<form class="isClose" action="index.html" method="GET"
							data-aos="fade-up" id="product__filter">
							<div class="product__section">
								<div class="product__section-header">
									<h4 class="product__section__title">LOẠI BÁNH</h4>
									<span></span><i class="fas fa-chevron-right"></i>
								</div>
								<div class="product__wraper">
									<div class="product__checkbox-group">
										<input type="checkbox" name="loaiBanh" id="banhKem"
											value="banhKem" /> <label for="banhKem">Bánh Kem</label>
									</div>
									<div class="product__checkbox-group">
										<input type="checkbox" name="loaiBanh" id="banhSinhNhat"
											value="banhSinhNhat" /> <label for="banhSinhNhat">Bánh
											sinh nhật</label>
									</div>
									<div class="product__checkbox-group">
										<input type="checkbox" name="loaiBanh" id="anNhanh"
											value="anNhanh" /> <label for="anNhanh"> Ăn nhanh</label>
									</div>
									<div class="product__checkbox-group">
										<input type="checkbox" name="loaiBanh" id="bieuTang"
											value="bieuTang" /> <label for="bieuTang"> Biếu tặng</label>
									</div>
								</div>
							</div>
							<div class="product__section">
								<div class="product__section-header">
									<h4 class="product__section__title">KHOẢNG GIÁ</h4>
									<span></span><i class="fas fa-chevron-right"></i>
								</div>
								<div class="product__wraper">
									<div class="product__checkbox-group">
										<input type="checkbox" name="khoangGia" id="duoi50"
											value="duoi50" /> <label for="duoi50">Dưới 50,000</label>
									</div>
									<div class="product__checkbox-group">
										<input type="checkbox" name="khoangGia" id="tu50den100"
											value="tu50den100" /> <label for="tu50den100">Từ
											50,000 đến 100,000</label>
									</div>
									<div class="product__checkbox-group">
										<input type="checkbox" name="khoangGia" id="tu100den500"
											value="tu100den500" /> <label for="tu100den500"> Từ
											100,000 đến 500,000</label>
									</div>
									<div class="product__checkbox-group">
										<input type="checkbox" name="khoangGia" id="tren500"
											value="tren500" /> <label for="tren500"> Trên
											500,000</label>
									</div>
								</div>
							</div>

							<div class="product__border"></div>
							<div class="product__action">
								<button class="product__btn">Áp dụng</button>
								<button class="product__btn product__btn--white">Bỏ lọc</button>
							</div>
							<div id="product__close">
								<p>Đóng</p>
							</div>
						</form>
					</div>
					<div class="col-xl-9 col-lg-9 col-md-12">
						<div class="product__sort" data-aos="fade-up">
							<form action="${base }/shop" method="GET" style="padding-right: 350px">
								<div class="input-group float-left">
									<input type="text" name="keywork" class="form-control"
										placeholder="Search by name" style="font-size: 15px">
									<div class="input-group-append">
										<button type="submit" class="input-group-text bg-transparent text-primary"
											style="font-size: 15px; color: red !important;"> <i
											class="fa fa-search"></i>
										</button>
									</div>
								</div>
							</form>
							<p class="product__sort-title">Sắp xếp theo:</p>
							<select name="product-sort" id="product__select">
								<option value="default" select="selected">Mặc định</option>
								<option value="az">A đến Z</option>
								<option value="za">Z đến A</option>
								<option value="lowHigh">Giá từ thấp đến cao</option>
								<option value="highLow">Giá từ cao đến thấp</option>
							</select><i class="fas fa-chevron-right product__sort-icon"></i>
						</div>
					
						<div class="product__list">
							<div id="content" class="row">
								<c:choose>
									<c:when test="${productPages.size()>0 }">
										<c:forEach var="listpr" items="${productShop.content}">
											<div class="col-xl-4 col-lg-4 col-md-4 col-sm-6 col-12">
												<div class="best-slice__card" data-aos="fade-up"
													data-aos-delay="0">
													<div class="best-slice__photo">
														<a href="${base }/detail/${listpr.id}"><img
															src="${base}/upload/${listpr.avatar}"
															alt="./img/banh-hamburger" title="Bánh Hamburger" /></a>
													</div>
													<div class="best-slice__content">
														<a href="${base }/detail/${listpr.id}">
															<h3 class="best-slice__heading">${listpr.title}</h3>
														</a>
														<div class="best-slice__rate">
															<i class="fas fa-star"></i><i class="fas fa-star"></i><i
																class="fas fa-star"></i><i class="fas fa-star"></i><i
																class="fas fa-star"></i>
														</div>
														<div class="best-slice__price">${listpr.price}</div>
														<button class="btn btn--red btn--transtion"
															onclick="addToCart(${listpr.id},1)">
															<span>Thêm Vào Giỏ</span><i class="fas fa-cart-plus"></i>
														</button>
													</div>
												</div>
											</div>
										</c:forEach>
									</c:when>
									<c:otherwise>
										<tr>
											<td colspan="8" align="center"
												class="pagination justify-content-center mb-3">No
												Product Available</td>
										</tr>
									</c:otherwise>
								</c:choose>


								<div class="product__pages" style="width: 100%">
									<div class="col-12 pb-1">
										<nav aria-label="Page navigation example">
											<ul class="pagination  float-right">
												<c:if test="${number > 0 }">
													<li class="page-item " style="width: 90px;"><a
														class="page-link" href="${base }/shop?page=0"
														style="border-radius: 100px">First</a></li>
													<li class="page-item " style="width: 120px;"><a
														class="page-link"
														href="${base }/shop?page=${productShop.number - 1}"
														style="border-radius: 100px">Previous</a></li>
												</c:if>
												<c:forEach var="i" items="${pageNumbers }">
													<c:if test="${productShop.totalPages > 1 }">
														<li class="page-item page-size"><a
															href="${base }/shop?page=${i-1}" class="page-link"
															style="border-radius: 100px">
																<th>${i }</th>
														</a></li>
													</c:if>
												</c:forEach>
												<c:if test="${number < productShop.totalPages }">
													<li class="page-item " style="width: 90px;"><a
														class="page-link"
														href="${base }/shop?page=${productShop.number + 1}"
														style="border-radius: 100px">Next</a></li>
													<li class="page-item " style="width: 70px;"><a
														class="page-link"
														href="${base }/shop?page=${productShop.totalPages - 1}"
														style="border-radius: 100px;">Last</a></li>
												</c:if>
											</ul>
										</nav>
									</div>


								</div>
							</div>
						</div>
						<!-- end -->
					</div>
				</div>
			</div>
		</main>
	</main>
	<jsp:include page="/WEB-INF/views/user/layouts/footer.jsp"></jsp:include>
	<jsp:include page="/WEB-INF/views/user/layouts/js.jsp"></jsp:include>
	<script type="text/javascript">
		 function addToCart(productId,quanlity) {
			    let data = {
					productId: productId,
					quanlity: quanlity	
				};
				 jQuery.ajax({
					url : "/cart/add",
					type : "post",
					contentType : "application/json",
					data : JSON.stringify(data),
					dataType : "json", // kieu du lieu tra ve tu controller la json
					success : function(jsonResult) {
						let totalItems = jsonResult.totalItems;
						jQuery("#totalCartItemId").html(totalItems);
						alert(jsonResult.message); 
						
					},
					error : function(jqXhr, textStatus, errorMessage) { // error callback 
						
					} 
				});     
		 }
		
			function searchByName(param){
				var txtSearch = param.value;
				$.ajax({
					url : "searchByAjax",
					type : "get",
					data: {
						txt: txtSearch
					},
					
					success: function (data){
						var row = document.getElementById("content");
						row.innerHTML = data;
					},
					error: function (xhr){
						//Do Something
					}
					 
				});
			}
	
	</script>
</body>
</html>