<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"></c:set>

<!DOCTYPE html>
<html lang="en">
<head>
    <jsp:include page="headpart.jsp"></jsp:include>
<body>

<div class="main-wrapper">
    <jsp:include page="bodypart.jsp"></jsp:include>

    <!-- 分割线-->
    <div class="e-breadcumb-wrap text-center">
        <h2 class="e-breadcumb-title">用户充值</h2>
    </div>

<%--    充值主体盒子--%>
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
            <!-- Modal body -->
            <div class="modal-body">
                <div class="modal-inner">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="modal-inner-box">
                                <div class="autho-model-filed">
                                    <form action="${pageContext.request.contextPath}/user/recharge" method="get">
                                        <div class="row">
                                            <div class="col-md-12">
                                                <div class="e-form-field mb-20">
                                                    <label>充入的用户ID</label>
                                                    <input class="e-field-inner" type="text" name="userid">
                                                </div>
                                            </div>
                                            <div class="col-md-12">
                                                <div class="e-form-field mb-20">
                                                    <label>充值数额</label>
                                                    <input class="e-field-inner" type="text" name="count">
                                                </div>
                                            </div>
                                            <div class="col-md-12">
                                                <div style="text-align: center">
                                                    <button type="submit" class="e-btn" >充值</button>
                                                </div>
                                            </div>
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

    <br/>
    <br/>
    <br/>

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