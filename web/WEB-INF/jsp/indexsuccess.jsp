<%--
  Created by IntelliJ IDEA.
  User: fuzaiyo
  Date: 2021/9/1
  Time: 14:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"></c:set>
<html>
<head>
  <meta charset="UTF-8">
  <title>商城首页</title>
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description"
        content="We design best Multipurpose HTML Website Template for any online shop, online store, shopping, fashion, accessories, shoes, bags, t-shirts, electronics, furniture, christmas, ecommerce html template">
  <meta name="keywords"
        content="business, multipurpose, multipurpose html website template, online shop, online store, shopping, fashion, accessories, shoes, bags, t-shirts, electronics, furniture, christmas, ecommerce html template">
  <meta name="author" content="kamleshyadav">
  <meta name="MobileOptimized" content="320">

  <link rel="stylesheet" href="${ctx}/assets/css/bootstrap.min.css">
  <link rel="stylesheet" href="${ctx}/assets/css/nice-select.css">
  <link rel="stylesheet" href="${ctx}/assets/css/font.css">
  <link rel="stylesheet" href="${ctx}/assets/css/swiper-bundle.min.css">
  <link rel="stylesheet" href="${ctx}/assets/css/comman.css">
  <link rel="stylesheet" href="${ctx}/assets/css/style.css">
  <!-- Favicon Link -->
  <link rel="shortcut icon" type="image/png" href="${ctx}/assets/images/index1/favicon.png">
</head>


<body>
<div class="main-wrapper">

  <!-- Preloader Box -->
  <div class="preloader-wrapper preloader-active preloader-open">
    <div class="preloader-holder">
      <div class="preloader d-flex justify-content-center align-items-center h-100">
        <span></span>
        <span></span>
        <span></span>
      </div>
    </div>
  </div>
  <!--搜索框 -->
  <div class="search-main-wrap">
    <div class="search-inner">
      <a href="javascript:void(0);" class="c-search-close">
        <svg viewBox="0 0 413.348 413.348" xmlns="http://www.w3.org/2000/svg">
          <path d="m413.348 24.354-24.354-24.354-182.32 182.32-182.32-182.32-24.354 24.354 182.32 182.32-182.32 182.32 24.354 24.354 182.32-182.32 182.32 182.32 24.354-24.354-182.32-182.32z"/>
        </svg>
      </a>
      <div class="search-box">
        <form action="${pageContext.request.contextPath}/clothes/search">
          <input type="text" name="keywords" placeholder="在此搜索你想要的商品..."/>
          <button type="submit">
            <svg xmlns:xlink="http://www.w3.org/1999/xlink" width="17px" height="17px">
              <path fill-rule="evenodd" fill="rgb(255, 255, 255)"
                    d="M16.337,15.218 C15.846,14.710 15.347,14.210 14.848,13.711 L12.326,11.190 C14.647,7.813 13.433,3.788 10.926,1.947 C8.249,-0.020 4.631,0.233 2.322,2.546 C0.010,4.862 -0.267,8.510 1.664,11.217 C2.621,12.558 4.223,13.526 5.949,13.805 C7.163,14.001 8.993,13.951 10.900,12.633 L10.981,12.724 C11.161,12.925 11.344,13.131 11.537,13.326 C12.605,14.410 13.674,15.490 14.755,16.559 C14.969,16.769 15.226,16.921 15.462,16.974 C15.534,16.991 15.604,16.999 15.674,16.999 C16.017,16.999 16.324,16.804 16.522,16.452 C16.757,16.034 16.690,15.583 16.337,15.218 ZM10.177,4.051 C11.029,4.910 11.496,6.055 11.495,7.273 C11.493,8.489 11.019,9.630 10.162,10.488 C9.308,11.344 8.173,11.815 6.967,11.815 C6.964,11.815 6.961,11.815 6.958,11.815 C5.751,11.813 4.610,11.331 3.748,10.457 C2.891,9.590 2.425,8.452 2.436,7.255 C2.457,4.709 4.449,2.717 6.972,2.717 C6.974,2.717 6.977,2.717 6.979,2.717 C8.189,2.718 9.325,3.192 10.177,4.051 Z"/>
            </svg>
          </button>
        </form>
      </div>
    </div>
  </div>

  <!-- 头部：用户操作和商品选择 -->
  <div class="header-main-wrapper header-style1">
    <!--    登录或者注册模块-->
    <div class="header-top-wrapper">
      <div class="ht-left">
        <svg xmlns:xlink="http://www.w3.org/1999/xlink" width="19px" height="15px">
          <path fill-rule="evenodd" fill="rgb(125, 143, 179)"
                d="M18.284,7.677 L17.530,7.677 C17.365,7.677 17.215,7.610 17.107,7.501 C16.967,8.262 16.389,8.879 15.631,9.062 L15.631,13.252 C15.631,13.639 15.379,13.967 15.007,14.067 C14.631,14.169 14.249,14.004 14.058,13.677 C13.162,12.134 11.751,11.080 9.862,10.541 C8.422,10.133 7.243,10.188 7.235,10.193 L7.213,10.194 L7.102,10.189 L7.835,13.207 C7.936,13.627 7.842,14.062 7.577,14.403 C7.308,14.743 6.908,14.938 6.476,14.938 L5.821,14.938 C5.174,14.938 4.615,14.498 4.462,13.869 L3.560,10.154 C2.050,9.921 0.932,8.631 0.932,7.079 C0.932,5.363 2.325,3.968 4.038,3.968 L7.234,3.966 C7.359,3.974 8.504,4.002 9.862,3.617 C11.751,3.079 13.163,2.024 14.058,0.482 C14.252,0.148 14.631,-0.010 15.007,0.091 C15.379,0.191 15.631,0.519 15.631,0.907 L15.631,5.097 C16.389,5.279 16.967,5.896 17.107,6.657 C17.215,6.548 17.365,6.482 17.530,6.482 L18.284,6.482 C18.614,6.482 18.881,6.751 18.881,7.079 C18.881,7.409 18.614,7.677 18.284,7.677 ZM6.603,8.743 L4.743,8.743 C4.414,8.743 4.146,8.475 4.146,8.145 C4.146,7.815 4.414,7.548 4.743,7.548 L6.603,7.548 L6.603,5.163 L4.038,5.163 C2.983,5.163 2.126,6.023 2.126,7.079 C2.126,8.131 2.980,8.991 4.030,8.996 L6.344,8.995 L6.603,8.996 L6.603,8.743 ZM6.614,13.241 L6.544,13.241 C6.215,13.241 5.947,12.973 5.947,12.644 C5.947,12.388 6.108,12.170 6.334,12.085 L6.281,11.864 L6.154,11.864 C5.824,11.864 5.557,11.596 5.557,11.266 C5.557,10.991 5.743,10.759 5.996,10.690 L5.875,10.191 L4.798,10.191 L5.623,13.586 C5.645,13.679 5.727,13.743 5.821,13.743 L6.476,13.743 C6.540,13.743 6.597,13.715 6.637,13.665 C6.676,13.615 6.691,13.550 6.674,13.489 L6.614,13.241 ZM14.437,2.035 C13.392,3.335 11.930,4.274 10.165,4.772 C9.191,5.047 8.332,5.133 7.797,5.157 L7.797,9.002 C8.333,9.027 9.193,9.112 10.164,9.386 C11.930,9.884 13.391,10.824 14.437,12.123 L14.437,2.035 ZM15.946,7.016 C15.946,6.764 15.824,6.534 15.631,6.391 L15.631,7.768 C15.824,7.625 15.946,7.394 15.946,7.142 L15.946,7.016 ZM3.890,8.377 C3.878,8.408 3.860,8.442 3.837,8.476 C3.813,8.512 3.789,8.542 3.763,8.568 C3.736,8.595 3.707,8.619 3.675,8.640 C3.636,8.666 3.605,8.682 3.571,8.696 C3.539,8.711 3.498,8.723 3.455,8.731 C3.424,8.739 3.384,8.743 3.340,8.743 C3.298,8.743 3.256,8.739 3.217,8.730 C3.186,8.724 3.147,8.713 3.109,8.696 C3.074,8.681 3.044,8.665 3.014,8.646 C2.969,8.615 2.938,8.590 2.912,8.562 C2.893,8.545 2.865,8.511 2.841,8.472 C2.822,8.446 2.804,8.409 2.792,8.381 C2.772,8.331 2.761,8.295 2.754,8.258 C2.747,8.221 2.743,8.184 2.743,8.145 C2.743,8.108 2.747,8.070 2.754,8.033 C2.761,7.995 2.772,7.959 2.786,7.924 C2.807,7.875 2.824,7.842 2.846,7.810 C2.869,7.776 2.895,7.744 2.924,7.717 C2.939,7.700 2.972,7.674 3.009,7.648 C3.038,7.629 3.071,7.612 3.105,7.597 C3.155,7.577 3.191,7.566 3.228,7.559 C3.301,7.543 3.381,7.544 3.458,7.560 C3.492,7.567 3.530,7.578 3.565,7.592 C3.607,7.610 3.641,7.628 3.675,7.651 C3.701,7.666 3.733,7.693 3.763,7.723 C3.787,7.747 3.810,7.776 3.832,7.805 C3.860,7.850 3.878,7.883 3.892,7.916 C3.906,7.952 3.916,7.985 3.925,8.022 C3.934,8.070 3.937,8.108 3.937,8.145 C3.937,8.184 3.934,8.221 3.927,8.258 C3.916,8.306 3.906,8.341 3.890,8.377 ZM3.026,8.015 L3.026,8.015 L3.026,8.015 C3.026,8.015 3.026,8.015 3.026,8.015 ZM17.388,5.189 C17.279,5.289 17.136,5.346 16.986,5.346 C16.818,5.346 16.657,5.274 16.544,5.150 C16.437,5.033 16.382,4.879 16.390,4.719 C16.397,4.560 16.466,4.412 16.584,4.305 L17.566,3.410 C17.811,3.187 18.188,3.206 18.410,3.450 C18.517,3.567 18.572,3.720 18.564,3.880 C18.557,4.039 18.488,4.185 18.371,4.293 L17.388,5.189 ZM16.958,8.814 C17.115,8.797 17.270,8.862 17.388,8.969 L18.370,9.865 C18.488,9.973 18.557,10.120 18.564,10.279 C18.572,10.438 18.517,10.592 18.409,10.710 C18.297,10.833 18.136,10.905 17.969,10.905 C17.820,10.905 17.677,10.850 17.567,10.750 L16.583,9.852 C16.466,9.746 16.397,9.599 16.390,9.439 C16.382,9.279 16.437,9.125 16.545,9.007 C16.651,8.891 16.799,8.821 16.958,8.814 Z"/>
        </svg>
        <span class="free-ship">你好！${sessionScope.user.username}，欢迎登录电子商城！</span>
      </div>
      <div class="ht-right">
        <div class="ht-right_info">
          <ul class="ht-info-list">
            <li><a href="${pageContext.request.contextPath}/user/toAccount">我的账户</a></li>
            <li><a href="${pageContext.request.contextPath}/cart/toCart">我的购物车</a></li>
            <li>
              <a href="${pageContext.request.contextPath}/user/logout">注销</a>
            </li>
          </ul>
        </div>
      </div>
    </div>

    <%--商品分类--%>
    <div class="header-sticky-wrapper">
      <!--            左：图标按钮跳转首页-->
      <div class="hs-left">
        <div class="hs-left-logo">
          <a href="${pageContext.request.contextPath}/clothes/toIndex"><img src="${ctx}/assets/images/index1/logo.png" alt="logo" class="img-fluid"></a>
        </div>
      </div>

      <!-- 中：选择各种标签跳转页面-->
      <div class="hs-medium custom-scroll">
        <div class="nav-items main-menu-wraper">
          <ul class="menu-list d-xl-flex">
            <li>
              <a href="${pageContext.request.contextPath}/clothes/toIndex" class="hs-mobile-logo">
                <img src="${ctx}/assets/images/index1/logo.png" alt="logo" class="img-fluid">
              </a>
              <p class="menu-btn c-toggle-btn sidebar-toggle">
                <span></span>
                <span></span>
                <span></span>
              </p>
            </li>

            <li class="position-relative">
              <a href="${pageContext.request.contextPath}/clothes/toAll">全部商品</a>
              <div class="drop-menu normal-menu">
              </div>
            </li>

            <!--选择商品分类标签-->
            <li class="position-relative">
              <a href="javascript:void(0);">选择商品分类</a>
              <div class="drop-menu normal-menu">
                <ul class="sub-menu">
                  <li><a  href="${pageContext.request.contextPath}/clothes/label?label=男子">男子</a></li>
                  <li><a  href="${pageContext.request.contextPath}/clothes/label?label=女子">女子</a></li>
                  <li><a  href="${pageContext.request.contextPath}/clothes/label?label=休闲">休闲</a></li>
                  <li><a  href="${pageContext.request.contextPath}/clothes/label?label=运动">运动</a></li>
                </ul>
              </div>
            </li>

            </li>
          </ul>
        </div>
      </div>

      <!--右：搜索框-->
      <div class="hs-right">
        <div class="hs-search-cart ">
          <ul class="hs-search-cart-list">
            <li>
              <span class="hs-cart-value">点击搜索</span>
              <a href="javascript:void(0);" class="hs-search-btn c-search-btn">
                <svg xmlns:xlink="http://www.w3.org/1999/xlink" width="17px" height="17px">
                  <path fill-rule="evenodd" fill="rgb(125, 143, 179)"
                        d="M16.337,15.218 C15.846,14.710 15.347,14.210 14.848,13.711 L12.326,11.190 C14.647,7.813 13.433,3.788 10.926,1.947 C8.249,-0.020 4.631,0.233 2.322,2.546 C0.010,4.862 -0.267,8.510 1.664,11.217 C2.621,12.558 4.223,13.526 5.949,13.805 C7.163,14.001 8.993,13.951 10.900,12.633 L10.981,12.724 C11.161,12.925 11.344,13.131 11.537,13.326 C12.605,14.410 13.674,15.490 14.755,16.559 C14.969,16.769 15.226,16.921 15.462,16.974 C15.534,16.991 15.604,16.999 15.674,16.999 C16.017,16.999 16.324,16.804 16.522,16.452 C16.757,16.034 16.690,15.583 16.337,15.218 ZM10.177,4.051 C11.029,4.910 11.496,6.055 11.495,7.273 C11.493,8.489 11.019,9.630 10.162,10.488 C9.308,11.344 8.173,11.815 6.967,11.815 C6.964,11.815 6.961,11.815 6.958,11.815 C5.751,11.813 4.610,11.331 3.748,10.457 C2.891,9.590 2.425,8.452 2.436,7.255 C2.457,4.709 4.449,2.717 6.972,2.717 C6.974,2.717 6.977,2.717 6.979,2.717 C8.189,2.718 9.325,3.192 10.177,4.051 Z"/>
                </svg>
              </a>
            </li>
            <li>
              <a href="javascript:void(0);" class="menu-btn c-toggle-btn">
                <span></span>
                <span></span>
                <span></span>
              </a>
            </li>
          </ul>
        </div>
      </div>

    </div>
    <div class="bg-overlay sidebar-overlay c-toggle-btn"></div>
  </div>


  <!-- 广告轮播图-->
  <section class="e-banner-wrapper e-banner-cloth">
    <div class="e-banner-inwrap">
      <div class="swiper-container">
        <div class="swiper-wrapper">
          <!-- 广告第1页 -->
          <div class="swiper-slide">
            <div class="e-inner-slide slide1">
              <div class="container-fluid">
                <div class="row">
                  <div class="col-xl-7 col-lg-6 col-md-12 col-sm-12 col-12 align-self-center">
                    <div class="e-banner-text">
                      <h4 class="e-banner-subtitle e-bg-subtitle e-animation-right">
                        新品火爆上市2021</h4>
                      <h2 class="e-banner-title e-animation-left">购 买 送 礼 品! <br>
                        <span>折 扣 70%</span>
                      </h2>
                      <p class="e-banner-des e-animation-left">Taking your viewing experience to
                        next level. All super sale are our newest arrivals, special offers <br>plus
                        Free Shipping on your first order discover your style now.</p>
                      <div class="banner-btn-wrap e-animation-left">
                        <a class="e-btn white banner-btn" href="${pageContext.request.contextPath}/clothes/toAll">立即购买
                          <span><svg xmlns:xlink="http://www.w3.org/1999/xlink" width="15px"
                                     height="20px"> <path fill-rule="evenodd"
                                                          fill="rgb(122, 183, 186)"
                                                          d="M14.465,18.485 L13.480,5.998 C13.441,5.519 13.082,5.159 12.643,5.159 L10.869,5.159 L10.869,4.371 C10.869,2.285 9.363,0.588 7.512,0.588 C5.663,0.588 4.157,2.285 4.157,4.371 L4.157,5.159 L2.381,5.159 C1.942,5.159 1.582,5.519 1.545,5.998 L0.555,18.542 C0.536,18.791 0.611,19.040 0.761,19.228 C0.920,19.426 1.150,19.539 1.391,19.539 L13.634,19.539 C14.097,19.539 14.474,19.128 14.474,18.622 C14.474,18.574 14.471,18.529 14.465,18.485 ZM2.306,17.703 L3.151,6.994 L4.157,6.994 L4.157,7.922 C4.157,8.428 4.534,8.840 4.996,8.840 C5.458,8.840 5.835,8.428 5.835,7.922 L5.835,6.994 L9.190,6.994 L9.190,7.922 C9.190,8.428 9.567,8.840 10.030,8.840 C10.492,8.840 10.869,8.428 10.869,7.922 L10.869,6.994 L11.874,6.994 L12.718,17.703 L2.306,17.703 ZM5.835,5.159 L5.835,4.371 C5.835,3.297 6.587,2.424 7.512,2.424 C8.438,2.424 9.190,3.297 9.190,4.371 L9.190,5.159 L5.835,5.159 Z"/> </svg></span>
                        </a>
                      </div>
                    </div>
                  </div>
                  <!--第一页的图片背景-->
                  <div class="col-xl-5 col-lg-6 order-lg-last col-md-12 order-first col-sm-12 col-12">
                    <div class="e-banner-img">
                      <img src="${ctx}/assets/images/index1/baner01.png" alt="image" class="img-fluid">
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <!-- 广告第2页 -->
          <div class="swiper-slide">
            <div class="e-inner-slide slide1">
              <div class="container-fluid">
                <div class="row">
                  <div class="col-xl-7 col-lg-6 col-md-12 col-sm-12 col-12 align-self-center">
                    <div class="e-banner-text">
                      <h4 class="e-banner-subtitle e-bg-subtitle e-animation-right">2021开学限定</h4>
                      <h2 class="e-banner-title e-animation-left">享 受 你 的 开 学 季 <br> <span>下 单 减 免 300 元</span>
                      </h2>
                      <p class="e-banner-des e-animation-left">Taking your viewing experience to
                        next level. All super sale are our newest arrivals, special offers <br>plus
                        Free Shipping on your first order discover your style now.</p>
                      <div class="banner-btn-wrap e-animation-left">
                        <a class="e-btn white banner-btn" href="${pageContext.request.contextPath}/clothes/toAll">立即购买
                          <span><svg xmlns:xlink="http://www.w3.org/1999/xlink" width="15px"
                                     height="20px"> <path fill-rule="evenodd"
                                                          fill="rgb(122, 183, 186)"
                                                          d="M14.465,18.485 L13.480,5.998 C13.441,5.519 13.082,5.159 12.643,5.159 L10.869,5.159 L10.869,4.371 C10.869,2.285 9.363,0.588 7.512,0.588 C5.663,0.588 4.157,2.285 4.157,4.371 L4.157,5.159 L2.381,5.159 C1.942,5.159 1.582,5.519 1.545,5.998 L0.555,18.542 C0.536,18.791 0.611,19.040 0.761,19.228 C0.920,19.426 1.150,19.539 1.391,19.539 L13.634,19.539 C14.097,19.539 14.474,19.128 14.474,18.622 C14.474,18.574 14.471,18.529 14.465,18.485 ZM2.306,17.703 L3.151,6.994 L4.157,6.994 L4.157,7.922 C4.157,8.428 4.534,8.840 4.996,8.840 C5.458,8.840 5.835,8.428 5.835,7.922 L5.835,6.994 L9.190,6.994 L9.190,7.922 C9.190,8.428 9.567,8.840 10.030,8.840 C10.492,8.840 10.869,8.428 10.869,7.922 L10.869,6.994 L11.874,6.994 L12.718,17.703 L2.306,17.703 ZM5.835,5.159 L5.835,4.371 C5.835,3.297 6.587,2.424 7.512,2.424 C8.438,2.424 9.190,3.297 9.190,4.371 L9.190,5.159 L5.835,5.159 Z"/> </svg></span>
                        </a>
                      </div>
                    </div>
                  </div>
                  <div class="col-xl-5 col-lg-6 order-lg-last col-md-12 order-first col-sm-12 col-12">
                    <div class="e-banner-img">
                      <img src="${ctx}/assets/images/index1/baner02.png" alt="image" class="img-fluid">
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <!-- 广告第3页 -->
          <div class="swiper-slide">
            <div class="e-inner-slide slide1">
              <div class="container-fluid">
                <div class="row">
                  <div class="col-xl-7 col-lg-6 col-md-12 col-sm-12 col-12 align-self-center">
                    <div class="e-banner-text">
                      <h4 class="e-banner-subtitle e-bg-subtitle e-animation-right">圣诞系列</h4>
                      <h2 class="e-banner-title e-animation-left">顶 级 奢 华 <br>
                        <span>到 手 只 需 200元！</span>
                      </h2>
                      <p class="e-banner-des e-animation-left">Taking your viewing experience to
                        next level. All super sale are our newest arrivals, special offers <br>plus
                        Free Shipping on your first order discover your style now.</p>
                      <div class="banner-btn-wrap e-animation-left">
                        <a class="e-btn white banner-btn" href="${pageContext.request.contextPath}/clothes/toAll">立即购买
                          <span><svg xmlns:xlink="http://www.w3.org/1999/xlink" width="15px"
                                     height="20px"> <path fill-rule="evenodd"
                                                          fill="rgb(122, 183, 186)"
                                                          d="M14.465,18.485 L13.480,5.998 C13.441,5.519 13.082,5.159 12.643,5.159 L10.869,5.159 L10.869,4.371 C10.869,2.285 9.363,0.588 7.512,0.588 C5.663,0.588 4.157,2.285 4.157,4.371 L4.157,5.159 L2.381,5.159 C1.942,5.159 1.582,5.519 1.545,5.998 L0.555,18.542 C0.536,18.791 0.611,19.040 0.761,19.228 C0.920,19.426 1.150,19.539 1.391,19.539 L13.634,19.539 C14.097,19.539 14.474,19.128 14.474,18.622 C14.474,18.574 14.471,18.529 14.465,18.485 ZM2.306,17.703 L3.151,6.994 L4.157,6.994 L4.157,7.922 C4.157,8.428 4.534,8.840 4.996,8.840 C5.458,8.840 5.835,8.428 5.835,7.922 L5.835,6.994 L9.190,6.994 L9.190,7.922 C9.190,8.428 9.567,8.840 10.030,8.840 C10.492,8.840 10.869,8.428 10.869,7.922 L10.869,6.994 L11.874,6.994 L12.718,17.703 L2.306,17.703 ZM5.835,5.159 L5.835,4.371 C5.835,3.297 6.587,2.424 7.512,2.424 C8.438,2.424 9.190,3.297 9.190,4.371 L9.190,5.159 L5.835,5.159 Z"/> </svg></span>
                        </a>
                      </div>
                    </div>
                  </div>
                  <div class="col-xl-5 col-lg-6 order-lg-last col-md-12 order-first col-sm-12 col-12">
                    <div class="e-banner-img">
                      <img src="${ctx}/assets/images/index1/baner01.png" alt="image" class="img-fluid">
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <!-- 分页效果 -->
        <div class="swiper-button-next e-swiper-next">
                <span>
                    <svg xmlns:xlink="http://www.w3.org/1999/xlink" width="8px" height="16px"><path fill-rule="evenodd"
                                                                                                    d="M1.723,15.744 C1.583,15.909 1.396,15.999 1.196,15.999 C0.997,15.999 0.810,15.909 0.670,15.744 L0.223,15.219 C-0.067,14.877 -0.067,14.323 0.223,13.982 L5.312,8.003 L0.218,2.017 C0.078,1.852 0.000,1.632 0.000,1.398 C0.000,1.163 0.078,0.944 0.218,0.779 L0.664,0.255 C0.804,0.090 0.991,-0.001 1.191,-0.001 C1.390,-0.001 1.577,0.090 1.718,0.255 L7.783,7.381 C7.924,7.547 8.001,7.768 8.000,8.002 C8.001,8.238 7.924,8.458 7.783,8.624 L1.723,15.744 Z"/></svg>
                </span>
        </div>
        <div class="swiper-button-prev e-swiper-pre">
          <svg xmlns:xlink="http://www.w3.org/1999/xlink" width="8px" height="16px">
            <path fill-rule="evenodd" fill="rgb(122, 183, 186)"
                  d="M6.277,15.744 C6.417,15.909 6.604,15.999 6.803,15.999 C7.003,15.999 7.190,15.909 7.330,15.744 L7.776,15.219 C8.067,14.877 8.067,14.323 7.776,13.982 L2.688,8.003 L7.782,2.017 C7.922,1.852 8.000,1.632 8.000,1.398 C8.000,1.163 7.922,0.944 7.782,0.779 L7.336,0.255 C7.195,0.090 7.008,-0.001 6.809,-0.001 C6.610,-0.001 6.422,0.090 6.282,0.255 L0.217,7.381 C0.076,7.547 -0.001,7.768 -0.000,8.002 C-0.001,8.238 0.076,8.458 0.217,8.624 L6.277,15.744 Z"/>
          </svg>
        </div>
        <!-- 分页效果 -->
        <div class="swiper-pagination"></div>
      </div>
    </div>
  </section>

  <!-- 新品上市选择 -->
  <section class="e-newarivles-wrap e-newarivles-cloth">
    <div class="container">
      <!--标题信息-->
      <div class="row">
        <div class="col-12">
          <div class="e-heading-wrap mb-38 text-center">
            <h2 class="e-heading-title">新品上市</h2>
            <p class="e-heading-subtitle">一些新上市的</p>
          </div>
        </div>
      </div>
      <!--主体部分-->
      <div class="row">
        <div class="col-12">
          <!--从这里开始展示商品-->
          <div class="e-procategory-inner">
            <ul>
            <c:forEach items="${newslist}" var="news">
              <li>
                <div class="e-procategory-box">
                  <div class="procategory-gridbox">
                    <div class="c-product-box">
                      <div class="na-top-sec text-center">
                        <!--商品图片-->
                        <div class="na-imgbox">
                          <img src="${ctx}/${news.img}"
                               alt="product-img" class="img-fluid">
                        </div>
                        <div class="na-color-details">
                        </div>
                        <ul class="na-hover-content na-vartical-hover">
                          <li>
                            <a href="javascript:addcart(${news.id});">
                            <span><svg
                                  xmlns:xlink="http://www.w3.org/1999/xlink" width="16px"
                                  height="17px"><path fill-rule="evenodd"
                                                      fill="rgb(255, 255, 255)"
                                                      d="M15.021,2.851 C14.062,4.907 13.088,6.956 12.135,9.016 C11.930,9.458 11.634,9.640 11.181,9.638 C9.373,9.629 7.565,9.635 5.757,9.637 C5.596,9.637 5.434,9.629 5.275,9.650 C4.902,9.700 4.643,10.009 4.629,10.400 C4.615,10.804 4.874,11.151 5.255,11.214 C5.412,11.241 5.575,11.236 5.735,11.236 C8.012,11.238 10.289,11.237 12.566,11.238 C13.280,11.238 13.632,11.507 13.625,12.038 C13.617,12.573 13.269,12.832 12.558,12.832 C11.379,12.832 10.200,12.832 9.022,12.832 C9.022,12.832 9.022,12.831 9.022,12.831 C7.843,12.831 6.664,12.832 5.486,12.830 C4.381,12.829 3.531,12.194 3.224,11.143 C2.919,10.097 3.284,9.038 4.194,8.393 C4.374,8.265 4.406,8.164 4.343,7.947 C3.774,5.956 3.213,3.963 2.663,1.967 C2.594,1.713 2.490,1.621 2.246,1.631 C1.818,1.650 1.389,1.648 0.961,1.638 C0.441,1.626 0.115,1.295 0.126,0.812 C0.136,0.345 0.452,0.043 0.961,0.036 C1.631,0.028 2.301,0.028 2.970,0.035 C3.519,0.041 3.740,0.225 3.899,0.784 C4.142,1.636 4.142,1.637 4.990,1.637 C7.990,1.636 10.990,1.635 13.991,1.634 C14.124,1.634 14.259,1.631 14.392,1.645 C15.007,1.711 15.298,2.256 15.021,2.851 ZM4.588,3.243 C5.025,4.809 5.443,6.326 5.885,7.835 C5.914,7.933 6.128,8.024 6.256,8.025 C7.690,8.038 9.123,8.024 10.557,8.040 C10.825,8.043 10.960,7.952 11.076,7.699 C11.687,6.366 12.316,5.043 12.937,3.715 C13.004,3.571 13.063,3.422 13.140,3.243 C10.265,3.243 7.454,3.243 4.588,3.243 ZM6.878,14.440 C7.286,14.442 7.619,14.795 7.621,15.226 C7.622,15.658 7.295,16.018 6.891,16.029 C6.458,16.041 6.129,15.689 6.136,15.221 C6.142,14.771 6.458,14.438 6.878,14.440 ZM11.374,14.437 C11.778,14.438 12.117,14.792 12.123,15.222 C12.130,15.668 11.777,16.040 11.357,16.029 C10.943,16.018 10.631,15.670 10.634,15.223 C10.636,14.779 10.959,14.436 11.374,14.437 Z"/></svg></span></a>
                          </li>
                          <li><a href="${pageContext.request.contextPath}/clothes/toDetails?id=${news.id}"><span><svg
                                  xmlns:xlink="http://www.w3.org/1999/xlink" width="15px"
                                  height="16px"><path fill-rule="evenodd"
                                                      fill="rgb(255, 255, 255)"
                                                      d="M14.100,13.964 C13.679,13.500 13.249,13.043 12.820,12.586 L10.652,10.282 C12.647,7.194 11.603,3.514 9.448,1.831 C7.146,0.033 4.034,0.263 2.049,2.378 C0.061,4.497 -0.177,7.831 1.484,10.306 C2.306,11.533 3.683,12.418 5.168,12.673 C6.212,12.851 7.786,12.806 9.425,11.601 L9.495,11.684 C9.649,11.868 9.807,12.056 9.973,12.235 C10.891,13.225 11.810,14.213 12.740,15.191 C12.924,15.383 13.145,15.522 13.348,15.571 C13.410,15.585 13.470,15.593 13.530,15.593 C13.825,15.593 14.089,15.415 14.259,15.093 C14.462,14.710 14.404,14.298 14.100,13.964 ZM8.803,3.755 C9.536,4.540 9.938,5.586 9.936,6.701 C9.935,7.812 9.528,8.855 8.791,9.640 C8.056,10.422 7.080,10.853 6.043,10.853 C6.041,10.853 6.038,10.853 6.036,10.853 C4.997,10.851 4.017,10.410 3.275,9.611 C2.539,8.819 2.138,7.779 2.147,6.684 C2.165,4.356 3.878,2.535 6.048,2.535 C6.049,2.535 6.052,2.535 6.053,2.535 C7.094,2.536 8.071,2.969 8.803,3.755 Z"/></svg></span></a>
                          </li>
                        </ul>
                        <div class="na-top-heading">
                          <a href="${pageContext.request.contextPath}/clothes/toDetails?id=${news.id}" class="na-name">${news.clothesname}</a>
                          <h2 class="na-price">$价格${news.price}</h2>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </li>
            </c:forEach>
            </ul>
          </div>

          <!--查看更多-->
          <div class="col-12 text-center">
            <div class="load-more-wrap e-line">
              <a class="e-btn light" href="${pageContext.request.contextPath}/clothes/toAll">查看更多商品</a>
            </div>

          </div>
        </div>
      </div>
    </div>
  </section>


  <script type="text/javascript">
    function addcart(id){
      $.get("${pageContext.request.contextPath}/cart/addtoCart2?cloid="+id,function(data){
        if(data=="1"){
          alert("添加购物车成功！！请到购物车中查看")
        }else
        {
          alert("添加失败,您的购物车中已存在该商品！！")
        }
      });
      return false;
    }
  </script>


  <!--赞助商支持-->
  <div class="e-midads-wrappper">
    <div class="row">
      <div class="col-12">
        <div class="e-heading-wrap mb-38 text-center">
          <h2 class="e-heading-title">赞助商产品</h2>
        </div>
      </div>
    </div>
    <div class="container">
      <div class="row">
        <div class="col-lg-6 col-md-6 col-sm-12 col-12">
          <div class="e-topads-inner e-cads-inner">
            <a href="${pageContext.request.contextPath}/clothes/toIndex"><img src="${ctx}/assets/images/index1/mid_ads1.jpg" alt="image"
                                                                              class="img-fluid"></a>
          </div>
        </div>
        <div class="col-lg-6 col-md-6 col-sm-12 col-12">
          <div class="e-topads-inner e-cads-inner">
            <a href="${pageContext.request.contextPath}/clothes/toIndex"><img src="${ctx}/assets/images/index1/mid_ads2.jpg" alt="image"
                                                                              class="img-fluid"></a>
          </div>
        </div>
      </div>
    </div>
    <br/>
    <br/>
    <br/>
    <br/>
  </div>

  <jsp:include page="footpart.jsp"></jsp:include>

</div>
<!-- main-wrapper End -->

<!-- jQuery and Bootstrap Bundle (includes Popper) -->
<script src="${ctx}/assets/js/jquery.min.js"></script>
<script src="${ctx}/assets/js/bootstrap.bundle.min.js"></script>
<script src="${ctx}/assets/js/SmoothScroll.min.js"></script>
<script src="${ctx}/assets/js/jquery.nice-select.min.js"></script>
<script src="${ctx}/assets/js/swiper-bundle.min.js"></script>
<script src="${ctx}/assets/js/isotope.pkgd.min.js"></script>
<script src="${ctx}/assets/js/custom.js"></script>

</body>
</html>
