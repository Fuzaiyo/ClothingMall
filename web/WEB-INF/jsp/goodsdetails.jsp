<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
        <h2 class="e-breadcumb-title">商品详情</h2>
    </div>

    <!-- 商品详情 -->
    <section class="e-prodetails-wrap">
        <div class="container">
            <div class="row">

                <!--商品图片-->
                <div class="col-lg-6 col-md-12">
                    <div class="pd-gallery-wrap">
                        <!--侧边小图片展示-->
                        <!--                        <div class="pd-thumb-box">-->
                        <!--                            <ul class="pd-thumb-list">-->
                        <!--                                <li class="active">-->
                        <!--                                    <img src="${ctx}/assets/images/index1/pro-singlethumb01.jpg" alt="product-img"-->
                        <!--                                         data-source="${ctx}/assets/images/index1/pro-single01.jpg" class="pro_thumb">-->
                        <!--                                </li>-->
                        <!--                                <li>-->
                        <!--                                    <img src="${ctx}/assets/images/index1/pro-singlethumb02.jpg" alt="product-img"-->
                        <!--                                         data-source="${ctx}/assets/images/index1/pro-single02.jpg" class="pro_thumb">-->
                        <!--                                </li>-->
                        <!--                                <li>-->
                        <!--                                    <img src="${ctx}/assets/images/index1/pro-singlethumb03.jpg" alt="product-img"-->
                        <!--                                         data-source="${ctx}/assets/images/index1/pro-single03.jpg" class="pro_thumb">-->
                        <!--                                </li>-->
                        <!--                            </ul>-->
                        <!--                        </div>-->
                        <!--商品主图片-->
                        <div class="pd-img-wrap">
                            <div class="pd-img text-center ">
                                <a class="view" href="${ctx}/${singleitem.img}">
                                    <img src="${ctx}/${singleitem.img}" alt="product-img">
                                </a>
                            </div>
                        </div>
                    </div>
                </div>

                <!--商品信息-->
                <div class="col-lg-6 col-md-12">
                    <div class="prodetails-info">
                        <!--上半部分描述-->
                        <div class="pd-infotop">
                            <h2 class="pd-title">${singleitem.clothesname}</h2>

                            <ul class="pd-price-wrap">
                                <li><span class="pd-price-ttile">单价$${singleitem.price}</span></li>
                            </ul>
                        </div>
                        <!--价格尺寸描述-->
                        <div class="pd-info-bottom">
                            <ul class="info-bottom-list">
                                <!--颜色选择-->
                                <li>
                                    <div class="ib-list-left">
                                        <span>颜色选择</span>
                                    </div>
                                    <div class="ib-list-right">
                                        <ul class="na-color-skin">
                                            <li></li>
                                            <li></li>
                                            <li></li>
                                            <li></li>
                                            <li></li>
                                        </ul>
                                    </div>
                                </li>

                                <!--尺码选择-->
                                <li>
                                    <div class="ib-list-left">
                                        <span>尺寸</span>
                                    </div>
                                    <div class="ib-list-right">
                                        <ul class="pd-info-size d-flex">
                                            <li>S</li>
                                            <li>M</li>
                                            <li>L</li>
                                            <li>XL</li>
                                        </ul>
                                    </div>
                                </li>

                                <!--数量选择-->
                                <li>
                                    <div class="ib-list-left">
                                        <span>数量</span>
                                    </div>
                                    <div class="ib-list-right">
                                        <form action="javascript:submit(${singleitem.id});">
                                            <ul class="pd-qua-wrap">
                                                <li>
                                                    <div class="quantity-box">
                                                        <input id="input" type="text" class="quantity" value="1">
                                                        <span class="quantity-minus pa-sub quantity-icon"> - </span>
                                                        <span class="quantity-plus  pa-add quantity-icon"> + </span>
                                                        <div class="clearfix"></div>
                                                    </div>
                                                </li>
                                                <li>
                                                    <button type="submit" class="e-btn pd-addcart">加入购物车</button>
                                                </li>
                                            </ul>
                                        </form>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </section>
    <!-- 商品底部描述 -->
    <section class="e-pdtab-wrap">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="e-pdtab-inner">
                        <ul class="nav nav-pills e-pdtab-tabs" role="tablist">
                            <li>
                                <a class="active" data-toggle="pill" href="#descrtiption" role="tab"
                                   aria-controls="descrtiption" aria-selected="true">商品描述</a>
                            </li>
                        </ul>
                        <div class="tab-content">
                            <div class="tab-pane fade show active" id="descrtiption" role="tabpanel">
                                <div class="tab-content-inner">
                                    <p class="mb-20">${singleitem.detail}</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <script type="text/javascript">
        function submit(id){
            var input1=  document.getElementById("input")//获取输入框元素
            var num= input1.value;

            $.get("${ctx}/cart/addtoCart1?cid="+id+"&num="+num,function(data){
                if(data=="1"){
                    alert("添加购物车成功！！")
                    window.location.href = "${pageContext.request.contextPath}/clothes/toAll";

                }else
                {
                    alert("添加失败,您的购物车中已存在该商品！！")
                    window.location.href = "${pageContext.request.contextPath}/clothes/toAll";
                }
            });
            return false;
        }
        //未搞懂的代码，ajax传参可能有问题，总是进入error
        <%--function submit() {--%>
        <%--    $.ajax({--%>
        <%--        url: "${pageContext.request.contextPath}/cart/addtoCart1",--%>
        <%--        type: "get",       //提交方式--%>
        <%--        // contentType: 'application/json',--%>
        <%--        // data: JSON.stringify(data),--%>
        <%--        dataType: "text",--%>
        <%--        async: false,--%>
        <%--        data: "cid=${singleitem.id}",--%>

        <%--        success: function (data) {--%>
        <%--            //请求成功之后进入该方法，data为成功后返回的数据--%>
        <%--            if(data=="1")--%>
        <%--            alert("添加购物车成功！！")--%>
        <%--            alert("添加购物车成功1111！！")--%>
        <%--            window.location.href = "${pageContext.request.contextPath}/clothes/toIndex";--%>

        <%--        },--%>
        <%--        error: function (errorMsg) {--%>
        <%--            //请求失败之后进入该方法，errorMsg为失败后返回的错误信息--%>
        <%--            console.log(errorMsg);--%>
        <%--            alert(errorMsg)--%>
        <%--            alert("添加购物车失败！！")--%>
        <%--            window.location.href = "${pageContext.request.contextPath}/clothes/toIndex";--%>
        <%--        }--%>
        <%--    });--%>
        <%--}--%>
    </script>


    <br>
    <br>
    <br>
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
