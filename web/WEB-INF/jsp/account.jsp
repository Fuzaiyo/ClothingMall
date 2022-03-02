<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="ctx" value="${pageContext.request.contextPath}"></c:set>

<html lang="en">
<head>
    <jsp:include page="headpart.jsp"></jsp:include>
</head>


<body>
<div class="main-wrapper">
    <jsp:include page="bodypart.jsp"></jsp:include>

    <!-- 分割线-->
    <div class="e-breadcumb-wrap text-center">
        <h2 class="e-breadcumb-title">我的账户</h2>
    </div>

    <!-- 中间部分 -->
    <div class="e-myaccount-wrap  mb-80">
        <div class="container-lg">
            <div class="row">
                <div class="col-lg-12">
                    <div class="e-myaccount-inner">
                        <div class="e-ma-menu-wrap">
                            <ul class="e-ma-nav-list">
                                <li>
                                    <a href="" class="active">用户详细信息</a>
                                </li>
                                <li>
                                    <a href="${pageContext.request.contextPath}/cart/toCart">我的购物车</a>
                                </li>
                                <li>
                                    <a href="${pageContext.request.contextPath}/user/toRecharge">充值</a>
                                </li>
                                <li>
                                    <a href="${pageContext.request.contextPath}/user/logout">注销</a>
                                </li>
                            </ul>
                        </div>
                        <div class="e-ma-details">
                            <div class="e-ma-details-inner">
                                <div class="e-mad-acoutdeatils">
                                    <div class="e-checkout-sec">
                                        <form action="${pageContext.request.contextPath}/user/updateUser" method="post">
                                            <div class="cmn-ck-wrap mb-30">
                                                <!--头顶黑色部分  -->
                                                <div class="cmn-ck-header">
                                                    <h2 class="cmn-ck-heading">用户详细信息</h2>
                                                </div>
                                                <!--用户信息-->
                                                <div class="cmn-ck-body">

                                                    <div class="cmn-ck-box mb-20">
                                                        <div class="row">
                                                            <!--个人头像-->
                                                            <div class="col-md-12">
                                                                <div class="e-profile-img text-center mb-50">
                                                                    <div class="e-userpro-img">
                                                                        <img src="${ctx}/assets/images/user_profile.jpg"
                                                                             alt="image">
                                                                        <input type="file" id="user_profile">
                                                                        <label for="user_profile">
                                                                    <span>
                                                                        <svg version="1.1"
                                                                             xmlns="http://www.w3.org/2000/svg"
                                                                             xmlns:xlink="http://www.w3.org/1999/xlink"
                                                                             x="0px" y="0px" width="20px" height="20px"
                                                                             viewBox="0 0 485.219 485.22"
                                                                             style="enable-background:new 0 0 485.219 485.22;"
                                                                             xml:space="preserve">
                                                                        <g>
                                                                            <path fill="#ffffff" d="M467.476,146.438l-21.445,21.455L317.35,39.23l21.445-21.457c23.689-23.692,62.104-23.692,85.795,0l42.886,42.897
                                                                                C491.133,84.349,491.133,122.748,467.476,146.438z M167.233,403.748c-5.922,5.922-5.922,15.513,0,21.436
                                                                                c5.925,5.955,15.521,5.955,21.443,0L424.59,189.335l-21.469-21.457L167.233,403.748z M60,296.54c-5.925,5.927-5.925,15.514,0,21.44
                                                                                c5.922,5.923,15.518,5.923,21.443,0L317.35,82.113L295.914,60.67L60,296.54z M338.767,103.54L102.881,339.421
                                                                                c-11.845,11.822-11.815,31.041,0,42.886c11.85,11.846,31.038,11.901,42.914-0.032l235.886-235.837L338.767,103.54z
                                                                                    M145.734,446.572c-7.253-7.262-10.749-16.465-12.05-25.948c-3.083,0.476-6.188,0.919-9.36,0.919
                                                                                c-16.202,0-31.419-6.333-42.881-17.795c-11.462-11.491-17.77-26.687-17.77-42.887c0-2.954,0.443-5.833,0.859-8.703
                                                                                c-9.803-1.335-18.864-5.629-25.972-12.737c-0.682-0.677-0.917-1.596-1.538-2.338L0,485.216l147.748-36.986
                                                                                C147.097,447.637,146.36,447.193,145.734,446.572z"></path>
                                                                        </g>
                                                                        </svg>
                                                                    </span>
                                                                        </label>
                                                                    </div>
                                                                </div>
                                                            </div>

                                                            <div class="col-lg-6">
                                                                <div class="e-form-field mb-30">
                                                                    <label>用户id</label>
                                                                    <br>
                                                                    <h2 class="pd-title">${sessionScope.user.id}</h2>
                                                                </div>
                                                            </div>
                                                            <div class="col-lg-6">
                                                                <div class="e-form-field mb-30">
                                                                    <label>姓名</label>
                                                                    <br>
                                                                    <h2 class="pd-title">${sessionScope.user.username}</h2>
                                                                </div>
                                                            </div>
                                                            <div class="col-lg-6">
                                                                <div class="e-form-field mb-30">
                                                                    <label>个人余额</label>
                                                                    <br>
                                                                    <h2 class="pd-title">${sessionScope.user.balance}</h2>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>

                                                    <div class="cmn-ck-box mb-20">
                                                        <h4 class="cmn-brdr-ttle mb-20">修改收货地址信息</h4>
                                                        <div class="row">
                                                            <div class="col-lg-6">
                                                                <div class="e-form-field mb-30">
                                                                    <label>修改收货人姓名</label>
                                                                    <input class="e-field-inner" type="text"
                                                                           name="consignee"
                                                                           placeholder="当前收货人：${sessionScope.user.consignee}">
                                                                </div>
                                                            </div>
                                                            <div class="col-lg-6">
                                                                <div class="e-form-field mb-30">
                                                                    <label>修改收货人电话号码</label>
                                                                    <input class="e-field-inner" type="text"
                                                                           name="phone"
                                                                           placeholder="当前收货人号码：${sessionScope.user.phone}">
                                                                </div>
                                                            </div>
                                                            <div class="col-md-12">
                                                                <div class="e-form-field">
                                                                    <label>修改个人新地址</label>
                                                                    <input class="e-field-inner" type="text"
                                                                           name="address"
                                                                           placeholder="当前地址:${sessionScope.user.address}">
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div style="text-align: center">
                                            <button type="submit" class="e-btn">保存修改</button>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- 底部部分 -->
 <jsp:include page="footpart.jsp"></jsp:include>

    <!-- main-wrapper End -->
</div>


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