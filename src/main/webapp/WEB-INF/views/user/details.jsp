<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!-- directive cua JSTL -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <jsp:include page="/WEB-INF/views/common/variables.jsp"></jsp:include>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"/>
  <link rel="stylesheet" href="${base}/user/font/fontawesome/css/all.css"/>
  <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500;700;900&amp;display=swap" rel="stylesheet"/>
  <link href="https://fonts.googleapis.com/css2?family=Pattaya&amp;display=swap" rel="stylesheet"/>
  <link rel="stylesheet" href="${base}/user/css/style.css"/>
  <link rel="stylesheet" href="${base}/user/css/footer.css"/>
  <link href="./img/favicon.svg" type="image/x-icon" rel="icon"/>
  <link rel="stylesheet" type="text/css" href="${base}/user/css/slick/slick.css"/>
  <link rel="stylesheet" href="${base}/user/css/slick/slick-theme.css"/>
  <link rel="stylesheet" href="${base}/user/css/details.css"/>

  <title>| Chi Tiết Sản phẩm</title>
</head>
<body>
   <jsp:include page="/WEB-INF/views/user/layouts/header.jsp"></jsp:include>
    <main>
      <div class="banner-common">
        <div class="container">
          <div class="row">
            <div class="col">
              <div class="banner-common__content">
                <h1 class="heading-primary heading-primary--white">Chi Tiết Sản Phẩm</h1>
                <div class="banner-common__box"><a href="./index.html">
                  <p class="banner-common__title">Trang chủ</p></a>
                  <div class="banner-common__icon"><img src="./img/arrows-banner.svg" alt=""/></div><a href="">
                    <p class="banner-common__title-2">Sản Phẩm</p></a>
                    <div class="banner-common__icon"><img src="./img/arrows-banner.svg" alt=""/></div><a href="">
                      <p class="banner-common__title-2 banner-common__title-2--active">Chi Tiết Sản Phẩm</p></a>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <main class="details">
            <div class="container">
              <div class="row justify-content-between">
                <%-- <div class="col-xl-6 col-lg-6 col-md-6">
                  <div class="details__photo" data-aos="fade-right" data-aos-delay="0">
                    <img class="details__pho details__photo--active" src="${base }/upload/${product.avatar }" alt="Bánh Humburger" title="Bánh Humburger" data-index="1"/>
                    <c:forEach var="proImage" items="${listImage }">
                    <img class="details__pho" src="${base }/upload/${proImage.path }" alt="Bánh Humburger" title="Bánh Humburger" data-index="2"/>
                    </c:forEach>
                    <img class="details__pho" src="${base}/user/img/details-2.png" alt="Bánh Humburger" title="Bánh Humburger" data-index="2"/>
                    <img class="details__pho" src="${base}/user/img/details-3.png" alt="Bánh Humburger" title="Bánh Humburger" data-index="3"/>
                    <img class="details__pho" src="${base}/user/img/details-4.png" alt="Bánh Humburger" title="Bánh Humburger" data-index="4"/>
                    <img class="details__pho" src="${base}/user/img/details-5.png" alt="Bánh Humburger" title="Bánh Humburger" data-index="5"/>
                   
                  </div>
                  <div class="details__carousel" data-aos="fade-right" data-aos-delay="0">
                    <div class="details__carousel-list">
                    
                    <img class="js-details-mini details-mini--active" src="${base }/upload/${product.avatar }" alt="" data-index="1"/>
                    <c:forEach var="proImage" items="${listImage }">
                    <img class="js-details-mini" src="${base }/upload/${proImage.path }" alt="" data-index="2"/>
                    </c:forEach>
                  	</div>
                  </div>
                </div> --%>
                <div class="col-lg-5 pb-5">
				<div id="product-carousel" class="carousel slide"
					data-ride="carousel">
					<div class="carousel-inner border">
						<div class="carousel-item active">
							<img class="w-100 h-100" src="${base }/upload/${product.avatar}"
								alt="Image">
						</div>
						<c:forEach var="proImage" items="${listImage }">
						<div class="carousel-item">
							<img class="w-100 h-100" src="${base }/upload/${proImage.path}">
						</div>
						</c:forEach> 
					</div>
					<a class="carousel-control-prev" href="#product-carousel"
						data-slide="prev"> <i class="fa fa-2x fa-angle-left text-dark"></i>
					</a> <a class="carousel-control-next" href="#product-carousel"
						data-slide="next"> <i
						class="fa fa-2x fa-angle-right text-dark"></i>
					</a>
				</div>
			</div>
                <div class="col-xl-5 col-lg-5 col-md-6">
                  <div class="details__info" data-aos="fade-left" data-aos-delay="0">
                    <h2 class="heading__primary">${product.title }</h2>
                    <div class="details__price">
                      <p>Giá bán: <span>${product.price }</span></p>
                    </div>
                    <div class="details__rate">
                      <p>Đánh giá: <span><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i></span></p>
                    </div>
                    <div class="details__stocking"><i class="fas fa-check"></i><span>Số Lượng còn: ${product.soLuongTon } </span></div>
                    <div class="details__description">
                      <p class="details__title">Mô tả sản phẩm:</p>
                      <p class="details__text">-${product.shortDescription } ...</p>
                     <!--  <p class="details__text">- Bảo quản ở nhiệt độ 25 -28 độ C</p> -->
                    </div>
                    <div class="details__select">
                      <div class="details__number"><span class="details__number-minus"><i class="fas fa-minus"></i></span><span class="details__number-basket">1 </span><span class="details__number-plus">  <i class="fas fa-plus"></i></span></div><a class="details__add-to-basket" href="./cart.html">Thêm vào giỏ</a><a class="details__buy-now" href="./checkout.html">Mua ngay</a>
                    </div>
                    <div class="details__share">
                      <div class="details__share-title">Chia sẻ sản phẩm:</div><a href="#">   <i class="fab fa-google-plus-square"></i></a><a href="#">     <i class="fab fa-facebook-square"></i></a><a href="#">     <i class="fab fa-twitter-square"></i></a><a href="#">     <i class="fab fa-youtube-square"></i></a>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </main>
          <div class="popula">
            <div class="container">
              <div class="row">
                <div class="col">
                  <h2 class="heading__primary heading__primary--bot" data-aos="fade-up" data-aos-delay="0">Sản Phẩm Liên Quan</h2>
                  <div class="popula__carousel" data-aos="fade-up" data-aos-delay="0">
                
                  <c:forEach var="listpr" items="${listProduct}">
                    <div class="best-slice__card">
                      <div class="best-slice__photo"><a href="${base }/detail/${listpr.id}"><img src="${base }/upload/${listpr.avatar}" alt="Banh-Bông Lan" title="Bánh Bông Lan"/></a></div>
                      <div class="best-slice__content"><a href="${base }/detail/${listpr.id}">
                        <h3 class="best-slice__heading"> ${listpr.title}</h3></a>
                        <div class="best-slice__rate"><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i></div>
                        <div class="best-slice__price">${listpr.price}</div><a class="best-slice__button" href="./cart.html"><span>Thêm Vào Giỏ</span><i class="fas fa-cart-plus"></i></a>
                      </div>
                    </div>
                    </c:forEach>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </main>
      <jsp:include page="/WEB-INF/views/user/layouts/footer.jsp"></jsp:include>
    <jsp:include page="/WEB-INF/views/user/layouts/js.jsp"></jsp:include>
          </body>
          </html>