<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
	<!-- Header -->
		<header class="header-v4">
		<!-- Header desktop -->
		<div id="menu" class="container-menu-desktop">
			<!-- Topbar -->
			<div class="top-bar">
				<div class="content-topbar flex-sb-m h-full container">
					<div class="left-top-bar">
						订单满100元免运费
					</div>

					<div class="right-top-bar flex-w h-full">
						<a href="#" class="flex-c-m trans-04 p-lr-25">
							帮助和解答
						</a>

						<a href="account.html" class="flex-c-m trans-04 p-lr-25">
							账户
						</a>

						<a href="adminSignOn.html" class="flex-c-m trans-04 p-lr-25">
                             后台
						</a>

						<c:if test="${sessionScope.user != null}">
							<a href="userOut.html" class="flex-c-m trans-04 p-lr-25">
								退出
							</a>
						</c:if>


					</div>
				</div>
			</div>

			<div class="wrap-menu-desktop">
				<nav class="limiter-menu-desktop container">
					
					<!-- Logo desktop -->		
					<a href="index.html" class="logo">
						<img src="images/icons/logo-01.png" alt="IMG-LOGO">
					</a>

					<!-- Menu desktop -->
					<div class="menu-desktop">
						<ul class="main-menu" id="test">
                            <c:if test="${sessionScope.page==1}">
                                <li class="active-menu">
                                    <a href="index.html?page=1">主页</a>
                                </li>
                            </c:if>
                            <c:if test="${sessionScope.page!=1}">
                                <li>
                                    <a href="index.html?page=1">主页</a>
                                </li>
                            </c:if>
                            <c:if test="${sessionScope.page==2}">
                                <li class="active-menu">
                                    <a href="product.html?page=2">商店</a>
                                </li>
                            </c:if>
                            <c:if test="${sessionScope.page!=2}">
                                <li>
                                    <a href="product.html?page=2">商店</a>
                                </li>
                            </c:if>

                            <c:if test="${sessionScope.page==3}">
                                <li class="label1 active-menu" data-label1="hot">
                                    <a href="shoping-cart.html?page=3">购物车</a>
                                </li>
                            </c:if>

                            <c:if test="${sessionScope.page!=3}">
                                <li class="label1" data-label1="hot">
                                    <a href="shoping-cart.html?page=3">购物车</a>
                                </li>
                            </c:if>

                            <c:if test="${sessionScope.page==4}">
                                <li class="active-menu">
                                    <a href="blog.html?page=4">博客</a>
                                </li>
                            </c:if>
                            <c:if test="${sessionScope.page!=4}">
                                <li>
                                    <a href="blog.html?page=4">博客</a>
                                </li>
                            </c:if>

                            <c:if test="${sessionScope.page==5}">
                                <li class="active-menu">
                                    <a href="about.html?page=5">关于</a>
                                </li>
                            </c:if>
                            <c:if test="${sessionScope.page!=5}">
                                <li>
                                    <a href="about.html?page=5">关于</a>
                                </li>
                            </c:if>

                            <c:if test="${sessionScope.page==6}">
                                <li class="active-menu">
                                    <a href="contact.html?page=6">联系</a>
                                </li>
                            </c:if>
                            <c:if test="${sessionScope.page!=6}">
                                <li>
                                    <a href="contact.html?page=6">联系</a>
                                </li>
                            </c:if>

						</ul>
					</div>	

					<!-- Icon header -->
					<div class="wrap-icon-header flex-w flex-r-m">
						<div class="icon-header-item cl2 hov-cl1 trans-04 p-l-22 p-r-11 js-show-modal-search">
							<i class="zmdi zmdi-search"></i>
						</div>

						<div id="show_cart1" class="icon-header-item cl2 hov-cl1 trans-04 p-l-22 p-r-11 icon-header-noti js-show-cart" data-notify=${cartCountNumber}>
							<i class="zmdi zmdi-shopping-cart"></i>
							<script>
								console.log(${cartCountNumber});
							</script>
						</div>

						<div id="show_fav1" class=" icon-header-item cl2 hov-cl1 trans-04 p-l-22 p-r-11 icon-header-noti js-show-fav" data-notify="${favCount}">
							<i class="zmdi zmdi-favorite-outline"></i>
						</div>
					</div>
				</nav>
			</div>	
		</div>

		<!-- Header Mobile -->
		<div class="wrap-header-mobile">
			<!-- Logo moblie -->		
			<div class="logo-mobile">
				<a href="index.html"><img src="images/icons/logo-01.png" alt="IMG-LOGO"></a>
			</div>

			<!-- Icon header -->
			<div class="wrap-icon-header flex-w flex-r-m m-r-15">
				<div class="icon-header-item cl2 hov-cl1 trans-04 p-r-11 js-show-modal-search">
					<i class="zmdi zmdi-search"></i>
				</div>

				<div id="show_cart" class="icon-header-item cl2 hov-cl1 trans-04 p-l-22 p-r-11 icon-header-noti js-show-cart" data-notify=${cartCountNumber}>
					<i class="zmdi zmdi-shopping-cart"></i>
				</div>

                <div id="show_fav" class="dis-block icon-header-item cl2 hov-cl1 trans-04 p-r-11 p-l-10 icon-header-noti js-show-fav" data-notify="0">
                    <i class="zmdi zmdi-favorite-outline"></i>
                </div >

            </div>

			<!-- Button show menu -->
			<div class="btn-show-menu-mobile hamburger hamburger--squeeze">
				<span class="hamburger-box">
					<span class="hamburger-inner"></span>
				</span>
			</div>
		</div>


		<%--<!-- Menu Mobile -->--%>
		<%--<div class="menu-mobile">--%>
			<%--<ul class="topbar-mobile">--%>
				<%--<li>--%>
					<%--<div class="left-top-bar">--%>
						<%--订单满$100免运费--%>
					<%--</div>--%>
				<%--</li>--%>

				<%--<li>--%>
					<%--<div class="right-top-bar flex-w h-full">--%>
						<%--<a href="contact.html" class="flex-c-m p-lr-10 trans-04">--%>
							<%--帮助和解答--%>
						<%--</a>--%>

						<%--<a href="account.html" class="flex-c-m p-lr-10 trans-04">--%>
							<%--账户--%>
						<%--</a>--%>

						<%--<a href="adminSignOn.html" class="flex-c-m p-lr-10 trans-04">--%>
							<%--后台--%>
						<%--</a>--%>

						<%--<a href="#" class="flex-c-m p-lr-10 trans-04">--%>
							<%--登出--%>
						<%--</a>--%>
					<%--</div>--%>
				<%--</li>--%>
			<%--</ul>--%>

			<%--<ul class="main-menu-m">--%>
				<%--<li>--%>
					<%--<a href="index.html">主页</a>--%>
					<%--&lt;%&ndash;<ul class="sub-menu-m">&ndash;%&gt;--%>
						<%--&lt;%&ndash;<li><a href="home-03.html">主页2</a></li>&ndash;%&gt;--%>
					<%--&lt;%&ndash;</ul>&ndash;%&gt;--%>
					<%--&lt;%&ndash;<span class="arrow-main-menu-m">&ndash;%&gt;--%>
						<%--&lt;%&ndash;<i class="fa fa-angle-right" aria-hidden="true"></i>&ndash;%&gt;--%>
					<%--&lt;%&ndash;</span>&ndash;%&gt;--%>
				<%--</li>--%>

				<%--<li>--%>
					<%--<a href="product.html">商店</a>--%>
				<%--</li>--%>

				<%--<li>--%>
					<%--<a href="shoping-cart.html" class="label1 rs1" data-label1="hot">专题</a>--%>
				<%--</li>--%>

				<%--<li>--%>
					<%--<a href="blog.html">博客</a>--%>
				<%--</li>--%>

				<%--<li>--%>
					<%--<a href="about.html">关于</a>--%>
				<%--</li>--%>

				<%--<li>--%>
					<%--<a href="contact.html">联系</a>--%>
				<%--</li>--%>
			<%--</ul>--%>
		<%--</div>--%>

		<!-- Modal Search -->
			<div class="modal-search-header flex-c-m trans-04 js-hide-modal-search">
				<div class="container-search-header">
					<button class="flex-c-m btn-hide-modal-search trans-04 js-hide-modal-search">
						<img src="images/icons/icon-close2.png" alt="CLOSE">
					</button>

					<form class="wrap-search-header flex-w p-l-15" action="search.html" method="post">

						<input class="plh3" type="text" name="keyword" placeholder="Search...">
                        <button class="flex-c-m trans-04" type="submit">
                            <i class="zmdi zmdi-search"></i>
                        </button>
					</form>

				</div>
			</div>
	</header>

<script src="vendor/jquery/jquery-3.2.1.min.js"></script>
<script src="vendor/MagnificPopup/jquery.magnific-popup.min.js"></script>
<script type="text/javascript">

    // $(function () {
	// 	$('.menu-desktop ul li').click(function () {
	// 	    var str = $(this).html();
    //         $('.menu-desktop ul li').each(function () {
    //             if(str==$(this).html())
	// 			{
    //                 $(this).addClass('active-menu');
	// 			}else
	// 			{
    //                 $(this).removeClass('active-menu');
	// 			}
    //         })
    //     })
    // })

</script>