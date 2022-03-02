<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"></c:set>
<html>
<head>
    <jsp:include page="headpart.jsp"></jsp:include>
</head>

<body>
<div class="main-wrapper">
    <jsp:include page="bodypart.jsp"></jsp:include>

    <!-- 分割线-->
    <div class="e-breadcumb-wrap text-center">
        <h2 class="e-breadcumb-title">商品展示</h2>
    </div>

    <!--    商品展示-->
    <section class="e-procategory-wrap">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <p class="e-filter-items" style="text-align: center">${cue}</p>
                    <br>
                    <br>
                    <!--                    从这里开始展示商品-->
                    <div class="e-procategory-inner">

                        <ul>
                            <c:forEach items="${list}" var="item">
                                <li>
                                    <div class="e-procategory-box">
                                        <div class="procategory-gridbox">
                                            <div class="c-product-box">
                                                <div class="na-top-sec text-center">
                                                    <!--商品图片-->
                                                    <div class="na-imgbox">
                                                        <img src="${ctx}/${item.img}"
                                                             alt="product-img" class="img-fluid">
                                                    </div>
                                                    <div class="na-color-details">
                                                    </div>
                                                    <ul class="na-hover-content na-vartical-hover">

                                                        <li>
                                                            <a href="javascript:addcart(${item.id});">
                                                                <span >
                                                                    <svg
                                                                            xmlns:xlink="http://www.w3.org/1999/xlink"
                                                                            width="16px"
                                                                            height="17px"><path fill-rule="evenodd"
                                                                                                fill="rgb(255, 255, 255)"
                                                                                                d="M15.021,2.851 C14.062,4.907 13.088,6.956 12.135,9.016 C11.930,9.458 11.634,9.640 11.181,9.638 C9.373,9.629 7.565,9.635 5.757,9.637 C5.596,9.637 5.434,9.629 5.275,9.650 C4.902,9.700 4.643,10.009 4.629,10.400 C4.615,10.804 4.874,11.151 5.255,11.214 C5.412,11.241 5.575,11.236 5.735,11.236 C8.012,11.238 10.289,11.237 12.566,11.238 C13.280,11.238 13.632,11.507 13.625,12.038 C13.617,12.573 13.269,12.832 12.558,12.832 C11.379,12.832 10.200,12.832 9.022,12.832 C9.022,12.832 9.022,12.831 9.022,12.831 C7.843,12.831 6.664,12.832 5.486,12.830 C4.381,12.829 3.531,12.194 3.224,11.143 C2.919,10.097 3.284,9.038 4.194,8.393 C4.374,8.265 4.406,8.164 4.343,7.947 C3.774,5.956 3.213,3.963 2.663,1.967 C2.594,1.713 2.490,1.621 2.246,1.631 C1.818,1.650 1.389,1.648 0.961,1.638 C0.441,1.626 0.115,1.295 0.126,0.812 C0.136,0.345 0.452,0.043 0.961,0.036 C1.631,0.028 2.301,0.028 2.970,0.035 C3.519,0.041 3.740,0.225 3.899,0.784 C4.142,1.636 4.142,1.637 4.990,1.637 C7.990,1.636 10.990,1.635 13.991,1.634 C14.124,1.634 14.259,1.631 14.392,1.645 C15.007,1.711 15.298,2.256 15.021,2.851 ZM4.588,3.243 C5.025,4.809 5.443,6.326 5.885,7.835 C5.914,7.933 6.128,8.024 6.256,8.025 C7.690,8.038 9.123,8.024 10.557,8.040 C10.825,8.043 10.960,7.952 11.076,7.699 C11.687,6.366 12.316,5.043 12.937,3.715 C13.004,3.571 13.063,3.422 13.140,3.243 C10.265,3.243 7.454,3.243 4.588,3.243 ZM6.878,14.440 C7.286,14.442 7.619,14.795 7.621,15.226 C7.622,15.658 7.295,16.018 6.891,16.029 C6.458,16.041 6.129,15.689 6.136,15.221 C6.142,14.771 6.458,14.438 6.878,14.440 ZM11.374,14.437 C11.778,14.438 12.117,14.792 12.123,15.222 C12.130,15.668 11.777,16.040 11.357,16.029 C10.943,16.018 10.631,15.670 10.634,15.223 C10.636,14.779 10.959,14.436 11.374,14.437 Z"/>
                                                                    </svg>
                                                                </span>
                                                            </a>
                                                        </li>

                                                        <li>
                                                            <a href="${pageContext.request.contextPath}/clothes/toDetails?id=${item.id}"><span><svg
                                                                    xmlns:xlink="http://www.w3.org/1999/xlink"
                                                                    width="15px"
                                                                    height="16px"><path fill-rule="evenodd"
                                                                                        fill="rgb(255, 255, 255)"
                                                                                        d="M14.100,13.964 C13.679,13.500 13.249,13.043 12.820,12.586 L10.652,10.282 C12.647,7.194 11.603,3.514 9.448,1.831 C7.146,0.033 4.034,0.263 2.049,2.378 C0.061,4.497 -0.177,7.831 1.484,10.306 C2.306,11.533 3.683,12.418 5.168,12.673 C6.212,12.851 7.786,12.806 9.425,11.601 L9.495,11.684 C9.649,11.868 9.807,12.056 9.973,12.235 C10.891,13.225 11.810,14.213 12.740,15.191 C12.924,15.383 13.145,15.522 13.348,15.571 C13.410,15.585 13.470,15.593 13.530,15.593 C13.825,15.593 14.089,15.415 14.259,15.093 C14.462,14.710 14.404,14.298 14.100,13.964 ZM8.803,3.755 C9.536,4.540 9.938,5.586 9.936,6.701 C9.935,7.812 9.528,8.855 8.791,9.640 C8.056,10.422 7.080,10.853 6.043,10.853 C6.041,10.853 6.038,10.853 6.036,10.853 C4.997,10.851 4.017,10.410 3.275,9.611 C2.539,8.819 2.138,7.779 2.147,6.684 C2.165,4.356 3.878,2.535 6.048,2.535 C6.049,2.535 6.052,2.535 6.053,2.535 C7.094,2.536 8.071,2.969 8.803,3.755 Z"/></svg></span></a>
                                                        </li>
                                                    </ul>

                                                    <div class="na-top-heading">
                                                        <a href="${pageContext.request.contextPath}/clothes/toDetails?id=${item.id}" class="na-name">${item.clothesname}</a>
                                                        <h2 class="na-price">价格$${item.price}</h2>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                            </c:forEach>
                        </ul>
                    </div>

                    <script type="text/javascript">
                        function addcart(id){
                            $.get("${pageContext.request.contextPath}/cart/addtoCart2?cloid="+id, function(data){
                                if(data=="1"){
                                    alert("添加购物车成功！！")
                                }else
                                {
                                    alert("添加失败,您的购物车中已存在该商品！！")
                                }
                            });
                            return false;
                        }
                    </script>

                    <!--                    控制分页的-->
                    <div class="e-pagination-wrap mt-10">
                        <ul class="e-pagination justify-content-center e-line">
                            <li class="e-page-item disabled"><a class="e-btn light" href="javascript:void(0);">Prev</a>
                            </li>
                            <li class="e-page-item"><a class="active e-btn light" href="javascript:void(0);">01</a></li>
                            <li class="e-page-item"><a class="e-btn light" href="javascript:void(0);">02</a></li>
                            <li class="e-page-item"><a class="e-btn light pointer-events-none"
                                                       href="javascript:void(0);">...</a></li>
                            <li class="e-page-item"><a class="e-btn light" href="javascript:void(0);">08</a></li>
                            <li class="e-page-item"><a class="e-btn light" href="javascript:void(0);">09</a></li>
                            <li class="e-page-item"><a class="e-btn light" href="javascript:void(0);">Next</a></li>
                        </ul>
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
