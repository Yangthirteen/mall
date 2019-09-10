<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>About</title>
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
	<div id="cart" class="wrap-header-cart js-panel-cart">
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
							<a href="shoping-cart.html">
							<div class="header-cart-item-img">

									<img src="${c.product_card_img}" alt="IMG" >

							</div>
							</a>
							<div class="header-cart-item-txt p-t-8">
								<a href="productDetail.html?did=${c.product_dimg_id}&&pid=${c.product_id}&&ptid=${c.product_type_id}" class="header-cart-item-name m-b-18 hov-cl1 trans-04">
										${c.product_name}
								</a>

								<span class="header-cart-item-info">
									${c.product_card_count} x $${c.product_price}
								</span>

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


	<!-- Title page -->
	<section class="bg-img1 txt-center p-lr-15 p-tb-92" style="background-image: url('../../images/bg-01.jpg');">
		<h2 class="ltext-105 cl0 txt-center">
			关于我们
		</h2>
	</section>	


	<!-- Content page -->
	<section class="bg0 p-t-75 p-b-120">
		<div class="container">
			<div class="row p-b-148">
				<div class="col-md-7 col-lg-8">
					<div class="p-t-7 p-r-85 p-r-15-lg p-r-0-md">
						<h3 class="mtext-111 cl2 p-b-16">
							我们的故事
						</h3>

						<p class="stext-113 cl6 p-b-26">
                            “天猫”（英文：Tmall，亦称淘宝商城、天猫商城）原名淘宝商城，是一个综合性购物网站。2012年1月11日上午，淘宝商城正式宣布更名为“天猫”。
                            2012年3月29日天猫发布全新Logo形象。
                            2012年11月11日，天猫借光棍节大赚一笔，宣称13小时卖100亿，创世界纪录。
                            天猫是马云淘宝网全新打造的B2C（Business-to-Consumer，商业零售）。其整合数千家品牌商、生产商，为商家和消费者之间提供一站式解决方案。
                            提供100%品质保证的商品，7天无理由退货的售后服务，以及购物积分返现等优质服务。
                            2014年2月19日，阿里集团宣布天猫国际正式上线，为国内消费者直供海外原装进口商品。
                            2016年11月11日天猫双11再刷全球最大购物日记录，单日交易1207亿。
                        </p>

						<p class="stext-113 cl6 p-b-26">
                            2019年3月6日,阿里巴巴宣布在保持淘宝、天猫两个品牌独立发展同时,将打通淘宝、天猫两个消费场景,实现消费者和平台商家的分层运营,满足不同消费者商家的需求。
                            与此相应,阿里巴巴将对组织架构有所调整:淘宝总裁蒋凡将兼任天猫总裁;原天猫总裁靖捷将担任阿里巴巴CEO张勇的助理,并成为阿里数字经济体的企业服务体系的秘书长,
                            专注帮助企业完成数字化转型。
                        </p>

						<p class="stext-113 cl6 p-b-26">
                            任何关于我们的问题？请拨打（+86）1458262552
						</p>
					</div>
				</div>

				<div class="col-11 col-md-5 col-lg-4 m-lr-auto">
					<div class="how-bor1 ">
						<div class="hov-img0">
							<img src="images/about-01.jpg" alt="IMG">
						</div>
					</div>
				</div>
			</div>
			
			<div class="row">
				<div class="order-md-2 col-md-7 col-lg-8 p-b-30">
					<div class="p-t-7 p-l-85 p-l-15-lg p-l-0-md">
						<h3 class="mtext-111 cl2 p-b-16">
							我们的目标
						</h3>

						<p class="stext-113 cl6 p-b-26">
                            4月25日下午，天猫新总裁蒋凡宣布了一件大事，这也是自3月6日上任天猫总裁后的首次公开露面。
                            他宣布了“天猫四小目标”：1.在未来三年天猫交易规模要翻一番；
                            2.加强与品牌商家的合作，与他们共同创造新品；
                            3.在三年内为全球范围内的商家发布超过一亿款商品；
                            4.还要创造出100个年销售额超10亿元的新品牌。
                        </p>
						<div class="bor16 p-l-29 p-b-9 m-t-22">
							<p class="stext-114 cl6 p-r-40 p-b-11">
                                继5月宣布启动首个国家馆韩国馆之后，阿里巴巴集团旗下聚划算平台和天猫国际联合开启“地球村”模式。
                                美国、英国、法国、西班牙、瑞士、澳大利亚、新西兰、新加坡、泰国、马来西亚、土耳其等十一国国家馆在天猫国际亮相。
                                同日，阿里巴巴聚划算平台宣布全面启动与20国国家大使馆合作进程，更多海外特色商品有望在聚划算实现首发。
                            </p>

							<span class="stext-111 cl8">
								- XXXXXXXX 
							</span>
						</div>
					</div>
				</div>

				<div class="order-md-1 col-11 col-md-5 col-lg-4 m-lr-auto p-b-30">
					<div class="how-bor2">
						<div class="hov-img0">
							<img src="images/about-02.jpg" alt="IMG">
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>	
	
		

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
	<script src="vendor/MagnificPopup/jquery.magnific-popup.min.js"></script>
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
		function Card(pid){
			var uid=$('#uid').val();
			var color=$('#color').val();
			var size=$('#size').val();
			var count=$('#num-product').val();
			var cartCountNumber=$()
			//$.post("addCard.html",{"color":color,"size":size,"pid":pid,"count":count,"uid":uid},function(data){

			//});
			$.ajax({
				url : "addCard.html",
				data : {"color":color,"size":size,"pid":pid,"count":count,"uid":uid},
				type : 'post',
				async: true,
				complete:function(e){
					$('#menu').load("" + ' #menu >*',function(){
						jQuery.getScript("js/cart.js")
					})
					$('#cart').load("" + ' #cart >*',function(){
						jQuery.getScript("js/cart.js")
					});

				}});
			//window.location.reload();


		}
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
					swal("", "删除成功", "success");
				}
			});
		}
	</script>
<!--===============================================================================================-->
	<script src="js/main.js"></script>
	
</body>
</html>