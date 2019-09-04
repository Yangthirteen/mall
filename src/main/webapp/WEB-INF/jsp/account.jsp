<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>Contact</title>
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
							<div class="header-cart-item-img">
								<img src="${c.product_card_img}" alt="IMG">
							</div>
	
							<div class="header-cart-item-txt p-t-8">
								<a href="#" class="header-cart-item-name m-b-18 hov-cl1 trans-04">
									${c.product_name}
								</a>
	
								<span class="header-cart-item-info">
									${c.product_cart_count} x $${c.product_price}
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


	<!-- Title page -->
	<section class="bg-img1 txt-center p-lr-15 p-tb-92" style="background-image: url('images/bg-01.jpg');">
		<h2 class="ltext-105 cl0 txt-center">
			账户
		</h2>
	</section>	


	<!-- Content page -->
	<section class="bg0 p-t-104 p-b-116">
		<div class="col-lg-12 col-xl-10 m-lr-auto m-b-50">
					<div class="m-l-25 m-r--38 m-lr-0-xl">
						<div class="wrap-table-shopping-cart">
							<table class="table-shopping-cart">
								
								<tr class="table_head">
									<th class="column-1">产品</th>
									<th class="column-2"></th>
									<th class="column-3">价格</th>
									<th class="column-4">支付账号</th>
									<th class="column-5">颜色</th>
									<th class="column-6">尺寸</th>

									<th class="column-7">总共</th>
									<th class="column-9">数量</th>
									<th class="column-8">收藏</th>

								</tr>
								
								<c:forEach items="${orderDetail}" var="c">
									<tr class="table_row">
										<td class="column-1">
											<div class="how-itemcart1">
												<img src="${c.product_card_img}" alt="IMG">
											</div>
 										</td>
										<td class="column-2">${c.product_name }</td>
										
										<td class="column-3">
											 $<span class="myprice">${c.product_price}</span>
									    </td>
										<td class="column-4">
											<span>${c.product_pay_no }</span>
										</td>
										<td class="column-5">
											<span>${c.product_color_name }</span>
										</td>
										<td class="column-6">
											<span>${c.product_size_name }</span>
										</td>
										<td class="column-7">$ 
											<span class="mytotal">${c.amount} </span>
										 </td>
										<td class="column-9">
											<span>${c.product_card_count}</span>
										</td>
										<c:if test="${c.product_order_state ==0}">
										<td class="column-8">代发货 </td>
										</c:if>
										<c:if test="${c.product_order_state ==1}">
										<td class="column-8">已发货 </td>
										</c:if>
										<c:if test="${c.product_order_state ==2}">
										<td class="column-8">已收货 </td>
										</c:if>
										<c:if test="${c.product_order_state ==3}">
										<td class="column-8">已完成 </td>
										</c:if>
										
										
									</tr>
									
								</c:forEach>
								
								
							</table>
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
	</script>
<!--===============================================================================================-->
	<script src="js/main.js"></script>

</body>
</html>