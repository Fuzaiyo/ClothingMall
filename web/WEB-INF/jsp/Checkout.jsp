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
        <h2 class="e-breadcumb-title">购物车结账</h2>
    </div>


<%--    结账部分--%>
    <section class="e-checkout-wrap">
        <div class="container">
            <div class="row">
                <div class="col-xl-9 col-lg-12">
                    <div class="e-checkout-sec mb-80">
                        <div class="cmn-ck-wrap mb-30">
                            <div class="cmn-ck-header">
                                <h2 class="cmn-ck-heading">结账</h2>
                            </div>
                            <div class="cmn-ck-body">
                                <div class="cmn-ck-box mb-20">
                                    <h4 class="cmn-brdr-ttle mb-20">Contact Information</h4>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="e-form-field mb-30">
                                                <label>Name</label>
                                                <input class="e-field-inner" type="text">
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="e-form-field mb-30">
                                                <label>Email</label>
                                                <input class="e-field-inner" type="email">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="cmn-ck-box mb-20">
                                    <h4 class="cmn-brdr-ttle mb-20">Shipping Address</h4>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="e-form-field mb-30">
                                                <label>First Name</label>
                                                <input class="e-field-inner" type="text">
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="e-form-field mb-30">
                                                <label>Last Name</label>
                                                <input class="e-field-inner" type="text">
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="e-form-field mb-30">
                                                <label>Address 01</label>
                                                <input class="e-field-inner" type="text">
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="e-form-field mb-30">
                                                <label>Address 02</label>
                                                <input class="e-field-inner" type="text">
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="e-form-field mb-30">
                                                <label>Country</label>
                                                <select class="e-field-inner e-field-select">
                                                    <option data-display="Select Country">Select Country</option>
                                                    <option value="1">Russia</option>
                                                    <option value="2">Canada</option>
                                                    <option value="3">United States</option>
                                                    <option value="4">India</option>
                                                    <option value="5">Australia</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="e-form-field mb-30">
                                                <label>State</label>
                                                <select class="e-field-inner e-field-select">
                                                    <option data-display="Select State">Select State</option>
                                                    <option value="1">Andhra Pradesh</option>
                                                    <option value="2">Arunachal Pradesh</option>
                                                    <option value="3">Assam</option>
                                                    <option value="4">Bihar</option>
                                                    <option value="5">Chhattisgarh</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="e-form-field mb-30">
                                                <label>Pincode</label>
                                                <input class="e-field-inner" type="text">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="cmn-ck-box">
                                    <h4 class="cmn-brdr-ttle mb-20">选择支付方式</h4>
                                    <div class="row">

                                        <div class="col-lg-4 col-md-6">
                                            <div class=" mb-30">
                                                <input type="radio" name="payment" id="payment1" class="cstm-fileinput">
                                                <label for="payment1" class="pay-checkbox">
                                                    <span class="pay-circle"></span>
                                                    <img src="${ctx}/assets/images/index1/mastercard.png" alt="image">
                                                    Master Card
                                                </label>
                                            </div>
                                        </div>
                                        <div class="col-lg-4 col-md-6">
                                            <div class=" mb-30">
                                                <input type="radio" name="payment" id="payment2" class="cstm-fileinput">
                                                <label for="payment2" class="pay-checkbox">
                                                    <span class="pay-circle"></span>
                                                    <img src="${ctx}/assets/images/index1/visa.png" alt="image">
                                                    Visa Card
                                                </label>
                                            </div>
                                        </div>
                                        <div class="col-lg-4 col-md-6">
                                            <div class=" mb-30">
                                                <input type="radio" name="payment" id="payment3" class="cstm-fileinput">
                                                <label for="payment3" class="pay-checkbox">
                                                    <span class="pay-circle"></span>
                                                    <img src="${ctx}/assets/images/index1/paypal.png" alt="image">
                                                    PayPal
                                                </label>
                                            </div>
                                        </div>

                                        <div class="col-md-6">
                                            <div class="e-form-field mb-30">
                                                <label>持卡人姓名</label>
                                                <input class="e-field-inner" type="text">
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="e-form-field mb-30">
                                                <label>卡号</label>
                                                <input class="e-field-inner" type="text">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <a href="${ctx}/cart/judge" class="e-btn">立即支付</a>
                    </div>
                </div>
                <div class="col-xl-3 col-lg-12">
                    <div class="e-shopcart-sidebar mb-80">
                        <div class="e-totalsumry mb-30">
                            <div class="e-totalsumry-header">
                                <h2 class="e-totalsumry-ttl">账单结算</h2>
                            </div>
                            <div class="e-totalsumry-body">
                                <ul class="e-totalsumry-list">
                                    <li>
                                        <span class="ts-list-head">小计</span>
                                        <span class="ts-list-shead">$${sumprice}</span>
                                    </li>
                                    <li>
                                        <span class="ts-list-head">折扣</span>
                                        <span class="ts-list-shead">0</span>
                                    </li>
                                </ul>
                                <a href="${ctx}/user/toAccount" class="ts-chngadd">修改地址
                                    <img src="${ctx}/assets/images/index1/svg/edit.svg" alt="edit">
                                </a>
                            </div>
                            <div class="e-totalsumry-fotr">
                                <ul class="e-totalsumry-list total">
                                    <li>
                                        <span class="ts-list-head">合计</span>
                                        <span class="ts-list-shead">$${sumprice}</span>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- 底部部分 -->
    <jsp:include page="footpart.jsp"></jsp:include>
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
