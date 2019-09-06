<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 李
  Date: 2019/9/5
  Time: 16:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div id="fav" class="wrap-header-cart js-panel-fav"  >
    <div  class="s-full js-hide-fav"></div>

    <div class="header-cart flex-col-l p-l-65 p-r-25">
        <div class="header-cart-title flex-w flex-sb-m p-b-8">
				<span class="mtext-103 cl2">
					收藏
				</span>

            <div class="fs-35 lh-10 cl2 p-lr-5 pointer hov-cl1 trans-04 js-hide-fav">
                <i class="zmdi zmdi-close"></i>
            </div>
        </div>

        <div class="header-cart-content flex-w js-pscroll">
            <ul class="header-cart-wrapitem w-full">
                <c:forEach items="${colletion}" var="c">
                    <li class="header-cart-item flex-w flex-t m-b-12">
                        <div class="header-cart-item-img"  >
                            <a href="shoping-cart.html">
                                <img src="${c.product_img}" alt="IMG" >
                            </a>
                        </div>

                        <div class="header-cart-item-txt p-t-8">
                            <a href="productDetail.html?did=${c.product_dimg_id}&&pid=${c.product_id}&&ptid=${c.product_type_id}" class="header-cart-item-name m-b-18 hov-cl1 trans-04">
                                    ${c.product_name}
                            </a>

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

