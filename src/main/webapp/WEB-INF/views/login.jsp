<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
	
<!-- directive cua JSTL -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!-- VARIABLES -->
<jsp:include page="/WEB-INF/views/common/variables.jsp"></jsp:include>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Please sign in</title>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" rel="stylesheet"
    	 integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
    <link href="https://getbootstrap.com/docs/4.0/examples/signin/signin.css" rel="stylesheet" crossorigin="anonymous"/>
  </head>
  <style>
  	body{
  		background-image: url("https://intphcm.com/data/upload/banner-thoi-trang-nam.jpg");
  		background-repeat: no-repeat;
  		background-size: 1400px;
  	}
  </style>
  <body>
     <div class="container">
      <form class="form-signin" method="POST" action="/perform_login">
        <h2 class="form-signin-heading text-center" >Đăng nhập</h2>
        <c:if test="${not empty param.login_error }">
        	<div class="alert alert-danger" role="alert">Login attempt was not successful, try again</div>
        </c:if>
        
        <p>
          <label for="username" class="sr-only">Username</label>
          <input type="text" id="username" name="username" class="form-control" placeholder="Username" required autofocus>
        </p>
        <p>
          <label for="password" class="sr-only">Password</label>
          <input type="password" id="password" name="password" class="form-control" placeholder="Password" required>
        </p>
		<!-- <input name="_csrf" type="hidden" value="b6b7713e-d5e7-4f74-a843-898bafa7f75f" /> -->
        <button class="btn btn-lg btn-primary btn-block" type="submit">Sign in</button>
        <span style="font-size: 16px">Bạn chưa có tài khoản? </span><a href="${base }/register">Đăng ký</a>
      </form>
      
</div>
</body>
</html>