
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
  <meta charset="UTF-8">
  <title>登录页面</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description"
        content="We design best Multipurpose HTML Website Template for any online shop, online store, shopping, fashion, accessories, shoes, bags, t-shirts, electronics, furniture, christmas, ecommerce html template">
  <meta name="keywords"
        content="business, multipurpose, multipurpose html website template, online shop, online store, shopping, fashion, accessories, shoes, bags, t-shirts, electronics, furniture, christmas, ecommerce html template">
  <meta name="author" content="kamleshyadav">
  <meta name="MobileOptimized" content="320">
  <link rel="stylesheet" href="assets/css/bootstrap.min.css">
  <link rel="stylesheet" href="assets/css/nice-select.css">
  <link rel="stylesheet" href="assets/css/font.css">
  <link rel="stylesheet" href="assets/css/swiper-bundle.min.css">
  <link rel="stylesheet" href="assets/css/comman.css">
  <link rel="stylesheet" href="assets/css/style.css">
  <!-- Favicon Link -->
  <link rel="shortcut icon" type="image/png" href="assets/images/index1/favicon.png">
</head>
<body>
<div class="modal-dialog modal-dialog-centered">
  <div class="modal-content">
    <!-- Modal body -->
    <div class="modal-body">
      <div class="modal-inner">
        <div class="row">
          <div class="col-md-12">
            <div class="modal-inner-box">
              <div class="autho-model-header text-center">
                <a href="javascript:void(0);"><img src="assets/images/index1/big_logo.png"
                                                   alt="logo" class="img-fluid"></a>
                <p class="autho-model-sttl">尊敬的用户，请先登录</p>
                <h2 class="autho-model-ttl">Login in</h2>
              </div>

              <div class="autho-model-filed">
                <form action="${pageContext.request.contextPath}/user/login" method="post">
                  <div class="row">
                    <div class="col-md-12">
                      <div class="e-form-field mb-20">
                        <label>用户名</label>
                        <input class="e-field-inner" type="text" name="username">
                      </div>
                    </div>
                    <div class="col-md-12">
                      <div class="e-form-field mb-20">
                        <label>密码</label>
                        <input class="e-field-inner" type="password" name="password">
                      </div>
                    </div>
                    <div class="col-md-12">
                      <div style="text-align: center">
                        <button type="submit" class="e-btn">登录</button>
                      </div>
                    </div>
                  </div>
                </form>
              </div>
            </div>
          </div>
        </div>
      </div>
<!--      <button type="button" class="autho-close" data-dismiss="modal">&times;</button>-->
    </div>
  </div>
</div>

<!-- jQuery and Bootstrap Bundle (includes Popper) -->
<script src="assets/js/jquery.min.js"></script>
<script src="assets/js/bootstrap.bundle.min.js"></script>
<script src="assets/js/SmoothScroll.min.js"></script>
<script src="assets/js/jquery.nice-select.min.js"></script>
<script src="assets/js/swiper-bundle.min.js"></script>
<script src="assets/js/isotope.pkgd.min.js"></script>
<script src="assets/js/custom.js"></script>
</body>
</html>