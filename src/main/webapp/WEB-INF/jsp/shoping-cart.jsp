<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>Shoping Cart</title>
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


	<!-- breadcrumb -->
	<div class="container">
		<div class="bread-crumb flex-w p-l-25 p-r-15 p-t-30 p-lr-0-lg">
			<a href="index.html" class="stext-109 cl8 hov-cl1 trans-04">
				主页
				<i class="fa fa-angle-right m-l-9 m-r-10" aria-hidden="true"></i>
			</a>

			<span class="stext-109 cl4">
				购物车
			</span>
		</div>
	</div>
		

	<!-- Shoping Cart -->
	 <form class="bg0 p-t-75 p-b-85" method="post" action="codepay.html">
		<div class="container">
			<div id="cart_list" class="row">
				<div id="test" class="col-lg-10 col-xl-7 m-lr-auto m-b-50">
					<div class="m-l-25 m-r--38 m-lr-0-xl">
					  
						<div class="wrap-table-shopping-cart">
							<table class="table-shopping-cart">
								<tr class="table_head">
									<th class="column-1">产品</th>
									<th class="column-2"></th>
									<th class="column-3">价格</th>
									<th class="column-4">数量</th>
									<th class="column-5">总计</th>
								</tr>
								<c:forEach items="${card}" var="c">
									<tr class="table_row">
										<td class="column-1">
											<div class="how-itemcart1">
												<img src="${c.product_card_img}" alt="IMG">
											</div>
 
										<td class="column-2">${c.product_name }</td>
										<td class="column-3"> $<span class="myprice">${c.product_price}</span></td>
										<td class="column-4">
											<div class="wrap-num-product flex-w m-l-auto m-r-0">
												<div class="btn-num-product-down cl8 hov-btn3 trans-04 flex-c-m amoumt">
													<i class="fs-16 zmdi zmdi-minus" ></i>
												</div>
												
												<input class="mtext-104 cl3 txt-center num-product card_count" type="number" name="num-product2" value="${c.product_card_count }"/>

												<div class="btn-num-product-up cl8 hov-btn3 trans-04 flex-c-m amoumt">
													<i class="fs-16 zmdi zmdi-plus"></i>
												</div>
											</div>
										</td>
										<td class="column-5">
                                            $ <span class="mytotal">${c.amount}</span>
                                        </td>
										<td><input type="hidden" value="${c.product_card_id }" class="cid"></td>
									</tr>
									
								</c:forEach>
								
								
							</table>
						</div>

						<div class="flex-w flex-sb-m bor15 p-t-18 p-b-15 p-lr-40 p-lr-15-sm">
							<div class="flex-w flex-m m-r-20 m-tb-5">
								<input class="stext-104 cl2 plh4 size-117 bor13 p-lr-20 m-r-10 m-tb-5" type="text" name="coupon" placeholder="Coupon Code">
									
								<div class="flex-c-m stext-101 cl2 size-118 bg8 bor13 hov-btn3 p-lr-15 trans-04 pointer m-tb-5">
									优惠卷
								</div>
							</div>

							<div class="flex-c-m stext-101 cl2 size-119 bg8 bor13 hov-btn3 p-lr-15 trans-04 pointer m-tb-10" onclick="location.reload(true)">
								更新购物车
							</div>
						</div>
					</div>
				</div>
		
				<div class="col-sm-10 col-lg-7 col-xl-5 m-lr-auto m-b-50">
					<div class="bor10 p-lr-40 p-t-30 p-b-40 m-l-63 m-r-40 m-lr-0-xl p-lr-15-sm">
						<h4 class="mtext-109 cl2 p-b-30">
							总购物车：
						</h4>

						<div class="flex-w flex-t bor12 p-b-13">
							<div class="size-208">
								<span class="stext-110 cl2">
									总计：
								</span>
							</div>

							<div class="size-209">
								$<span class="mtext-110 cl2" id="mysum">0.00</span>
								<input type="hidden" id="mysum1" name=sum>
							</div>
						</div>

						<div class="flex-w flex-t bor12 p-t-15 p-b-30">
							<div class="size-208 w-full-ssm">
								<span class="stext-110 cl2">
									订单：
								</span>
							</div>

							<div class="size-209 p-r-18 p-r-0-sm w-full-ssm">
								<p class="stext-111 cl6 p-t-2">
									没有可用的送货方式。 请仔细检查您的地址，或者如果您需要任何帮助，请与我们联系。
								</p>
								
								<div class="p-t-15">
									<span class="stext-112 cl8">
										收货方式
									</span>

									<div class="rs1-select2 rs2-select2 bor8 bg0 m-b-12 m-t-9">
										<input class="stext-111 cl8 plh3 size-111 p-lr-15" type="text" id="get1" onblur="try125()"  name="name" placeholder="请输入您的收货姓名">
									</div>

									<div class="bor8 bg0 m-b-12">
										<input class="stext-111 cl8 plh3 size-111 p-lr-15" type="text" id="get2" onblur="try175()" name="address" placeholder="请输入您的详细地址">
									</div>

									<div class="bor8 bg0 m-b-22">
										<input class="stext-111 cl8 plh3 size-111 p-lr-15" type="tel" id="get3" onblur="try200()" name="phone" placeholder="请输入您的联系方式">
									</div>
									
									<div class="flex-w">
										<div class="flex-c-m stext-101 cl2 size-115 bg8 bor13 hov-btn3 p-lr-15 trans-04 pointer" onclick="utotal()">
											Update Totals
										</div>
									</div>
										
								</div>
							</div>
						</div>

						<div class="flex-w flex-t p-t-27 p-b-33">
							<div class="size-208">
								<span class="mtext-101 cl2">
									总计：
								</span>
							</div>

							<div class="size-209 p-t-1">
								$<span class="mtext-110 cl2" id="total">
									0.00
								</span>
							</div>
						</div>
						<input type="submit" class="flex-c-m stext-101 cl0 size-116 bg3 bor14 hov-btn3 p-lr-15 trans-04 pointer" value="支付" onclick="try01();codepay.html" >
						
					</div>
				</div>
			</div>
		</div>
	</form>
		
	
		

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
		});
		function try125() {
			var get1 = $('#get1').val();
			if (get1==""){
				alert("姓名不能为空")
			}
			console.log("svsdvsdvds")
		}
		function try175() {
			var get2 = $('#get2').val();
			if (get2==""){
				alert("地址不能为空")
			}
		}
		function try200() {
			var get3 = $('#get3').val();
			if (get3==""){
				alert("联系方式不能为空")
			}
		}
		function try01() {
            var get1 = $('#get1').val();
            var get2 =$('#get2').val();
            var  get3 =$('#get3').val();
            if(get1==""||get2==""||get3==""){
            	alert("输入不能为空")
			}
		}
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
<!--=====================================lqc==================================================-->
	<script src="js/main.js"></script>
	<script type="text/javascript">
	/* function mytotal(obj){
		var total=$(obj).parent().parent().parent().find(".mytotal");
		var price=$(obj).parent().parent().parent().find(".myprice").text();
		var count=$(obj).parent().parent().parent().find(".num-product").val();
		c=price*count
		console.log(c);
		total.text(parseFloat(c)*parseFloat(price));
		console.log(price+" "+count);
		var total=$(obj).parent().parent().parent().find(".mytotal").text();
		alert(total);
	} */
	/*   onclick > click > on    */
	$('.amoumt').click(function(){
		var total=$(this).parent().parent().parent().find(".mytotal");
		var price=$(this).parent().parent().parent().find(".myprice").text();
		var count=$(this).parent().parent().parent().find(".num-product").val();
		var cid=$(this).parent().parent().parent().find(".cid").val();

		if((parseFloat(count)>=0)){
			total.text((parseFloat(count)*parseFloat(price)).toFixed(2));
		}

		$.post("updateCart.html",{"count":count,"cid":cid},function(data){
			
		});
		
	});
    function utotal(){
		var price=$('.column-5 .mytotal');
		var sum=0;
		price.each(function(){
			sum += Number(this.innerHTML);

		})
		$('#mysum').text(sum.toFixed(2));
		$('#mysum1').val(sum.toFixed(2));
		$('#total').text(sum.toFixed(2));
	}
	function updateCart(){
		var countList = new Array();
		var cidList = new Array();
		$('.card_count').each(function(){
			countList.push($(this).val());
		});
		$('.cid').each(function(){
			cidList.push($(this).val());
		});
		$.post("updateCart1.html",{"cidList":cidList.join(),"countList":countList.join()},function(data){
			
		});
	}
	function Calculate(e){
		e.preventDefault();
	}
	//function pay(){
		//utotal();
		//var price=$('#total').text()
	//	$.port("codepay.html",function(){
	//	})
	//}
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
</body>
</html>