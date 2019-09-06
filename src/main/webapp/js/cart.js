(function ($) {
    "use strict";

    /*==================================================================
        [ Cart ]*/
    $('.js-show-cart').on('click', function () {
        $('.js-panel-cart').addClass('show-header-cart');
    });

    $('.js-hide-cart').on('click', function () {
        $('.js-panel-cart').removeClass('show-header-cart');
    });

    /*===================================================================
          [favorite] */
    $('.js-show-fav').on('click',function(){
        $('.js-panel-fav').addClass('show-header-cart');
    });

    $('.js-hide-fav').on('click',function(){
        $('.js-panel-fav').removeClass('show-header-cart');
    });

    /*==================================================================
    [ Cart ]*/
    $('.js-show-sidebar').on('click', function () {
        $('.js-sidebar').addClass('show-sidebar');
    });

    $('.js-hide-sidebar').on('click', function () {
        $('.js-sidebar').removeClass('show-sidebar');
    });
})(jQuery);