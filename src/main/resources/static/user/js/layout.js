$(document).ready(function () {
  // MENU CLONE

  $(".header-right__open-draw").click(function () {
    $(this).toggleClass("active");

    if ($(this).hasClass("active")) {
      $(this).find("i").removeClass().addClass("fas fa-times mobile");
      // $("#clone-menu").animate({left: '0'}, 500)
      $("#clone-menu").addClass("active");
      $(".clone-menu__box").css("display", "block");
    } else {
      $(this).find("i").removeClass().addClass("fas fa-bars mobile");
      // $("#clone-menu").animate({left: '-28rem'}, 500)
      $("#clone-menu").removeClass("active");
      $(".clone-menu__box").css("display", "none");
    }
  });

  $(".clone-menu__box").click(function () {
    
    $("#clone-menu").removeClass("active");
    $(".header-right__open-draw")
      .find("i")
      .removeClass()
      .addClass("fas fa-bars mobile");
    $(this).css("display", "none");
  });

  ///// SEARCH
  $(".header-right__search").click(function () {
    $("#header-right__search-box").addClass("active");
  });

  $(".header-right__search-icon").click(function () {
    $("#header-right__search-box").removeClass("active");
  });

  //// USER

  $(".header-right__icon.fa-user").click(function () {
    $("#header__user").css("visibility", "visible");

    $(this).addClass(".header-right__icon--active");

    $(".clone-menu__box").css("display", "block");
    $("#header__user").addClass("header__user--active");
  });

  $(".clone-menu__box").click(function () {
    $(this).css("display", "none");
    $("#header__user").removeClass("header__user--active");
  });

  //  FORM
  $(".user__form[data-number='" + 1 + "']").css("display", "none");

  $(".user__box p").click(function () {
    if ($(this).hasClass("user--active")) {
      return;
    }
    $(".user--active").removeClass("user--active");
    $(this).addClass("user--active");

    let index = $(".user__action").index(this);

    $(".user__form").css("display", "none");
    $(".user__form[data-number='" + index + "']").css("display", "block");
  });

  // VALIDATE SIGNIN

  let email = $("#form__email");
  let password = $("#form__password");
  let errEmail = $("#form__email ~ .error");
  let errPassword = $("#form__password ~ .error");
  let submit = $("#user__signin");

  errEmail.hide();
  errPassword.hide();
  let errEmailBool = true;
  let errPasswordlBool = true;

  function isValidEmailAddress(emailAddress) {
    // var pattern = /[\w]+[\d]@[a-z]+.[a-z]+/;
    pattern = new RegExp(/^[+a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$/i);
    return pattern.test(emailAddress);
  }

  function isValidPassword(password) {
    // var pattern = /[\w]+[\d]@[a-z]+.[a-z]+/;
    pattern = new RegExp(/^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])[0-9a-zA-Z]{6,}$/i);
    return pattern.test(password);
  }

  email.focusout(function () {
    let len = $(this).val().trim();

    if (len.length < 6 || len.length > 20) {
      errEmail.html("Email l???n h??n 6 k?? t??? v?? nh??? h??n 20 k?? t???");
      errEmailBool = true;
      return errEmail.show();
    }

    if (!isValidEmailAddress(len)) {
      errEmail.html("Email kh??ng h???p l???");
      errEmailBool = true;
      return errEmail.show();
    }

    errEmail.hide();
    errEmailBool = false;
  });

  password.focusout(function () {
    let len = $(this).val().trim();
    if (len.length < 6 || len.length > 20) {
      errPassword.html("Password l???n h??n 6 k?? t??? v?? nh??? h??n 20 k?? t???");
      errPasswordlBool = true;
      return errPassword.show();
    }

    if (!isValidPassword(len)) {
      errPassword.html("Password c?? it nh???t 1 s???, 1 k?? t??? th?????ng");
      errPasswordlBool = true;
      return errPassword.show();
    }

    errPassword.hide();
    errPasswordlBool = false;
  });

  submit.submit(function () {
    if (errEmailBool) {
      errEmail.show();
    }
    if (errPasswordlBool) {
      errPassword.show();
    }
    if (errEmailBool === false && errPasswordlBool === false) {
      return true;
    } else {
      return false;
    }
  });

  // VALIDATE SIGNUP

  let submitSignup = $("#user__signup");
  let fullName = $("#signup__fullname");
  let phone = $("#signup__phone");
  let emailSignup = $("#signup__email");
  let passwordSignup = $("#signup__password");
  let match = $("#signup__match");

  let errFullName = $("#signup__fullname ~ .error");
  let errPhone = $("#signup__phone ~ .error");
  let errEmailSignup = $("#signup__email ~ .error");
  let errPasswordSignup = $("#signup__password ~ .error");
  let errMatch = $("#signup__match ~ .error");

  errFullName.hide();
  errPhone.hide();
  errEmailSignup.hide();
  errPasswordSignup.hide();
  errMatch.hide();

  let errFullNameBool = true;
  let errPhoneBool = true;
  let errEmailSignupBool = true;
  let errPasswordSignupBool = true;
  let errMatchBool = true;

  fullName.focusout(function () {
   
    let len = $(this).val().trim();
 
    if (len.length < 2 || len.length > 20) {
      errFullName.html("H??? v?? T??n c?? ??t nh???t 3 k?? t??? v?? nhi???u nh???t 20 k?? t???");
      errFullName.show();
      return (errFullNameBool = true);
    }

    errFullName.hide();
    errFullNameBool = false;
  });

  phone.focusout(function () {
    let str = $(this).val().trim();

    if (str.length !== 10) {
      errPhone.html("S??? ??i???n tho???i c?? 10 k?? t???");
      errPhone.show();
      return (errPhoneBool = true);
    }

    errPhone.hide();
    errPhoneBool = false;
  });

  emailSignup.focusout(function () {
    let len = $(this).val().trim();

    if (len.length < 6 || len.length > 20) {
      errEmailSignup.html("Email l???n h??n 6 k?? t??? v?? nh??? h??n 20 k?? t???");
      errEmailSignupBool = true;
      return errEmailSignup.show();
    }

    if (!isValidEmailAddress(len)) {
      errEmailSignup.html("Email kh??ng h???p l???");
      errEmailSignupBool = true;
      return errEmailSignup.show();
    }

    errEmailSignup.hide();
    errEmailSignupBool = false;
  });

  passwordSignup.focusout(function () {
    let len = $(this).val().trim();
    if (len.length < 6 || len.length > 20) {
      errPasswordSignup.html("Password l???n h??n 6 k?? t??? v?? nh??? h??n 20 k?? t???");
      errPasswordSignuplBool = true;
      return errPasswordSignup.show();
    }

    if (!isValidPassword(len)) {
      errPasswordSignup.html("Password c?? it nh???t 1 s???, 1 k?? t??? th?????ng");
      errPasswordSignuplBool = true;
      return errPasswordSignup.show();
    }

    errPasswordSignup.hide();
    errPasswordSignupBool = false;
  });

  match.focusout(function () {
    let str = $(this).val();
    let password = passwordSignup.val();

    if (str !== password) {
      errMatch.html("Password kh??ng kh???p");
      errMatchBool = true;
      return errMatch.show();
    }

    errMatch.hide();
    errMatchBool = false;
  });

  submitSignup.submit(function (e) {
    if (errFullNameBool) {
      errFullName.show();
    }
    if (errPhoneBool) {
      errPhone.show();
    }
    if (errEmailSignupBool) {
      errEmailSignup.show();
    }
    if (errPasswordSignupBool) {
      errPasswordSignup.show();
    }

    
    if (
      errFullNameBool == false &&
      errPhoneBool == false &&
      errEmailSignupBool == false &&
      errPasswordSignupBool == false &&
      errMatchBool == false
    ) {
      return true;
    } else {
      return false;
    }
  });

  // CHECK ACTIVE PAGES
  if ($("main").hasClass("home")) {
    
    $(".home--active").addClass("header-right__link--active");
  }

  if ($("main").hasClass("product")) {
  
    $(".product--active").addClass("header-right__link--active");
  }

  if ($("main").hasClass("details")) {
    
    $(".product--active").addClass("header-right__link--active");
  }

  if ($("main").hasClass("cart")) {
   
    $(".cart--active").addClass("header-right__link--active");
  }

  if ($("body .contact").hasClass("contact")) {
   
    $(".contact--active").addClass("header-right__link--active");
  }

  if ($("body .article").hasClass("article")) {
   
    $(".blog--active").addClass("header-right__link--active");
  }
  if ($("body .detail-blog").hasClass("detail-blog")) {
   
    $(".blog--active").addClass("header-right__link--active");
  }

  $(".scroll").fadeOut();
  $(window).scroll(function () {
    if ($(this).scrollTop() > 40) {
      $(".scroll").fadeIn();
    } else {
      $(".scroll").fadeOut();
    }
  });
  $(".scroll").click(function () {
    $("html, body").animate({ scrollTop: 0 }, 800);
  });

  // Animate

  
});
