<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
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
    <link href="${base}/user/img/favicon.svg" type="image/x-icon" rel="icon"/>
    <link rel="stylesheet" href="${base}/user/css/blog.css"/>
    <title>| Tin Tức</title>
  </head>
  <body>
     <jsp:include page="/WEB-INF/views/user/layouts/header.jsp"></jsp:include>
    <main>
      <div class="banner-common">
        <div class="container">
          <div class="row">
            <div class="col">
              <div class="banner-common__content">
                <h1 class="heading-primary heading-primary--white">Tin Tức</h1>
                <div class="banner-common__box"><a href="${base }/index">
                    <p class="banner-common__title">Trang chủ</p></a>
                  <div class="banner-common__icon"><img src="${base}/user/img/arrows-banner.svg" alt=""/></div><a href="">
                    <p class="banner-common__title-2 banner-common__title-2--active">Tin Tức</p></a>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="article">
        <div class="container">
          <div class="row">
            <div class="col">
              <h2 class="article__heading">Bài viết</h2>
              <div class="article__content">
                <div class="row">
                  <div class="col-xl-4 col-lg-4 col-md-6 col-sm-6"><a class="article__box" href="./blogdetails.html">
                      <div class="article__photo"><img src="${base}/user/img/blogs-1.png" alt="Cách Giữ Bánh Ga Tô Ngon Và Lâu Hơn, Bảo Quản Bánh Gato" title="Cách Giữ Bánh Ga Tô Ngon Và Lâu Hơn, Bảo Quản Bánh Gato"/></div>
                      <div class="article__info">
                        <h3 class="aricle__heading-tertiary">Cách Giữ Bánh Ga Tô Ngon Và Lâu Hơn, Bảo Quản Bánh Gato</h3>
                        <div class="article__time">
                          <p><i class="far fa-user"></i></p>
                          <p>|</p>
                          <p> <i class="far fa-clock"></i></p>
                          <p>20/02/2020</p>
                          <p>|</p>
                          <p> <i class="far fa-eye"></i></p>
                          <p>2.200</p>
                        </div>
                        <p class="article__text"> Bánh kem sinh nhật bảo quản được bao lâu là câu hỏi của nhiều người...</p>
                      </div></a></div>
                  <div class="col-xl-4 col-lg-4 col-md-6 col-sm-6"><a class="article__box" href="./blogdetails.html">
                      <div class="article__photo"><img src="${base}/user/img/blogs-2.png" alt="Đến thủ đô Vienna bạn nhất định phải thử những món bánh này" title="Đến thủ đô Vienna bạn nhất định phải thử những món bánh này"/></div>
                      <div class="article__info">
                        <h3 class="aricle__heading-tertiary">Đến thủ đô Vienna bạn nhất định phải thử những món bánh này</h3>
                        <div class="article__time">
                          <p><i class="far fa-user"></i></p>
                          <p>|</p>
                          <p> <i class="far fa-clock"></i></p>
                          <p>21/02/2020</p>
                          <p>|</p>
                          <p> <i class="far fa-eye"></i></p>
                          <p>2.472</p>
                        </div>
                        <p class="article__text"> Không chỉ nổi tiếng với nhiều phong cảnh cổ kính độc đáo, thủ đô Vienna...</p>
                      </div></a></div>
                  <div class="col-xl-4 col-lg-4 col-md-6 col-sm-6"><a class="article__box" href="./blogdetails.html">
                      <div class="article__photo"><img src="${base}/user/img/blogs-3.png" alt="Lạ lùng thay món bánh su trứng muối than tre độc đáo" title="Lạ lùng thay món bánh su trứng muối than tre độc đáo"/></div>
                      <div class="article__info">
                        <h3 class="aricle__heading-tertiary">Lạ lùng thay món bánh su trứng muối than tre độc đáo</h3>
                        <div class="article__time">
                          <p><i class="far fa-user"></i></p>
                          <p>|</p>
                          <p> <i class="far fa-clock"></i></p>
                          <p>21/03/2020</p>
                          <p>|</p>
                          <p> <i class="far fa-eye"></i></p>
                          <p>2.434</p>
                        </div>
                        <p class="article__text"> Nếu đã quen với hương vị món bánh su vỏ mềm truyền thống thì chắc chắn bạn...</p>
                      </div></a></div>
                  <div class="col-xl-4 col-lg-4 col-md-6 col-sm-6"><a class="article__box" href="./blogdetails.html">
                      <div class="article__photo"><img src="${base}/user/img/blogs-4.png" alt="“Cháy hàng” mùa Trung Thu – Dân tình sục sôi mở tiệm bánh " title="“Cháy hàng” mùa Trung Thu – Dân tình sục sôi mở tiệm bánh "/></div>
                      <div class="article__info">
                        <h3 class="aricle__heading-tertiary">“Cháy hàng” mùa Trung Thu – Dân tình sục sôi mở tiệm bánh </h3>
                        <div class="article__time">
                          <p><i class="far fa-user"></i></p>
                          <p>|</p>
                          <p> <i class="far fa-clock"></i></p>
                          <p>21/03/2020</p>
                          <p>|</p>
                          <p> <i class="far fa-eye"></i></p>
                          <p>2.552</p>
                        </div>
                        <p class="article__text"> Mang hương vị ngọt ngào thấm sâu trong từng lớp bánh, bánh Pía không chỉ được...</p>
                      </div></a></div>
                  <div class="col-xl-4 col-lg-4 col-md-6 col-sm-6"><a class="article__box" href="./blogdetails.html">
                      <div class="article__photo"><img src="${base}/user/img/blogs-5.png" alt="Đặc sản bánh bao kẹp thịt siêu lạ, nhất định phải thử khi tới Đài Loan" title="“Đặc sản bánh bao kẹp thịt siêu lạ, nhất định phải thử khi tới Đài Loan"/></div>
                      <div class="article__info">
                        <h3 class="aricle__heading-tertiary">Đặc sản bánh bao kẹp thịt siêu lạ, nhất định phải thử khi tới Đài Loan</h3>
                        <div class="article__time">
                          <p><i class="far fa-user"></i></p>
                          <p>|</p>
                          <p> <i class="far fa-clock"></i></p>
                          <p>21/03/2020</p>
                          <p>|</p>
                          <p> <i class="far fa-eye"></i></p>
                          <p>2.535</p>
                        </div>
                        <p class="article__text"> Tuy mới xuất hiện trong thời gian gần đây nhưng “guabao” hay còn gọi là bánh bao...</p>
                      </div></a></div>
                  <div class="col-xl-4 col-lg-4 col-md-6 col-sm-6"><a class="article__box" href="./blogdetails.html">
                      <div class="article__photo"><img src="${base}/user/img/blogs-6.png" alt="Khám phá 6 tên gọi bánh thú vị có thể bạn đã từng thưởng thức" title="“Khám phá 6 tên gọi bánh thú vị có thể bạn đã từng thưởng thức"/></div>
                      <div class="article__info">
                        <h3 class="aricle__heading-tertiary">Khám phá 6 tên gọi bánh thú vị có thể bạn đã từng thưởng thức</h3>
                        <div class="article__time">
                          <p><i class="far fa-user"></i></p>
                          <p>|</p>
                          <p> <i class="far fa-clock"></i></p>
                          <p>23/04/2020</p>
                          <p>|</p>
                          <p> <i class="far fa-eye"></i></p>
                          <p>2.535</p>
                        </div>
                        <p class="article__text"> Đằng sau mỗi chiếc bánh đều ẩn chứa một câu chuyện về nguồn gốc đầy thú...</p>
                      </div></a></div>
                  <div class="col-xl-4 col-lg-4 col-md-6 col-sm-6"><a class="article__box" href="./blogdetails.html">
                      <div class="article__photo"><img src="${base}/user/img/blogs-7.png" alt="Những loại bánh Việt có tên cực lạ có thể bạn chưa từng " title="“Những loại bánh Việt có tên cực lạ có thể bạn chưa từng "/></div>
                      <div class="article__info">
                        <h3 class="aricle__heading-tertiary">Những loại bánh Việt có tên cực lạ có thể bạn chưa từng </h3>
                        <div class="article__time">
                          <p><i class="far fa-user"></i></p>
                          <p>|</p>
                          <p> <i class="far fa-clock"></i></p>
                          <p>29/04/2020</p>
                          <p>|</p>
                          <p> <i class="far fa-eye"></i></p>
                          <p>2.535</p>
                        </div>
                        <p class="article__text"> Đa dạng về hương vị cũng như cách chế biến là những gì các loại bánh đặc biệt...</p>
                      </div></a></div>
                  <div class="col-xl-4 col-lg-4 col-md-6 col-sm-6"><a class="article__box" href="./blogdetails.html">
                      <div class="article__photo"><img src="${base}/user/img/blogs-8.png" alt="Chiêm ngưỡng những chiếc bánh “không nỡ ăn” vì quá đẹp" title="“Chiêm ngưỡng những chiếc bánh “không nỡ ăn” vì quá đẹp"/></div>
                      <div class="article__info">
                        <h3 class="aricle__heading-tertiary">Chiêm ngưỡng những chiếc bánh “không nỡ ăn” vì quá đẹp</h3>
                        <div class="article__time">
                          <p><i class="far fa-user"></i></p>
                          <p>|</p>
                          <p> <i class="far fa-clock"></i></p>
                          <p>23/05/2020</p>
                          <p>|</p>
                          <p> <i class="far fa-eye"></i></p>
                          <p>2.544</p>
                        </div>
                        <p class="article__text"> Không thể nào rời mắt hay nỡ lòng thưởng thức những chiếc bánh đẹp sinh ra chỉ...</p>
                      </div></a></div>
                  <div class="col-xl-4 col-lg-4 col-md-6 col-sm-6"><a class="article__box" href="./blogdetails.html">
                      <div class="article__photo"><img src="${base}/user/img/blogs-9.png" alt="Nước Nga đón các đội tuyển World Cup bằng bánh mì " title="“Nước Nga đón các đội tuyển World Cup bằng bánh mì "/></div>
                      <div class="article__info">
                        <h3 class="aricle__heading-tertiary">“Nước Nga đón các đội tuyển World Cup bằng bánh mì </h3>
                        <div class="article__time">
                          <p><i class="far fa-user"></i></p>
                          <p>|</p>
                          <p> <i class="far fa-clock"></i></p>
                          <p>30/04/2020</p>
                          <p>|</p>
                          <p> <i class="far fa-eye"></i></p>
                          <p>2.535</p>
                        </div>
                        <p class="article__text"> World Cup đang nóng dần với những màn chào sân vô cùng hấp dẫn. Những trận đấu...</p>
                      </div></a></div>
                </div>
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