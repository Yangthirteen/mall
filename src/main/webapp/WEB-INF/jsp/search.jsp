<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%--
  Created by IntelliJ IDEA.
  User: 詹
  Date: 2019/8/29
  Time: 15:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>搜索结果</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!--===============================================================================================-->
    <link rel="icon" type="image/png" href="images/icons/favicon.png"/>
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="fonts/iconic/css/material-design-iconic-font.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="fonts/linearicons-v1.0.0/icon-font.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="vendor/animsition/css/animsition.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="vendor/daterangepicker/daterangepicker.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="vendor/slick/slick.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="vendor/MagnificPopup/magnific-popup.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="vendor/perfect-scrollbar/perfect-scrollbar.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="css/util.css">
    <link rel="stylesheet" type="text/css" href="css/main.css">
    <!--===============================================================================================-->
</head>
<body class="animsition">
<!-- Header -->
<jsp:include page="part/header.jsp"></jsp:include>

<!-- Cart -->
<div class="wrap-header-cart js-panel-cart">
    <div class="s-full js-hide-cart"></div>

    <div class="header-cart flex-col-l p-l-65 p-r-25">
        <div class="header-cart-title flex-w flex-sb-m p-b-8">
				<span class="mtext-103 cl2">
					购物车
				</span>

            <div class="fs-35 lh-10 cl2 p-lr-5 pointer hov-cl1 trans-04 js-hide-cart">
                <i class="zmdi zmdi-close"></i>
            </div>
        </div>

        <div class="header-cart-content flex-w js-pscroll">
            <ul class="header-cart-wrapitem w-full">
                <c:forEach items="${userCart}" var="c">
                    <li class="header-cart-item flex-w flex-t m-b-12">
                        <div class="header-cart-item-img"  >
                            <a href="shoping-cart.html">
                                <img src="${c.product_card_img}" alt="IMG" >
                            </a>
                        </div>

                        <div class="header-cart-item-txt p-t-8">
                            <a href="productDetail.html?did=${c.product_dimg_id}&&pid=${c.product_id}&&ptid=${c.product_type_id}" class="header-cart-item-name m-b-18 hov-cl1 trans-04">
                                    ${c.product_name}
                            </a>

                            <span class="header-cart-item-info">
									${c.product_card_count} x $${c.product_price}
								</span>
                            <script>

                            </script>
                        </div>
                    </li>
                </c:forEach>


            </ul>

            <div class="w-full">
                <!-- <div class="header-cart-total w-full p-tb-40">
                    Total: $75.00
                </div> -->

                <div class="header-cart-buttons flex-w w-full">
                    <a href="shoping-cart.html" class="flex-c-m stext-101 cl0 size-107 bg3 bor2 hov-btn3 p-lr-15 trans-04 m-r-8 m-b-10">
                        购物车
                    </a>

                    <a href="shoping-cart.html" class="flex-c-m stext-101 cl0 size-107 bg3 bor2 hov-btn3 p-lr-15 trans-04 m-b-10">
                        支付
                    </a>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- favorite -->
<jsp:include page="favorite.jsp"></jsp:include>

<!-- searchproduct  -->
<div class="bg0 m-t-23 p-b-140">
    <div class="container">
        <div class="flex-w flex-sb-m p-b-52">
            <div class="flex-w flex-l-m filter-tope-group m-tb-10">
                <a href="product.html" class="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5 how-active1" data-filter="*">
                    所有产品
                </a>
            </div>

        </div>
        <!-- product  -->
        <div class="row isotope-grid">

            <c:if test="${not empty productList}">
                <c:forEach items="${productList}" var="pa">
                    <div class="col-sm-6 col-md-4 col-lg-3 p-b-35 isotope-item ${pa.product_filter}">
                        <!-- Block2 -->
                        <div class="block2">
                            <div class="block2-pic hov-img0">
                                <img src="${pa.product_img}" alt="IMG-PRODUCT">

                                <a href="productDetail.html?did=${pa.product_dimg_id}&&pid=${pa.product_id}&&ptid=${pa.product_type_id}"  class="block2-btn flex-c-m stext-103 cl2 size-102 bg0 bor2 hov-btn1 p-lr-15 trans-04">
                                    快速浏览
                                </a>
                            </div>

                            <div class="block2-txt flex-w flex-t p-t-14">
                                <div class="block2-txt-child1 flex-col-l ">
                                    <a href="productDetail.html?did=${pa.product_dimg_id}&&pid=${pa.product_id}&&ptid=${pa.product_type_id}" class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6">
                                            ${pa.product_name}
                                    </a>

                                    <span class="stext-105 cl3">
											$${pa.product_price}
										</span>
                                </div>

                                <div class="block2-txt-child2 flex-r p-t-3">
                                    <button class="btn-addwish-b2 dis-block pos-relative js-addwish-b2" data-tooltip="favorite" onclick="fav(${pa.product_id})" >
                                        <img class="icon-heart1 dis-block trans-04" src="images/icons/icon-heart-01.png" alt="ICON">
                                        <img class="icon-heart2 dis-block trans-04 ab-t-l" src="images/icons/icon-heart-02.png" alt="ICON">
                                    </button>

                                </div>
                            </div>
                        </div><!-- /Block2 -->
                    </div>
                </c:forEach>
            </c:if>

        </div>

        <!-- Load more -->
        <c:if test="${not empty productList}">
            <div class="flex-c-m flex-w w-full p-t-45">
                <a href="product.html" class="flex-c-m stext-101 cl5 size-103 bg2 bor1 hov-btn1 p-lr-15 trans-04">
                    更多
                </a>
            </div>
        </c:if>
        <c:if test="${empty productList}">
            <div class="flex-c-m flex-w w-full p-t-45">
                <a href="product.html" class="flex-c-m stext-101 cl5 size-103 bg2 bor1 hov-btn1 p-lr-15 trans-04">
                    搜索不到您想要的，找找其他的吧
                </a>
            </div>
        </c:if>
    </div>
</div>


<!-- Footer -->
<jsp:include page="/WEB-INF/jsp/part/footer.jsp"></jsp:include>

<!-- Back to top -->
<div class="btn-back-to-top" id="myBtn">
		<span class="symbol-btn-back-to-top">
			<i class="zmdi zmdi-chevron-up"></i>
		</span>
</div>

<!--===============================================================================================-->
<script src="vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
<script src="vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
<script src="vendor/bootstrap/js/popper.js"></script>
<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
<script src="vendor/select2/select2.min.js"></script>
<script>
    $(".js-select2").each(function(){
        $(this).select2({
            minimumResultsForSearch: 20,
            dropdownParent: $(this).next('.dropDownSelect2')
        });
    })
</script>
<!--===============================================================================================-->
<script src="vendor/daterangepicker/moment.min.js"></script>
<script src="vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
<script src="vendor/slick/slick.min.js"></script>
<script src="js/slick-custom.js"></script>
<!--===============================================================================================-->
<script src="vendor/parallax100/parallax100.js"></script>
<script>
    $('.parallax100').parallax100();
</script>
<!--===============================================================================================-->
<script src="vendor/MagnificPopup/jquery.magnific-popup.min.js"></script>
<script>
    $('.gallery-lb').each(function() { // the containers for all your galleries
        $(this).magnificPopup({
            delegate: 'a', // the selector for gallery item
            type: 'image',
            gallery: {
                enabled:true
            },
            mainClass: 'mfp-fade'
        });
    });
</script>
<!--===============================================================================================-->
<script src="vendor/isotope/isotope.pkgd.min.js"></script>
<!--===============================================================================================-->
<script src="vendor/sweetalert/sweetalert.min.js"></script>
<script>
    $('.js-addwish-b2, .js-addwish-detail').on('click', function(e){
        e.preventDefault();
    });

    $('.js-addwish-b2').each(function(){
        var nameProduct = $(this).parent().parent().find('.js-name-b2').html();
        $(this).on('click', function(){
            swal(nameProduct, "is added to wishlist !", "success");

            $(this).addClass('js-addedwish-b2');
            $(this).off('click');
        });
    });

    $('.js-addwish-detail').each(function(){
        var nameProduct = $(this).parent().parent().parent().find('.js-name-detail').html();

        $(this).on('click', function(){
            swal(nameProduct, "is added to wishlist !", "success");

            $(this).addClass('js-addedwish-detail');
            $(this).off('click');
        });
    });

    /*---------------------------------------------*/

    $('.js-addcart-detail').each(function(){
        var nameProduct = $(this).parent().parent().parent().parent().find('.js-name-detail').html();
        $(this).on('click', function(){
            swal(nameProduct, "is added to cart !", "success");
        });
    });

</script>
<!--===============================================================================================-->
<script src="vendor/perfect-scrollbar/perfect-scrollbar.min.js"></script>
<script>
    $('.js-pscroll').each(function(){
        $(this).css('position','relative');
        $(this).css('overflow','hidden');
        var ps = new PerfectScrollbar(this, {
            wheelSpeed: 1,
            scrollingThreshold: 1000,
            wheelPropagation: false,
        });

        $(window).on('resize', function(){
            ps.update();
        })
    });
    function fav(pid){

        $.ajax({
            url : "addLikeProduct.html",
            data : {"product_id":pid},
            type : 'post',
            async: true,
            complete:function(e){
                $('#fav').load("" + ' #fav >*',function(){
                    jQuery.getScript("js/cart.js")
                })
                $('#menu').load("" + ' #menu >*',function(){
                    jQuery.getScript("js/cart.js")
                })
            }
        });

    }
    function deleate1(did) {
        $.ajax({
            url : "deleteProFroCol.html",
            data : {"product_id":did},
            type : 'post',
            async: true,
            complete:function(e){
                $('#fav').load("" + ' #fav >*',function(){
                    jQuery.getScript("js/cart.js")
                })
                $('#menu2').load("" + ' #menu2 >*',function(){
                    jQuery.getScript("js/cart.js")
                })
            }
        });
    }
</script>
<!--===============================================================================================-->
<script src="js/main.js"></script>

</body>
</html>
