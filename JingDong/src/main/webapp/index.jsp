
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Hbb - Product List</title>
    <meta http-equiv="Content-Type" content="text/html;charset=utf-8"/>
    <meta http-equiv="X-UA-compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!--    <link rel="shortcut icon" type="image/x-icon" href="assets/images/favicon.png"/>-->
    <!--    <link href="https://fonts.googleapis.com/css?family=Roboto:300,300i,400,400i,500,500i,700,700i&display=swap" rel="stylesheet">-->
    <!--    <link rel="stylesheet" href="http://cdn.bootstrapmb.com/bootstrap/3.3.7/css/bootstrap.min.css">-->
    <!--    &lt;!&ndash;<link rel="stylesheet" href="assets/css/font-awesome.min.css">&ndash;&gt;-->
    <!--    <link rel="stylesheet" href="assets/css/owl.carousel.min.css">-->
    <!--    <link rel="stylesheet" href="assets/css/animate.min.css">-->
    <!--    <link rel="stylesheet" href="assets/css/jquery-ui.css">-->
    <!--    <link rel="stylesheet" href="assets/css/slick.css">-->
    <!--    <link rel="stylesheet" href="assets/css/chosen.min.css">-->
    <!--    <link rel="stylesheet" href="assets/css/pe-icon-7-stroke.css">-->
    <!--    <link rel="stylesheet" href="assets/css/magnific-popup.min.css">-->
    <!--    <link rel="stylesheet" href="assets/css/lightbox.min.css">-->
    <!--    <link rel="stylesheet" href="assets/js/fancybox/source/jquery.fancybox.css">-->
    <!--    &lt;!&ndash;<link rel="stylesheet" href="assets/css/jquery.scrollbar.min.css">&ndash;&gt;-->
    <!--    <link rel="stylesheet" href="assets/css/mobile-menu.css">-->
    <!--    <link rel="stylesheet" href="assets/fonts/flaticon/flaticon.css">-->
    <link rel="stylesheet" href="style.css">
</head>
<body class="inblog-page">
<header class="header style7">


    <!--网页顶栏（欢迎/语种切换/登录以及注册）-->
    <div class="top-bar">
        <div class="container">
            <div class="top-bar-left">
                <div class="header-message">
                    Welcome to our price comparison space!
                </div>
            </div>
            <div class="top-bar-right">
                <div class="header-language">
                    <div class="zentimo-language zentimo-dropdown">
                        <a href="#" class="active language-toggle" data-zentimo="zentimo-dropdown">
								<span>
									English (USD)
								</span>
                        </a>
                        <ul class="zentimo-submenu">
                            <li class="switcher-option">
                                <a href="#">
										<span>
											French (EUR)
										</span>
                                </a>
                            </li>
                            <li class="switcher-option">
                                <a href="#">
										<span>
											Japanese (JPY)
										</span>
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
                <ul class="header-user-links">
                    <li>
                        <a href="login.html">Login or Register</a>
                    </li>
                </ul>
            </div>
        </div>
    </div>


    <!--logo搜索栏等顶部容器-->
    <div class="container">
        <div class="main-header">
            <div class="row">
                <!--logo-->
                <div class="col-lg-3 col-sm-4 col-md-3 col-xs-7 col-ts-12 header-element">
                    <div class="logo">
                        <a href="index.html">
                            <img src="assets/images/hbb-logo.png" alt="img">
                        </a>
                    </div>
                </div>
                <!--搜索栏-->
                <div class="col-lg-7 col-sm-8 col-md-6 col-xs-5 col-ts-12">
                    <div class="block-search-block">
                        <form class="form-search form-search-width-category">
                            <div class="form-content">
                                <!--选择搜索-->
                                <div class="category">
                                    <select title="cate" data-placeholder="All Categories" class="chosen-select"
                                            tabindex="1">
                                        <option value="United States">Huawei</option>
                                        <option value="United Kingdom">Apple</option>
                                        <option value="Afghanistan">Samsung</option>
                                    </select>
                                </div>
                                <!--搜索-->
                                <div class="inner">
                                    <input type="text" class="input" name="s" value="" placeholder="Search here">
                                </div>
                                <button class="btn-search" type="submit">
                                    <span class="icon-search"></span>
                                </button>
                            </div>
                        </form>
                    </div>
                </div>
                <!--logo-->
                <div class="col-lg-2 col-sm-12 col-md-3 col-xs-12 col-ts-12">
                    <div class="header-control">
                        <!--购物收藏栏-->
                        <div class="block-minicart zentimo-mini-cart block-header zentimo-dropdown">
                            <a href="javascript:void(0);" class="shopcart-icon" data-zentimo="zentimo-dropdown">
                                Cart
                                <span class="count">
									0
									</span>
                            </a>
                            <div class="no-product zentimo-submenu">
                                <p class="text">
                                    You have
                                    <span>
											 0 item(s)
										</span>
                                    in your bag
                                </p>
                            </div>
                        </div>
                        <!--用户-->
                        <div class="block-account block-header zentimo-dropdown">
                            <a href="javascript:void(0);" data-zentimo="zentimo-dropdown">
                                <i class="fa fa-user-o" aria-hidden="true"></i>
                            </a>
                            <div class="header-account zentimo-submenu">
                                <div class="header-user-form-tabs">
                                    <ul class="tab-link">
                                        <li class="active">
                                            <a data-toggle="tab" aria-expanded="true" href="#header-tab-login">Login</a>
                                        </li>
                                        <li>
                                            <a data-toggle="tab" aria-expanded="true" href="#header-tab-rigister">Register</a>
                                        </li>
                                    </ul>
                                    <div class="tab-container">
                                        <div id="header-tab-login" class="tab-panel active">
                                            <form method="post" class="login form-login">
                                                <p class="form-row form-row-wide">
                                                    <input type="email" placeholder="Email" class="input-text">
                                                </p>
                                                <p class="form-row form-row-wide">
                                                    <input type="password" class="input-text" placeholder="Password">
                                                </p>
                                                <p class="form-row">
                                                    <label class="form-checkbox">
                                                        <input type="checkbox" class="input-checkbox">
                                                        <span>
																Remember me
															</span>
                                                    </label>
                                                    <input type="submit" class="button" value="Login">
                                                </p>
                                                <p class="lost_password">
                                                    <a href="#">Lost your password?</a>
                                                </p>
                                            </form>
                                        </div>
                                        <div id="header-tab-rigister" class="tab-panel">
                                            <form method="post" class="register form-register">
                                                <p class="form-row form-row-wide">
                                                    <input type="email" placeholder="Email" class="input-text">
                                                </p>
                                                <p class="form-row form-row-wide">
                                                    <input type="password" class="input-text" placeholder="Password">
                                                </p>
                                                <p class="form-row">
                                                    <input type="submit" class="button" value="Register">
                                                </p>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!--可切换菜单-->
                        <a class="menu-bar mobile-navigation menu-toggle" href="#">
                            <span></span>
                            <span></span>
                            <span></span>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>

</header>


<!--显示商品列表-->
<div class="main-content main-content-product no-sidebar">
    <div class="container">
        <!--实现页面跳转项（可以返回home）-->
        <div class="row">
            <div class="col-lg-12">
                <div class="breadcrumb-trail breadcrumbs">
                    <ul class="trail-items breadcrumb">
                        <li class="trail-item trail-begin">
                            <a href="index.html">Home</a>
                        </li>
                        <li class="trail-item trail-end active">
                            Products List
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="content-area  shop-grid-content full-width col-lg-12 col-md-12 col-sm-12 col-xs-12">
                <div class="site-main">
                    <!--商品列表顶端三栏选项（页显示商品数量/排序方式/显示布局）排序方式最重要其他可以后期添加-->
                    <div class="shop-top-control">
                        <!--排序方式-->
                        <form class="filter-choice select-form">
                            <span class="title">Sort by</span>
                            <select title="by" data-placeholder="Price: Low to High" class="chosen-select">
                                <option value="1">Default sorting</option>
                                <option value="2">Sort by popularity</option>
                                <option value="3">Sort by average rating</option>
                                <option value="4">Sort by newness</option>
                                <option value="5">Sort by price: low to high</option>
                            </select>
                        </form>
                        <!--页显示商品数量（通过下拉菜单的方式）-->
                        <form class="select-item select-form">
                            <span class="title">Sort</span>
                            <select title="sort" data-placeholder="12 Products/Page" class="chosen-select">
                                <option value="1">12 Products/Page</option>
                                <option value="2">9 Products/Page</option>
                                <option value="3">10 Products/Page</option>
                                <option value="4">8 Products/Page</option>
                                <option value="5">6 Products/Page</option>
                            </select>
                        </form>

                        <!--显示布局（单列与双列）后期可添加需要重写一个html-->
                        <div class="grid-view-mode">
                            <div class="inner">
                                <a href="listproducts.html" class="modes-mode mode-list active">
                                    <span></span>
                                    <span></span>
                                </a>
                                <a href="gridproducts.html" class="modes-mode mode-grid">
                                    <span></span>
                                    <span></span>
                                    <span></span>
                                    <span></span>
                                </a>
                            </div>
                        </div>
                    </div>
                    <!--显示商品列表标题-->
                    <h3 class="custom_blog_title">
                        Product List
                    </h3>
                    <ul class="row list-products auto-clear equal-container product-list">
                        <!--商品1的信息-->
                        <li class="product-item style-list col-lg-12 col-lg-12 col-md-12 col-sm-12 col-xs-12 col-ts-12">
                            <div class="product-inner equal-element">
                                <div class="products-bottom-content">
                                    <div class="product-thumb">
                                        <div class="thumb-inner">
                                            <a href="#">    <!--这里的href可以选择放source链接，比如href="jd.com"-->
                                                <img src="//img10.360buyimg.com/n7/jfs/t1/153457/35/9377/80509/5fd3300bEa14f6b0f/f60a95a9f1731200.jpg" alt="img">   <!--图片链接放置处-->
                                            </a>
                                            <a href="#" class="button quick-wiew-button">Quick View</a>
                                        </div>
                                    </div>
                                    <div class="product-info-left">
                                        <h5 class="product-name product_title">
                                            <button id="go-to-third-page" type="button">
                                                <a href="#">京品手机 Apple iPhone 11 (A2223) 128GB 白色 移动联通电信4G手机 双卡双待 【iPhone品质好物,选购套装立享优惠!】选购iPhone11ProMax，仅加1900元得6.5英寸1200万像素三摄手机!更多精彩！</a> <!--这里的href可以选择放source链接，比如href="jd.com"
                                                                                                    a标签内为产品title-->
                                            </button>
                                        </h5>
                                    </div>
                                    <div class="product-info-right">
                                        <div class="price"> <!--价格位置，注意加上货币符号-->
                                            ¥4899.00
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <!--商品2的信息-->
                        <li class="product-item style-list col-lg-12 col-lg-12 col-md-12 col-sm-12 col-xs-12 col-ts-12">
                            <div class="product-inner equal-element">
                                <div class="product-top">
                                    <div class="flash">
											<span class="onnew">
												<span class="text">
													Hot
												</span>
											</span>
                                    </div>
                                </div>
                                <div class="products-bottom-content">
                                    <div class="product-thumb">
                                        <div class="thumb-inner">
                                            <a href="#">
                                                <img src="assets/images/hbb-item2.png" alt="img">
                                            </a>
                                            <a href="#" class="button quick-wiew-button">Quick View</a>
                                        </div>
                                    </div>
                                    <div class="product-info-left">
                                        <div class="yith-wcwl-add-to-wishlist">
                                            <div class="yith-wcwl-add-button">
                                                <a href="#">Add to Wishlist</a>
                                            </div>
                                        </div>
                                        <h5 class="product-name product_title">
                                            <a href="#">Huawei nova7</a>
                                        </h5>
                                        <div class="stars-rating">
                                            <div class="star-rating">
                                                <span class="star-3"></span>
                                            </div>
                                            <div class="count-star">
                                                (3)
                                            </div>
                                        </div>
                                        <ul class="product-attributes">
                                            <li>
                                                Source:
                                            </li>
                                            <li>
                                                <a href="#">JD.com</a>
                                            </li>
                                        </ul>
                                        <ul class="attributes-display">
                                            <li class="swatch-color">
                                                Color:
                                            </li>
                                            <li class="swatch-color">
                                                <a href="#">Gloss black</a>
                                            </li>
                                            <li class="swatch-color">
                                                <a href="#">Midsummer purple</a>
                                            </li>
                                            <li class="swatch-color">
                                                <a href="#">Yee in forest</a>
                                            </li>

                                            <li class="swatch-color">
                                                <a href="#">7 color</a>
                                            </li>
                                            <li class="swatch-color">
                                                <a href="#">Honey language red</a>
                                            </li>
                                        </ul>
                                        <ul class="attributes-display">
                                            <li class="swatch-text-label">
                                                Edition:
                                            </li>
                                            <li class="swatch-text-label">
                                                <a href="#">8G+128G</a>
                                            </li>
                                            <li class="swatch-text-label">
                                                <a href="#">8G+256G</a>
                                            </li>
                                        </ul>
                                    </div>
                                    <div class="product-info-right">
                                        <div class="price">
                                            ¥3549.00
                                        </div>
                                        <div class="product-list-message">
                                            <i class="icon flaticon-truck" aria-hidden="true"></i>
                                            UK Free Delivery
                                        </div>
                                        <form class="cart">
                                            <div class="single_variation_wrap">
                                                <div class="quantity">
                                                    <div class="control">
                                                        <a class="btn-number qtyminus quantity-minus" href="#">-</a>
                                                        <input type="text" data-step="1" data-min="0" value="1"
                                                               title="Qty" class="input-qty qty" size="4">
                                                        <a href="#" class="btn-number qtyplus quantity-plus">+</a>
                                                    </div>
                                                </div>
                                                <button class="single_add_to_cart_button button">Add to cart</button>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <!--商品3的信息-->
                        <li class="product-item style-list col-lg-12 col-lg-12 col-md-12 col-sm-12 col-xs-12 col-ts-12">
                            <div class="product-inner equal-element">
                                <div class="product-top">
                                    <div class="flash">
											<span class="onnew">
												<span class="text">
													Hot
												</span>
											</span>
                                    </div>
                                </div>
                                <div class="products-bottom-content">
                                    <div class="product-thumb">
                                        <div class="thumb-inner">
                                            <a href="#">
                                                <img src="assets/images/hbb-item3.png" alt="img">
                                            </a>
                                            <a href="#" class="button quick-wiew-button">Quick View</a>
                                        </div>
                                    </div>
                                    <div class="product-info-left">
                                        <div class="yith-wcwl-add-to-wishlist">
                                            <div class="yith-wcwl-add-button">
                                                <a href="#">Add to Wishlist</a>
                                            </div>
                                        </div>
                                        <h5 class="product-name product_title">
                                            <a href="#">Huawei Mate40 RS</a>
                                        </h5>
                                        <div class="stars-rating">
                                            <div class="star-rating">
                                                <span class="star-3"></span>
                                            </div>
                                            <div class="count-star">
                                                (3)
                                            </div>
                                        </div>
                                        <ul class="product-attributes">
                                            <li>
                                                Source:
                                            </li>
                                            <li>
                                                <a href="#">JD.com</a>
                                            </li>
                                        </ul>
                                        <ul class="attributes-display">
                                            <li class="swatch-color">
                                                Color:
                                            </li>
                                            <li class="swatch-color">
                                                <a href="#">Ceramic black</a>
                                            </li>
                                            <li class="swatch-color">
                                                <a href="#">Ceramic white</a>
                                            </li>
                                        </ul>
                                        <ul class="attributes-display">
                                            <li class="swatch-text-label">
                                                Edition:
                                            </li>
                                            <li class="swatch-text-label">
                                                <a href="#">Mate 40RS standard version</a>
                                            </li>

                                        </ul>
                                    </div>
                                    <div class="product-info-right">
                                        <div class="price">
                                            ¥10999.00
                                        </div>
                                        <div class="product-list-message">
                                            <i class="icon flaticon-truck" aria-hidden="true"></i>
                                            UK Free Delivery
                                        </div>
                                        <form class="cart">
                                            <div class="single_variation_wrap">
                                                <div class="quantity">
                                                    <div class="control">
                                                        <a class="btn-number qtyminus quantity-minus" href="#">-</a>
                                                        <input type="text" data-step="1" data-min="0" value="1"
                                                               title="Qty" class="input-qty qty" size="4">
                                                        <a href="#" class="btn-number qtyplus quantity-plus">+</a>
                                                    </div>
                                                </div>
                                                <button class="single_add_to_cart_button button">Add to cart</button>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <!--商品4的信息-->
                        <li class="product-item style-list col-lg-12 col-lg-12 col-md-12 col-sm-12 col-xs-12 col-ts-12">
                            <div class="product-inner equal-element">
                                <div class="product-top">
                                    <div class="flash">
											<span class="onnew">
												<span class="text">
													Hot
												</span>
											</span>
                                    </div>
                                </div>
                                <div class="products-bottom-content">
                                    <div class="product-thumb">
                                        <div class="thumb-inner">
                                            <a href="#">
                                                <img src="assets/images/hbb-item4.png" alt="img">
                                            </a>
                                            <a href="#" class="button quick-wiew-button">Quick View</a>
                                        </div>
                                    </div>
                                    <div class="product-info-left">
                                        <div class="yith-wcwl-add-to-wishlist">
                                            <div class="yith-wcwl-add-button">
                                                <a href="#">Add to Wishlist</a>
                                            </div>
                                        </div>
                                        <h5 class="product-name product_title">
                                            <a href="#">Huawei P30</a>
                                        </h5>
                                        <div class="stars-rating">
                                            <div class="star-rating">
                                                <span class="star-3"></span>
                                            </div>
                                            <div class="count-star">
                                                (3)
                                            </div>
                                        </div>
                                        <ul class="product-attributes">
                                            <li>
                                                Source:
                                            </li>
                                            <li>
                                                <a href="#">JD.com</a>
                                            </li>
                                        </ul>
                                        <ul class="attributes-display">
                                            <li class="swatch-color">
                                                Color:
                                            </li>
                                            <li class="swatch-color">
                                                <a href="#">Sky spaces</a>
                                            </li>
                                            <li class="swatch-color">
                                                <a href="#">Gloss black</a>
                                            </li>
                                            <li class="swatch-color">
                                                <a href="#">Twilight</a>
                                            </li>
                                            <li class="swatch-color">
                                                <a href="#">Red tea orange </a>
                                            </li>
                                            <li class="swatch-color">
                                                <a href="#">Pearl White</a>
                                            </li>
                                        </ul>
                                        <ul class="attributes-display">
                                            <li class="swatch-text-label">
                                                Version:
                                            </li>
                                            <li class="swatch-text-label">
                                                <a href="#">8G+64G</a>
                                            </li>
                                            <li class="swatch-text-label">
                                                <a href="#">8G+128G</a>
                                            </li>
                                        </ul>
                                    </div>
                                    <div class="product-info-right">
                                        <div class="price">
                                            ¥1951.00
                                        </div>
                                        <div class="product-list-message">
                                            <i class="icon flaticon-truck" aria-hidden="true"></i>
                                            UK Free Delivery
                                        </div>
                                        <form class="cart">
                                            <div class="single_variation_wrap">
                                                <div class="quantity">
                                                    <div class="control">
                                                        <a class="btn-number qtyminus quantity-minus" href="#">-</a>
                                                        <input type="text" data-step="1" data-min="0" value="1"
                                                               title="Qty" class="input-qty qty" size="4">
                                                        <a href="#" class="btn-number qtyplus quantity-plus">+</a>
                                                    </div>
                                                </div>
                                                <button class="single_add_to_cart_button button">Add to cart</button>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <!--商品5的信息-->
                        <li class="product-item style-list col-lg-12 col-lg-12 col-md-12 col-sm-12 col-xs-12 col-ts-12">
                            <div class="product-inner equal-element">
                                <div class="product-top">
                                    <div class="flash">
											<span class="onnew">
												<span class="text">
													Hot
												</span>
											</span>
                                    </div>
                                </div>
                                <div class="products-bottom-content">
                                    <div class="product-thumb">
                                        <div class="thumb-inner">
                                            <a href="#">
                                                <img src="assets/images/hbb-item4.png" alt="img">
                                            </a>
                                            <a href="#" class="button quick-wiew-button">Quick View</a>
                                        </div>
                                    </div>
                                    <div class="product-info-left">
                                        <div class="yith-wcwl-add-to-wishlist">
                                            <div class="yith-wcwl-add-button">
                                                <a href="#">Add to Wishlist</a>
                                            </div>
                                        </div>
                                        <h5 class="product-name product_title">
                                            <a href="#">Apple iPhone 12(A2404)</a>
                                        </h5>
                                        <div class="stars-rating">
                                            <div class="star-rating">
                                                <span class="star-3"></span>
                                            </div>
                                            <div class="count-star">
                                                (3)
                                            </div>
                                        </div>
                                        <ul class="product-attributes">
                                            <li>
                                                Source:
                                            </li>
                                            <li>
                                                <a href="#">JD.com</a>
                                            </li>
                                        </ul>
                                        <ul class="attributes-display">
                                            <li class="swatch-color">
                                                Color:
                                            </li>
                                            <li class="swatch-color">
                                                <a href="#">Black</a>
                                            </li>
                                            <li class="swatch-color">
                                                <a href="#">White</a>
                                            </li>
                                            <li class="swatch-color">
                                                <a href="#">Blue</a>
                                            </li>
                                            <li class="swatch-color">
                                                <a href="#">Green</a>
                                            </li>
                                            <li class="swatch-color">
                                                <a href="#">Red</a>
                                            </li>
                                            <li class="swatch-color">
                                                <a href="#">Purple</a>
                                            </li>
                                        </ul>
                                        <ul class="attributes-display">
                                            <li class="swatch-text-label">
                                                Version:
                                            </li>
                                            <li class="swatch-text-label">
                                                <a href="#">64G</a>
                                            </li>
                                            <li class="swatch-text-label">
                                                <a href="#">128G</a>
                                            </li>
                                            <li class="swatch-text-label">
                                                <a href="#">256G</a>
                                            </li>
                                        </ul>
                                    </div>
                                    <div class="product-info-right">
                                        <div class="price">
                                            ¥6799.00
                                        </div>
                                        <div class="product-list-message">
                                            <i class="icon flaticon-truck" aria-hidden="true"></i>
                                            UK Free Delivery
                                        </div>
                                        <form class="cart">
                                            <div class="single_variation_wrap">
                                                <div class="quantity">
                                                    <div class="control">
                                                        <a class="btn-number qtyminus quantity-minus" href="#">-</a>
                                                        <input type="text" data-step="1" data-min="0" value="1"
                                                               title="Qty" class="input-qty qty" size="4">
                                                        <a href="#" class="btn-number qtyplus quantity-plus">+</a>
                                                    </div>
                                                </div>
                                                <button class="single_add_to_cart_button button">Add to cart</button>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <!--商品6的信息-->
                        <li class="product-item style-list col-lg-12 col-lg-12 col-md-12 col-sm-12 col-xs-12 col-ts-12">
                            <div class="product-inner equal-element">
                                <div class="product-top">
                                    <div class="flash">
											<span class="onnew">
												<span class="text">
													Hot
												</span>
											</span>
                                    </div>
                                </div>
                                <div class="products-bottom-content">
                                    <div class="product-thumb">
                                        <div class="thumb-inner">
                                            <a href="#">
                                                <img src="assets/images/hbb-item5.png" alt="img">
                                            </a>
                                            <a href="#" class="button quick-wiew-button">Quick View</a>
                                        </div>
                                    </div>
                                    <div class="product-info-left">
                                        <div class="yith-wcwl-add-to-wishlist">
                                            <div class="yith-wcwl-add-button">
                                                <a href="#">Add to Wishlist</a>
                                            </div>
                                        </div>
                                        <h5 class="product-name product_title">
                                            <a href="#">Samung Galaxy S21 5G</a>
                                        </h5>
                                        <div class="stars-rating">
                                            <div class="star-rating">
                                                <span class="star-3"></span>
                                            </div>
                                            <div class="count-star">
                                                (3)
                                            </div>
                                        </div>
                                        <ul class="product-attributes">
                                            <li>
                                                Source:
                                            </li>
                                            <li>
                                                <a href="#">JD.com</a>
                                            </li>

                                        </ul>
                                        <ul class="attributes-display">
                                            <li class="swatch-color">
                                                Color:
                                            </li>
                                            <li class="swatch-color">
                                                <a href="#">The ink film gray</a>
                                            </li>
                                            <li class="swatch-color">
                                                <a href="#">Silk mist white</a>
                                            </li>
                                            <li class="swatch-color">
                                                <a href="#">The blessed dream purple</a>
                                            </li>
                                            <li class="swatch-color">
                                                <a href="#">Dreamland silver</a>
                                            </li>
                                            <li class="swatch-color">
                                                <a href="#">The night black</a>
                                            </li>
                                        </ul>
                                        <ul class="attributes-display">
                                            <li class="swatch-text-label">
                                                Size:
                                            </li>
                                            <li class="swatch-text-label">
                                                <a href="#">8G+128G</a>
                                            </li>
                                            <li class="swatch-text-label">
                                                <a href="#">8G+256G</a>
                                            </li>
                                        </ul>
                                    </div>
                                    <div class="product-info-right">
                                        <div class="price">
                                            ¥4999.00
                                        </div>
                                        <div class="product-list-message">
                                            <i class="icon flaticon-truck" aria-hidden="true"></i>
                                            UK Free Delivery
                                        </div>
                                        <form class="cart">
                                            <div class="single_variation_wrap">
                                                <div class="quantity">
                                                    <div class="control">
                                                        <a class="btn-number qtyminus quantity-minus" href="#">-</a>
                                                        <input type="text" data-step="1" data-min="0" value="1"
                                                               title="Qty" class="input-qty qty" size="4">
                                                        <a href="#" class="btn-number qtyplus quantity-plus">+</a>
                                                    </div>
                                                </div>
                                                <button class="single_add_to_cart_button button">Add to cart</button>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </li>
                    </ul>
                    <!--页面切换表（第一二三页之间切换）-->
                    <div class="pagination clearfix style2">
                        <div class="nav-link">
                            <a href="#" class="page-numbers"><i class="icon fa fa-angle-left"
                                                                aria-hidden="true"></i></a>
                            <a href="#" class="page-numbers">1</a>
                            <a href="#" class="page-numbers">2</a>
                            <a href="#" class="page-numbers current">3</a>
                            <a href="#" class="page-numbers"><i class="icon fa fa-angle-right"
                                                                aria-hidden="true"></i></a>
                        </div>
                    </div>
                </div>
            </div>


            <!--不太能看懂搜索框中的选择搜索还有邮件相关-->
            <div class="sidebar col-lg-3 col-md-3 col-sm-12 col-xs-12">
                <div class="wrapper-sidebar shop-sidebar">
                    <div class="widget woof_Widget">
                        <div class="widget widget-categories">
                            <h3 class="widgettitle">Categories</h3>
                            <ul class="list-categories">
                                <li>
                                    <input type="checkbox" id="cb1">
                                    <label for="cb1" class="label-text">
                                        New Arrivals
                                    </label>
                                </li>
                                <li>
                                    <input type="checkbox" id="cb2">
                                    <label for="cb2" class="label-text">
                                        Electronics
                                    </label>
                                </li>
                                <li>
                                    <input type="checkbox" id="cb3">
                                    <label for="cb3" class="label-text">
                                        Tables
                                    </label>
                                </li>
                                <li>
                                    <input type="checkbox" id="cb4">
                                    <label for="cb4" class="label-text">
                                        TV & Video
                                    </label>
                                </li>
                                <li>
                                    <input type="checkbox" id="cb5">
                                    <label for="cb5" class="label-text">
                                        Accessories
                                    </label>
                                </li>
                                <li>
                                    <input type="checkbox" id="cb6">
                                    <label for="cb6" class="label-text">
                                        Headphones
                                    </label>
                                </li>
                            </ul>
                        </div>
                        <div class="widget widget_filter_price">
                            <h4 class="widgettitle">
                                Price
                            </h4>
                            <div class="price-slider-wrapper">
                                <div data-label-reasult="Range:" data-min="0" data-max="3000" data-unit="$"
                                     class="slider-range-price " data-value-min="0" data-value-max="1000">
                                </div>
                                <div class="price-slider-amount">
                                    <span class="from">$45</span>
                                    <span class="to">$215</span>
                                </div>
                            </div>
                        </div>
                        <div class="widget widget-brand">
                            <h3 class="widgettitle">Brand</h3>
                            <ul class="list-brand">
                                <li>
                                    <input id="cb7" type="checkbox">
                                    <label for="cb7" class="label-text">New Arrivals</label>
                                </li>
                                <li>
                                    <input id="cb8" type="checkbox">
                                    <label for="cb8" class="label-text">Electronics</label>
                                </li>
                                <li>
                                    <input id="cb9" type="checkbox">
                                    <label for="cb9" class="label-text">Tables</label>
                                </li>
                                <li>
                                    <input id="cb10" type="checkbox">
                                    <label for="cb10" class="label-text">TV & Video</label>
                                </li>
                                <li>
                                    <input id="cb11" type="checkbox">
                                    <label for="cb11" class="label-text">Accessories</label>
                                </li>
                                <li>
                                    <input id="cb12" type="checkbox">
                                    <label for="cb12" class="label-text">Headphones</label>
                                </li>
                            </ul>
                        </div>
                        <div class="widget widget_filter_size">
                            <h4 class="widgettitle">Size</h4>
                            <ul class="list-size">
                                <li>
                                    <a href="#">xs</a>
                                </li>
                                <li>
                                    <a href="#">s</a>
                                </li>
                                <li class="active">
                                    <a href="#">m</a>
                                </li>
                                <li>
                                    <a href="#">l</a>
                                </li>
                                <li>
                                    <a href="#">xl</a>
                                </li>
                                <li>
                                    <a href="#">xxl</a>
                                </li>
                            </ul>
                        </div>
                        <div class="widget widget-color">
                            <h4 class="widgettitle">
                                Color
                            </h4>
                            <div class="list-color">
                                <a href="#" class="color1"></a>
                                <a href="#" class="color2 "></a>
                                <a href="#" class="color3 active"></a>
                                <a href="#" class="color4"></a>
                                <a href="#" class="color5"></a>
                                <a href="#" class="color6"></a>
                                <a href="#" class="color7"></a>
                            </div>
                        </div>
                        <div class="widget widget-tags">
                            <h3 class="widgettitle">
                                Popular Tags
                            </h3>
                            <ul class="tagcloud">
                                <li class="tag-cloud-link">
                                    <a href="#">Laptop</a>
                                </li>
                                <li class="tag-cloud-link">
                                    <a href="#">TV & Video</a>
                                </li>
                                <li class="tag-cloud-link">
                                    <a href="#">New</a>
                                </li>
                                <li class="tag-cloud-link active">
                                    <a href="#">Accessories</a>
                                </li>
                                <li class="tag-cloud-link">
                                    <a href="#">Hot</a>
                                </li>
                                <li class="tag-cloud-link">
                                    <a href="#">Headphones</a>
                                </li>
                                <li class="tag-cloud-link">
                                    <a href="#">Electronics</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="widget newsletter-widget">
                        <div class="newsletter-form-wrap ">
                            <h3 class="title">Subscribe to Our Newsletter</h3>
                            <div class="subtitle">
                                More special Deals, Events & Promotions
                            </div>
                            <input type="email" class="email" placeholder="Your email letter">
                            <button type="submit" class="button submit-newsletter">Subscribe</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<!--网页底端的补充与声明-->
<footer class="footer style7">
    <div class="container">
        <div class="container-wapper">
            <div class="row">
                <div class="box-footer col-xs-12 col-sm-6 col-md-6 col-lg-4">
                    <div class="widget-box">
                        <!--网页底端的logo-->
                        <div class="single-img">
                            <a href="index.html"><img src="assets/images/hbb-logo.png" alt="img"></a>
                        </div>
                        <!--地址/电话/邮件/工作时间-->
                        <ul class="menu">
                            <li class="menu-item">
                                <a href="#"><span class="flaticon-placeholder"></span>Xi 'an Jiaotong-Liverpool University, Suzhou, Jiangsu, China</a>
                            </li>
                            <li class="menu-item">
                                <a href="#"><span class="flaticon-phone-call"></span>123456789</a>
                            </li>
                            <li class="menu-item">
                                <a href="#"><span class="fa fa-envelope-o"></span>Contact@ourgroup.com</a>
                            </li>
                            <li class="menu-item">
                                <a href="#"><span class="flaticon-clock"></span>Mon-Fri 9:00pm - 5:00pm Sat/Sun : Closed</a>
                            </li>
                        </ul>
                    </div>
                </div>
                <!--快捷菜单（后期可添加功能）-->
                <div class="box-footer col-xs-12 col-sm-6 col-md-6 col-lg-2">
                    <div class="zentimo-custommenu default">
                        <h2 class="widgettitle">Quick Menu</h2>
                        <ul class="menu">
                            <li class="menu-item">
                                <a href="#">Audio & Theater</a>
                            </li>
                            <li class="menu-item">
                                <a href="#">Photo & Video</a>
                            </li>
                            <li class="menu-item">
                                <a href="#">Headphones</a>
                            </li>
                            <li class="menu-item">
                                <a href="#">Wireless Speakers</a>
                            </li>
                            <li class="menu-item">
                                <a href="#">Electronics</a>
                            </li>
                        </ul>
                    </div>
                </div>
                <!--信息菜单（后期可添加功能）-->
                <div class="box-footer col-xs-12 col-sm-6 col-md-6 col-lg-2">
                    <div class="zentimo-custommenu default">
                        <h2 class="widgettitle">Information</h2>
                        <ul class="menu">
                            <li class="menu-item">
                                <a href="#">FAQs</a>
                            </li>
                            <li class="menu-item">
                                <a href="#">Track Order</a>
                            </li>
                            <li class="menu-item">
                                <a href="#">Delivery</a>
                            </li>
                            <li class="menu-item">
                                <a href="#">Contact Us</a>
                            </li>
                            <li class="menu-item">
                                <a href="#">Return</a>
                            </li>
                        </ul>
                    </div>
                </div>
                <!--邮件功能（后期可添加功能）-->
                <div class="box-footer col-xs-12 col-sm-6 col-md-6 col-lg-4">
                    <div class="zentimo-newsletter style1">
                        <div class="newsletter-head">
                            <h3 class="title">Newsletter</h3>
                        </div>
                        <div class="newsletter-form-wrap">
                            <div class="list">
                                Get notified of new products, limited releases, and more.
                            </div>
                            <input type="email" class="input-text email email-newsletter"
                                   placeholder="Your email letter">
                            <button class="button btn-submit submit-newsletter">SUBSCRIBE</button>
                        </div>
                    </div>
                    <div class="zentimo-socials">
                        <ul class="socials">
                            <li>
                                <a href="#" class="social-item" target="_blank">
                                    <i class="icon fa fa-facebook"></i>
                                </a>
                            </li>
                            <li>
                                <a href="#" class="social-item" target="_blank">
                                    <i class="icon fa fa-twitter"></i>
                                </a>
                            </li>
                            <li>
                                <a href="#" class="social-item" target="_blank">
                                    <i class="icon fa fa-instagram"></i>
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12 border-custom">
                    <span></span>
                </div>
            </div>
            <div class="footer-end">
                <div class="row">
                    <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                        <div class="coppyright">
                            Copyright © 2021
                            <a href="http://www.bootstrapmb.com">Hobibi</a>
                            . All rights reserved
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</footer>


<!---->
<div class="footer-device-mobile">
    <div class="wapper">
        <div class="footer-device-mobile-item device-home">
            <a href="index.html">
					<span class="icon">
						<i class="fa fa-home" aria-hidden="true"></i>
					</span>
                Home
            </a>
        </div>
        <div class="footer-device-mobile-item device-home device-wishlist">
            <a href="#">
					<span class="icon">
						<i class="fa fa-heart" aria-hidden="true"></i>
					</span>
                Wishlist
            </a>
        </div>
        <div class="footer-device-mobile-item device-home device-cart">
            <a href="#">
					<span class="icon">
						<i class="flaticon-online-shopping-cart" aria-hidden="true"></i>
						<span class="count-icon">
							0
						</span>
					</span>
                <span class="text">Cart</span>
            </a>
        </div>
        <div class="footer-device-mobile-item device-home device-user">
            <a href="login.html">
					<span class="icon">
						<i class="flaticon-profile" aria-hidden="true"></i>
					</span>
                Account
            </a>
        </div>
    </div>
</div>
<a href="#" class="backtotop">
    <i class="pe-7s-angle-up"></i>
</a>

<!--JS相关
<script src="assets/js/jquery-1.12.4.min.js"></script>
<script src="assets/js/jquery.plugin-countdown.min.js"></script>
<script src="assets/js/jquery-countdown.min.js"></script>
<script src="http://cdn.bootstrapmb.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="assets/js/owl.carousel.min.js"></script>
<script src="assets/js/magnific-popup.min.js"></script>
<script src="assets/js/isotope.min.js"></script>
<script src="assets/js/jquery.scrollbar.min.js"></script>
<script src="assets/js/jquery-ui.min.js"></script>
<script src="assets/js/mobile-menu.js"></script>
<script src="assets/js/chosen.min.js"></script>
<script src="assets/js/slick.js"></script>
<script src="assets/js/jquery.elevateZoom.min.js"></script>
<script src="assets/js/jquery.actual.min.js"></script>
<script src="assets/js/fancybox/source/jquery.fancybox.js"></script>
<script src="assets/js/lightbox.min.js"></script>
<script src="assets/js/owl.thumbs.min.js"></script>
<script src="assets/js/jquery.scrollbar.min.js"></script>
<script src='http://ditu.google.cn/maps/api/js?key=AIzaSyC3nDHy1dARR-Pa_2jjPCjvsOR4bcILYsM'></script>
<script src="assets/js/frontend-plugin.js"></script>
-->
</body>
</html>