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
        <h2 class="e-breadcumb-title">购物车详情</h2>
    </div>

    <!-- 中间部分 -->
    <section class="e-shopcart-wrap">
        <div class="container">
            <div class="row">
                <!--                左边商品部分-->
                <div class="col-xl-9 col-lg-12">
                    <div class="e-shopcart-sec">
                        <div class="shopcart-table-wrap mb-30">

                            <form class="table-responsive">
                                <table class="shopcart-table">
                                    <thead>
                                    <tr>
                                        <th>商品列表</th>
                                        <th>数量</th>
                                        <th>单价</th>
                                        <th>总价</th>
                                        <th>&nbsp;</th>
                                        <th>&nbsp;</th>

                                    </tr>

                                    </thead>

                                    <tbody>
                                    <c:forEach items="${cartItemsList}" var="item">
                                        <tr>
                                            <td>
                                                <div class="sc-productwrap">
                                                    <a href="${pageContext.request.contextPath}/clothes/toDetails?id=${item.cloid}"
                                                       class="sc-product-thumb">
                                                        <img src="${ctx}/${item.img}" alt="Product"
                                                             class="img-fluid">
                                                    </a>
                                                    <div class="sc-product-details">
                                                        <a href="${pageContext.request.contextPath}/clothes/toDetails?id=${item.cloid}"
                                                           class="sc-product-ttl">${item.clothesname}</a>
                                                        <p class="sc-product-sz">尺寸 : M</p>
                                                    </div>
                                                </div>
                                            </td>
                                            <!--购物车添加减少操作-->
                                            <td>
                                                <div class="quantity-box">
                                                    <input type="text" id="input${item.cartid}" name="numinput" class="quantity"
                                                           value="${item.number}">

                                                    <span class="quantity-minus pa-sub quantity-icon"
                                                          onclick="changesum1(${item.price},${item.cartid})"> - </span>
                                                    <span class="quantity-plus  pa-add quantity-icon"
                                                          onclick="changesum2(${item.price},${item.cartid})"> + </span>
                                                </div>
                                            </td>

                                            <td><span class="sc-product-prc">$${item.price}</span></td>

                                            <td><span class="sc-product-prc"
                                                      id="sum${item.cartid}">$${item.price*item.number}</span>
                                            </td>

                                                <%--选中复选框--%>
                                            <td>
                                                <input type="checkbox" id="checkbox${item.cartid}" name="cartItemCheckBox"
                                                       value="${item.cartid}" onclick="showsumprice(${item.cartid},${item.price},${item.number});">
                                            </td>

                                            <!--删除商品操作-->
                                            <td>
                                                <a href="javascript:deletecart(${item.cartid});"
                                                   class="sc-produc-remove e-remove-product">
                                                    <img src="${ctx}/assets/images/index1/svg/cut.svg" alt="icon">
                                                </a>
                                            </td>
                                        </tr>
                                    </c:forEach>
                                    </tbody>
                                </table>
                            </form>

                        </div>
                        <div class="shopcart-bottom mb-30">
                            <ul class="shopcart-dis-list">
                                <li>
                                    <a href="javascript:update();" class="e-btn black update-cart">保存购物车修改</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
                <!--                右边结算部分-->
                <div class="col-xl-3 col-lg-12">
                    <div class="e-shopcart-sidebar">
                        <div class="e-totalsumry mb-30">
                            <div class="e-totalsumry-header">
                                <h2 class="e-totalsumry-ttl">购物车总计摘要</h2>
                            </div>
                            <div class="e-totalsumry-body">
                                <ul class="e-totalsumry-list">
                                    <li>
                                        <span class="ts-list-head">小计</span>
                                        <span class="ts-list-shead" id="sumpriceshow1">$0</span>
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
                                        <span class="ts-list-shead" id="sumpriceshow2">$0</span>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <a href="javascript:gotocheckout();" class="e-btn">去结算</a>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <%--js代码--%>
    <script>

        var del=[-1];
        var index=0;
        var sum = 0;

        function gotocheckout(){
            var arr = [];	//声明一个数组用来存放遍历出来的checkbox value值,在这里就是要结算的购物车id,到时候要删除这些id
            $("input[name='cartItemCheckBox']:checked").each(function(i){	//遍历
                arr.push($(this).val());	//将我们遍历出来选中的cartid,push到数组中
            })

            $.ajax({
                url:"${ctx}/cart/tofakecheckout",
                data:{
                    "cartItemsToDel":arr,   //如果数组没初始化 无法传参
                    "sumprice":sum,
                },
                dataType:"json",
                type:"post",
                traditional:true,//防止深度序列化
                cache:false,
                async:false,
                success:function(date){
                    if(date=="1"){
                        window.location.href = "${ctx}/cart/torealcheckout";
                        sum=0;
                    }
                }
            });
        }

        function showsumprice(cartid,price,number){
            if($('#checkbox'+cartid).is(':checked')) {
               sum=sum+price*number;
            }else {
                sum=sum-price*number;
            }
            $("#sumpriceshow1").text("$" + sum);
            $("#sumpriceshow2").text("$" + sum);
        }

        //保存购物车商品数量
        function update() {
            //读取每个的购物车条目的数量值，然后打包发给后台进行保存
            var cartidnum = [];
            var x=document.getElementsByName("numinput");
            for (var i = 0; i < x.length; i++) {
                cartidnum[i]=x[i].value
            }

            $.ajax({
                url:"${ctx}/cart/changeCartItemNum",
                data:{
                    "cartidnum":cartidnum,   //如果数组没初始化 无法传参
                    "del":del,
                },
                dataType:"json",
                type:"post",
                traditional:true,//防止深度序列化
                cache:false,
                async:false,
                success:function(date){
                    if(date=="1"){
                        del=[-1];
                        index=0;
                        window.location.href = "${ctx}/cart/toCart";
                    }
                }
            });
        }

        //删除购物车
        function deletecart(cartid) {
            <%--$.get("${ctx}/cart/delete?cartid=" + cartid, function (data) {--%>
            <%--    if (data == "1") {--%>
            <%--        alert("删除购物车条目成功！！")--%>
            <%--    } else {--%>
            <%--        alert("删除失败")--%>
            <%--    }--%>
            <%--});--%>
            <%--return false;--%>
            del[index]=cartid;
            index++;
        }

        //添加件数动态更新商品价格
        function changesum1(price, cartid) {
            var inputid = ("input" + cartid).toString()
            var num = document.getElementById(inputid).value;
            num--;
            var sum = num * price;
            $("#sum" + cartid).text("$" + sum);

        }

        //减少件数动态更新商品价格
        function changesum2(price, cartid) {
            var inputid = ("input" + cartid).toString()
            var num = document.getElementById(inputid).value;
            num++;
            var sum = num * price;
            $("#sum" + cartid).text("$" + sum);
        }
    </script>

    <!-- 底部部分 -->
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
