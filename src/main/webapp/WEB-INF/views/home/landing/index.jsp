<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="locale" value="${pageContext.response.locale}" />
<c:set var="user" value="${SPRING_SECURITY_CONTEXT.authentication.principal}"/>
<c:set var="test_mode">
    <spring:eval expression="@config.getProperty('super.test')" />
</c:set>
<c:choose>
    <c:when test="${test_mode eq true}">
        <c:set var="resources" value="/resources"/>
    </c:when>
    <c:otherwise>
        <c:set var="resources" value="https://dv8u54qddgb7y.cloudfront.net"/>
    </c:otherwise>
</c:choose>
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8 no-js"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9 no-js"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en">
<!--<![endif]-->

<!-- Head BEGIN -->
<head>
    <meta charset="utf-8">
    <title>Journal Manuscript Submission and Peer Review Service</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta content="editorial" name="description">
    <meta content="manuscript" name="keywords">
    <meta content="thinkonweb" name="author">
    <meta http-equiv="cleartype" content="on">
    <link rel="shortcut icon" href="${resources}/images/icons/favicon.ico">
    <!-- Fonts START -->
    <link href="//fonts.googleapis.com/css?family=Open+Sans:400,300,600,700&subset=all" rel="stylesheet" type="text/css"/>
    <!-- Fonts END -->
    <!-- Global styles BEGIN -->
    <link href="${resources}/metronic_assets_3.3.0/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="${resources}/metronic_assets_3.3.0/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <link href="${resources}/metronic_assets_3.3.0/plugins/slider-revolution-slider/rs-plugin/css/settings.css" rel="stylesheet">
    <!-- Global styles END -->
    <!-- Page level plugin styles BEGIN -->
    <link href="${resources}/metronic_assets_3.3.0/plugins/fancybox/source/jquery.fancybox.css" rel="stylesheet">
    <link href="${resources}/metronic_assets_3.3.0/plugins/bootstrap-switch/css/bootstrap-switch.min.css" rel="stylesheet">
    <!-- Page level plugin styles END -->
    <!-- Theme styles BEGIN -->
    <link href="${resources}/metronic_assets_3.3.0/css/components.css" rel="stylesheet">
    <link href="${resources}/onepage/css/style.css" rel="stylesheet">
    <link href="${resources}/onepage/css/style-responsive.css" rel="stylesheet">
    <link href="${resources}/onepage/css/themes/blue.css" rel="stylesheet" id="style-color">
    <link href="${resources}/css/jquery-ui.css" rel="stylesheet" type="text/css"/>
    <link href="${resources}/onepage/css/custom.css" rel="stylesheet">

    <!-- Theme styles END -->
    <style>
        .cubeCheckList {
            text-align:left;
        }
        .company-info {
            color:#999;
        }
    </style>
</head>
<!--DOC: menu-always-on-top class to the body element to set menu on top -->
<body class="menu-always-on-top">
<div id="termsOfServiceDisplay" class="modalDialog"></div>
<div id="privacyPolicyDisplay" class="modalDialog"></div>

<div id="pageloader" class="dark-div" style="position: fixed; top: 60px; left: 0; width: 100%; height: 100%; z-index: 99999; background: #179bd7;">
    <div class="spinner">
        <div class="cube1"></div>
        <div class="cube2"></div>
    </div>
</div>
<!-- Header BEGIN -->
<div class="header header-mobi-ext">
    <div class="container">
        <div class="row">
            <!-- Logo BEGIN -->
            <div class="col-md-2 col-sm-2">
                <div class="content2">
                    <a href="/"><h2><span class="logo_first">MANUSCRIPT</span><span class="logo_second">LINK</span></h2></a>
                </div>
            </div>
            <!-- Logo END -->
            <a href="javascript:void(0);" class="mobi-toggler"><i class="fa fa-bars"></i></a>
            <!-- Navigation BEGIN -->
            <div class="col-md-10 pull-right">
                <ul class="header-navigation">
                    <li><a href="#about"><spring:message code="menu.about"/></a></li>
                    <li><a href="#feature"><spring:message code="menu.feature"/></a></li>
                    <li><a href="#demo"><spring:message code="menu.demo"/></a></li>
                    <li><a id="priceMenu" href="#prices"><spring:message code="menu.pricing"/></a></li>
                    <li><a href="#faq"><spring:message code="menu.faq"/></a></li>
                    <security:authorize ifNotGranted="ROLE_USER">
                        <li><a href="/signup"><spring:message code="signup.title"/></a></li>
                        <li><a href="/signin"><spring:message code="system.signin"/></a></li>
                    </security:authorize>
                    <security:authorize ifAllGranted="ROLE_USER">
                        <li><a href="#prices"><spring:message code="home.open"/></a></li>
                        <li><a href="/activity/myActivity"><spring:message code="system.myActivity2"/></a></li>
                        <li><a href="/signout"><spring:message code="system.signout"/></a></li>
                    </security:authorize>
                    <c:if test="${locale == 'ko_KR'}" >
                        <li class="text-left"><a href="${request_uri}?lang=en_US"><img class="engimg" alt="English" src="${resources}/metronic_assets_3.3.0/img/flags/us.png"/> English</a></li>
                    </c:if>
                </ul>
            </div>
            <!-- Navigation END -->
        </div>
    </div>
</div>
<!-- Header END -->
<!-- Promo block BEGIN -->
<div class="promo-block" id="promo-block">
    <div class="tp-banner-container">
        <div class="tp-banner" >
            <ul>
                <li data-transition="fade" data-slotamount="1" data-masterspeed="0" data-speed="0" data-delay="0" class="slider-item-1">
                    <img src="${resources}/onepage/img/silder/iStock_000033173394_Full_web.jpg" alt="" data-bgfit="cover" data-bgposition="center center" data-bgrepeat="no-repeat">
                    <div class="tp-caption large_bold_white_25 customin customout tp-resizeme landingSliderMessage1_1"
                         data-x="center" data-hoffset="0"
                         data-y="30"
                         data-customin="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:5;scaleY:5;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
                         data-customout="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0.75;scaleY:0.75;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
                         data-speed="600"
                         data-start="600"
                         data-easing="Power4.easeOut"
                         data-endspeed="600"
                         data-endeasing="Power0.easeIn"
                         style="z-index: 3">
                        <spring:message code="landing.slider.message.1"/>
                    </div>
                    <div class="tp-caption medium_text_shadow slide_desc slide_item_left landingSliderMessage1_2"
                         data-x="center"
                         data-y="110"
                         data-speed="400"
                         data-start="1200"
                         data-easing="easeOutExpo">
                        <span class="logo_first_landing_main">MANUSCRIPT</span><span class="logo_second_landing_main">LINK</span>
                    </div>
                    <div class="tp-caption medium_text slide_desc slide_item_left landingSliderMessage1_3"
                         data-x="center"
                         data-y="170"
                         data-speed="400"
                         data-start="1800"
                         data-easing="easeOutExpo">
                        <i class="fa fa-check fa-lg"></i><spring:message code="closing.feature.1"/>&nbsp;
                        <i class="fa fa-check fa-lg"></i><spring:message code="closing.feature.2"/>&nbsp;
                        <i class="fa fa-check fa-lg"></i><spring:message code="closing.feature.3"/>
                    </div>
                    <a onclick="clickPriceMenu();return false;" class="tp-caption medium_text lft btn green slide_btn slide_item_left landingSliderMessage1_4"
                       data-x="center"
                       data-y="220"
                       data-speed="400"
                       data-start="2000"
                       data-easing="easeOutExpo">
                        <spring:message code="pricing.openaservice"/><i class="fa fa-exclamation fa-lg fa-ex"></i>
                    </a>
                    <div class="tp-caption medium_text_shadow2 slide_desc slide_item_left landingSliderMessage2_2"
                         data-x="center"
                         data-y="280"
                         data-speed="400"
                         data-start="1800"
                         data-easing="easeOutExpo">
                        <p style="line-height: 120%;">
                            <spring:message code="home.belowTitle1"/><br/>
                            <spring:message code="home.belowTitle2"/><br/>
                            <spring:message code="home.belowTitle3"/>
                        </p>
                    </div>
                </li>
            </ul>
        </div>
    </div>
</div>
<!-- Promo block END -->
<!-- About block BEGIN -->
<div class="choose-us-block content content-center" id="about">
    <div class="container">
        <h2><span class="logo_first">MANUSCRIPT</span><span class="logo_second">LINK</span></h2>
        <h4><spring:message code="about.description"/>
        </h4>
        <div class="row">
            <div class="col-md-6 col-sm-6 col-xs-12 text-left">
                <img src="${resources}/onepage/img/ipad_imac_web.png" alt="screen-image" class="img-responsive">
            </div>
            <div class="col-md-6 col-sm-6 col-xs-12 text-left">
                <div class="panel-group" id="accordion1">
                    <div class="panel panel-default" style="margin-top: -30px !important;">
                        <div class="panel-heading">
                            <h5 class="panel-title">
                                <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion1"
                                   href="#accordion1_1"><spring:message code="about.benefit1"/></a>
                            </h5>
                        </div>
                        <div id="accordion1_1" class="panel-collapse collapse in">
                            <div class="panel-body">
                                <p><spring:message code="about.benefit1.description"/></p>
                            </div>
                        </div>
                    </div>
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h5 class="panel-title">
                                <a class="accordion-toggle collapsed" data-toggle="collapse" data-parent="#accordion1"
                                   href="#accordion1_2"><spring:message code="about.benefit2"/></a>
                            </h5>
                        </div>
                        <div id="accordion1_2" class="panel-collapse collapse">
                            <div class="panel-body">
                                <p><spring:message code="about.benefit2.description"/></p>
                            </div>
                        </div>
                    </div>
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h5 class="panel-title">
                                <a class="accordion-toggle collapsed" data-toggle="collapse" data-parent="#accordion1"
                                   href="#accordion1_3"><spring:message code="about.benefit3"/></a>
                            </h5>
                        </div>
                        <div id="accordion1_3" class="panel-collapse collapse">
                            <div class="panel-body">
                                <p><spring:message code="about.benefit3.description"/></p>
                            </div>
                        </div>
                    </div>
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h5 class="panel-title">
                                <a class="accordion-toggle collapsed" data-toggle="collapse" data-parent="#accordion1"
                                   href="#accordion1_5"><spring:message code="about.benefit5"/></a>
                            </h5>
                        </div>
                        <div id="accordion1_5" class="panel-collapse collapse">
                            <div class="panel-body">
                                <p><spring:message code="about.benefit5.description"/></p>
                            </div>
                        </div>
                    </div>
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h5 class="panel-title">
                                <a class="accordion-toggle collapsed" data-toggle="collapse" data-parent="#accordion1"
                                   href="#accordion1_6"><spring:message code="about.benefit6"/></a>
                            </h5>
                        </div>
                        <div id="accordion1_6" class="panel-collapse collapse">
                            <div class="panel-body">
                                <p><spring:message code="about.benefit6.description"/></p>
                            </div>
                        </div>
                    </div>
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h5 class="panel-title">
                                <a class="accordion-toggle collapsed" data-toggle="collapse" data-parent="#accordion1"
                                   href="#accordion1_7"><spring:message code="about.benefit7"/></a>
                            </h5>
                        </div>
                        <div id="accordion1_7" class="panel-collapse collapse">
                            <div class="panel-body">
                                <p><spring:message code="about.benefit7.description"/></p>
                            </div>
                        </div>
                    </div>
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h5 class="panel-title">
                                <a class="accordion-toggle collapsed" data-toggle="collapse" data-parent="#accordion1"
                                   href="#accordion1_4"><spring:message code="about.benefit4"/> <span class="badge badge-info beta"><spring:message code="landing.beta" /></span></a>
                            </h5>
                        </div>
                        <div id="accordion1_4" class="panel-collapse collapse">
                            <div class="panel-body">
                                <p><spring:message code="about.benefit4.description"/></p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- About block END -->
<!-- Carousel block BEGIN -->
<div class="carousel-block content content-center" id="feature">
    <div class="container">
        <h2><strong>Service</strong> features</h2>
        <h4><spring:message code="feature.description"/></h4>
    </div>
    <div class="row content-center">
        <div class="item col-md-3 col-sm-3 col-xs-3">
            <i class="fa fa-tasks bubble"></i>
            <h3><spring:message code="feature.management"/></h3>
            <ul class="text-left">
                <li class="feature_li"><spring:message code="feature.management.description.1"/></li>
                <li class="feature_li"><spring:message code="feature.management.description.2"/></li>
            </ul>
            <p><a class="btn btn-success" role="button" id="managementTour">Screenshot Tour &raquo;</a></p>
        </div>
        <div class="item col-md-3 col-sm-3 col-xs-3">
            <i class="fa fa-gavel"></i>
            <h3><spring:message code="feature.editorship"/></h3>
            <ul class="text-left">
                <li class="feature_li"><spring:message code="feature.editorship.description.1"/></li>
                <li class="feature_li"><spring:message code="feature.editorship.description.2"/></li>
                <li class="feature_li"><spring:message code="feature.editorship.description.3"/></li>
            </ul>
            <p><a class="btn btn-success" role="button" id="editorshipTour">Screenshot Tour &raquo;</a></p>
        </div>
        <div class="item col-md-3 col-sm-3 col-xs-3">
            <i class="fa fa-edit bubble"></i>
            <h3><spring:message code="feature.submission"/></h3>
            <ul class="text-left">
                <li class="feature_li"><spring:message code="feature.submission.description.1"/></li>
                <li class="feature_li"><spring:message code="feature.submission.description.2"/></li>
                <li class="feature_li"><spring:message code="feature.submission.description.3"/></li>
            </ul>
            <p><a class="btn btn-success" role="button" id="submissionTour">Screenshot Tour &raquo;</a></p>
        </div>
        <div class="item col-md-3 col-sm-3 col-xs-3">
            <i class="fa fa-check fa-lg-square-o"></i>
            <h3><spring:message code="feature.review"/></h3>
            <ul class="text-left">
                <li class="feature_li"><spring:message code="feature.review.description.1"/></li>
                <li class="feature_li"><spring:message code="feature.review.description.2"/></li>
            </ul>
            <p><a class="btn btn-success" role="button" id="reviewTour">Screenshot Tour &raquo;</a></p>
        </div>
    </div>
    <div class="row content-center">
        <div id="management-carousel" class="carousel slide cellCenter"
             style="width: 90%; margin: 0 auto; max-width: 1600px;" data-ride="carousel">
            <!-- Indicators -->
            <ol class="carousel-indicators cellCenter">
                <li data-target="#management-carousel" data-slide-to="0" class="active"></li>
                <li data-target="#management-carousel" data-slide-to="1"></li>
                <li data-target="#management-carousel" data-slide-to="2"></li>
                <li data-target="#management-carousel" data-slide-to="3"></li>
                <li data-target="#management-carousel" data-slide-to="4"></li>
                <li data-target="#management-carousel" data-slide-to="5"></li>
                <li data-target="#management-carousel" data-slide-to="6"></li>
            </ol>
            <!-- Wrapper for slides -->
            <div class="carousel-inner cellCenter">
                <div class="item active">
                    <a href="/resources/images/screenshots_new/manager_01.PNG" class="zoom valign-center">
                        <img data-src="/resources/images/screenshots_new/manager_01s.PNG" alt="..." class="inner-item" />
                    </a>
                </div>
                <div class="item">
                    <a href="/resources/onepage/img/screenshots/manager_2.png" class="zoom valign-center">
                        <img data-src="/resources/onepage/img/screenshots/manager_2s.png" alt="..." class="inner-item" />
                    </a>
                </div>
                <div class="item">
                    <a href="/resources/onepage/img/screenshots/manager_3.png" class="zoom valign-center">
                        <img data-src="/resources/onepage/img/screenshots/manager_3s.png" alt="..." class="inner-item" />
                    </a>
                </div>
                <div class="item">
                    <a href="/resources/onepage/img/screenshots/manager_4.png" class="zoom valign-center">
                        <img data-src="/resources/onepage/img/screenshots/manager_4s.png" alt="..." class="inner-item" />
                    </a>
                </div>
                <div class="item">
                    <a href="/resources/onepage/img/screenshots/manager_5.png" class="zoom valign-center">
                        <img data-src="/resources/onepage/img/screenshots/manager_5s.png" alt="..." class="inner-item" />
                    </a>
                </div>
                <div class="item">
                    <a href="/resources/onepage/img/screenshots/manager_5.png" class="zoom valign-center">
                        <img data-src="/resources/onepage/img/screenshots/manager_5s.png" alt="..." class="inner-item" />
                    </a>
                </div>
                <div class="item">
                    <a href="/resources/onepage/img/screenshots/manager_5.png" class="zoom valign-center">
                        <img data-src="/resources/onepage/img/screenshots/manager_5s.png" alt="..." class="inner-item" />
                    </a>
                </div>
            </div>
            <!-- Controls -->
            <a class="left carousel-control" href="#management-carousel" role="button" data-slide="prev">
                <span class="glyphicon glyphicon-chevron-left"></span>
            </a>
            <a class="right carousel-control" href="#management-carousel" role="button" data-slide="next">
                <span class="glyphicon glyphicon-chevron-right"></span>
            </a>
        </div>
        <div id="editorship-carousel" class="carousel slide cellCenter"
             style="width: 90%; margin: 0 auto; max-width: 1600px;" data-ride="carousel">
            <!-- Indicators -->
            <ol class="carousel-indicators cellCenter">
                <li data-target="#editorship-carousel" data-slide-to="0" class="active"></li>
                <li data-target="#editorship-carousel" data-slide-to="1"></li>
                <li data-target="#editorship-carousel" data-slide-to="2"></li>
                <li data-target="#editorship-carousel" data-slide-to="3"></li>
                <li data-target="#editorship-carousel" data-slide-to="4"></li>
                <li data-target="#editorship-carousel" data-slide-to="5"></li>
                <li data-target="#editorship-carousel" data-slide-to="6"></li>
            </ol>
            <!-- Wrapper for slides -->
            <div class="carousel-inner cellCenter">
                <div class="item active">
                    <a href="/resources/onepage/img/screenshots/editorial_1.png" class="zoom valign-center">
                        <img data-src="/resources/onepage/img/screenshots/editorial_1s.png" alt="..." class="inner-item" />
                    </a>
                </div>
                <div class="item">
                    <a href="/resources/onepage/img/screenshots/editorial_2.png" class="zoom valign-center">
                        <img data-src="/resources/onepage/img/screenshots/editorial_2s.png" alt="..." class="inner-item" />
                    </a>
                </div>
                <div class="item">
                    <a href="/resources/onepage/img/screenshots/editorial_3.png" class="zoom valign-center">
                        <img data-src="/resources/onepage/img/screenshots/editorial_3s.png" alt="..." class="inner-item" />
                    </a>
                </div>
                <div class="item">
                    <a href="/resources/onepage/img/screenshots/editorial_4.png" class="zoom valign-center">
                        <img data-src="/resources/onepage/img/screenshots/editorial_4s.png" alt="..." class="inner-item" />
                    </a>
                </div>
                <div class="item">
                    <a href="/resources/onepage/img/screenshots/editorial_5.png" class="zoom valign-center">
                        <img data-src="/resources/onepage/img/screenshots/editorial_5s.png" alt="..." class="inner-item" />
                    </a>
                </div>
                <div class="item">
                    <a href="/resources/onepage/img/screenshots/editorial_5.png" class="zoom valign-center">
                        <img data-src="/resources/onepage/img/screenshots/editorial_5s.png" alt="..." class="inner-item" />
                    </a>
                </div>
                <div class="item">
                    <a href="/resources/onepage/img/screenshots/editorial_5.png" class="zoom valign-center">
                        <img data-src="/resources/onepage/img/screenshots/editorial_5s.png" alt="..." class="inner-item" />
                    </a>
                </div>
            </div>
            <!-- Controls -->
            <a class="left carousel-control" href="#editorship-carousel" role="button" data-slide="prev">
                <span class="glyphicon glyphicon-chevron-left"></span>
            </a>
            <a class="right carousel-control" href="#editorship-carousel" role="button" data-slide="next">
                <span class="glyphicon glyphicon-chevron-right"></span>
            </a>
        </div>
        <div id="submission-carousel" class="carousel slide cellCenter"
             style="width: 90%; margin: 0 auto; max-width: 1600px;" data-ride="carousel">
            <!-- Indicators -->
            <ol class="carousel-indicators cellCenter">
                <li data-target="#submission-carousel" data-slide-to="0" class="active"></li>
                <li data-target="#submission-carousel" data-slide-to="1"></li>
                <li data-target="#submission-carousel" data-slide-to="2"></li>
                <li data-target="#submission-carousel" data-slide-to="3"></li>
                <li data-target="#submission-carousel" data-slide-to="4"></li>
                <li data-target="#submission-carousel" data-slide-to="5"></li>
                <li data-target="#submission-carousel" data-slide-to="6"></li>
            </ol>
            <!-- Wrapper for slides -->
            <div class="carousel-inner cellCenter">
                <div class="item active">
                    <a href="/resources/onepage/img/screenshots/submission_1.png" class="zoom valign-center">
                        <img data-src="/resources/onepage/img/screenshots/submission_1s.png" alt="..." class="inner-item" />
                    </a>
                </div>
                <div class="item">
                    <a href="/resources/onepage/img/screenshots/submission_2.png" class="zoom valign-center">
                        <img data-src="/resources/onepage/img/screenshots/submission_2s.png" alt="..." class="inner-item" />
                    </a>
                </div>
                <div class="item">
                    <a href="/resources/onepage/img/screenshots/submission_3.png" class="zoom valign-center">
                        <img data-src="/resources/onepage/img/screenshots/submission_3s.png" alt="..." class="inner-item" />
                    </a>
                </div>
                <div class="item">
                    <a href="/resources/onepage/img/screenshots/submission_4.png" class="zoom valign-center">
                        <img data-src="/resources/onepage/img/screenshots/submission_4s.png" alt="..." class="inner-item" />
                    </a>
                </div>
                <div class="item">
                    <a href="/resources/onepage/img/screenshots/submission_5.png" class="zoom valign-center">
                        <img data-src="/resources/onepage/img/screenshots/submission_5s.png" alt="..." class="inner-item" />
                    </a>
                </div>
                <div class="item">
                    <a href="/resources/onepage/img/screenshots/submission_5.png" class="zoom valign-center">
                        <img data-src="/resources/onepage/img/screenshots/submission_5s.png" alt="..." class="inner-item" />
                    </a>
                </div>
                <div class="item">
                    <a href="/resources/onepage/img/screenshots/submission_5.png" class="zoom valign-center">
                        <img data-src="/resources/onepage/img/screenshots/submission_5s.png" alt="..." class="inner-item" />
                    </a>
                </div>
            </div>
            <!-- Controls -->
            <a class="left carousel-control" href="#submission-carousel" role="button" data-slide="prev">
                <span class="glyphicon glyphicon-chevron-left"></span>
            </a>
            <a class="right carousel-control" href="#submission-carousel" role="button" data-slide="next">
                <span class="glyphicon glyphicon-chevron-right"></span>
            </a>
        </div>
        <div id="review-carousel" class="carousel slide cellCenter"
             style="width: 90%; margin: 0 auto; max-width: 1600px;" data-ride="carousel">
            <!-- Indicators -->
            <ol class="carousel-indicators cellCenter">
                <li data-target="#review-carousel" data-slide-to="0" class="active"></li>
                <li data-target="#review-carousel" data-slide-to="1"></li>
                <li data-target="#review-carousel" data-slide-to="2"></li>
                <li data-target="#review-carousel" data-slide-to="3"></li>
                <li data-target="#review-carousel" data-slide-to="4"></li>
                <li data-target="#review-carousel" data-slide-to="5"></li>
                <li data-target="#review-carousel" data-slide-to="6"></li>
            </ol>
            <!-- Wrapper for slides -->
            <div class="carousel-inner cellCenter">
                <div class="item active">
                    <a href="/resources/onepage/img/screenshots/review_1.png" class="zoom valign-center">
                        <img data-src="/resources/onepage/img/screenshots/review_1s.png" alt="..." class="inner-item" />
                    </a>
                </div>
                <div class="item">
                    <a href="/resources/onepage/img/screenshots/review_2.png" class="zoom valign-center">
                        <img data-src="/resources/onepage/img/screenshots/review_2s.png" alt="..." class="inner-item" />
                    </a>
                </div>
                <div class="item">
                    <a href="/resources/onepage/img/screenshots/review_3.png" class="zoom valign-center">
                        <img data-src="/resources/onepage/img/screenshots/review_3s.png" alt="..." class="inner-item" />
                    </a>
                </div>
                <div class="item">
                    <a href="/resources/onepage/img/screenshots/review_3.png" class="zoom valign-center">
                        <img data-src="/resources/onepage/img/screenshots/review_3s.png" alt="..." class="inner-item" />
                    </a>
                </div>
                <div class="item">
                    <a href="/resources/onepage/img/screenshots/review_3.png" class="zoom valign-center">
                        <img data-src="/resources/onepage/img/screenshots/review_3s.png" alt="..." class="inner-item" />
                    </a>
                </div>
                <div class="item">
                    <a href="/resources/onepage/img/screenshots/review_3.png" class="zoom valign-center">
                        <img data-src="/resources/onepage/img/screenshots/review_3s.png" alt="..." class="inner-item" />
                    </a>
                </div>
                <div class="item">
                    <a href="/resources/onepage/img/screenshots/review_3.png" class="zoom valign-center">
                        <img data-src="/resources/onepage/img/screenshots/review_3s.png" alt="..." class="inner-item" />
                    </a>
                </div>
            </div>
            <!-- Controls -->
            <a class="left carousel-control" href="#review-carousel" role="button" data-slide="prev">
                <span class="glyphicon glyphicon-chevron-left"></span>
            </a>
            <a class="right carousel-control" href="#review-carousel" role="button" data-slide="next">
                <span class="glyphicon glyphicon-chevron-right"></span>
            </a>
        </div>
    </div>
    <br/>
</div>
<!-- Carousel block END -->
<!-- Choose us block BEGIN -->
<div class="choose-us-block content text-center margin-bottom-40" id="demo">
    <div class="container">
        <h2><spring:message code="demo.heading"/></h2>
        <h4><spring:message code="demo.description.1"/><br/><spring:message code="demo.description.2"/><br/><spring:message code="demo.description.3"/></h4>
        <a href="https://demo.manuscriptlink.com" target="_blank" class="btn btn-primary"><spring:message code="demo.go"/></a>
        <div class="ab-trio" style="margin: 0 auto;">
            <img src="${resources}/onepage/img/imac_shot_web.jpg" alt="" class="img-responsive">
        </div>

    </div>
</div>
<!-- Choose us block END -->
<!-- Prices block BEGIN -->
<div class="prices-block content content-center" id="prices">
    <div class="container">
        <h2 class="margin-bottom-50"><spring:message code="pricing.title"/></h2>
        <div class="row">
            <div class="col-md-12 col-sm-12 col-xs-12">
                <a name="prices2" id="prices2"></a>
                <table id="price-table" class="table table-bordered">
                    <colgroup>
                        <col class="${pageContext.response.locale eq 'ko_KR' ? 'col-md-6' : 'col-md-6'}" />
                        <col class="${pageContext.response.locale eq 'ko_KR' ? 'col-md-2' : 'col-md-2'}" />
                        <col class="${pageContext.response.locale eq 'ko_KR' ? 'col-md-2' : 'col-md-2'}" />
                        <col class="${pageContext.response.locale eq 'ko_KR' ? 'col-md-2' : 'col-md-2'}" />
                    </colgroup>
                    <thead class="pricing-head">
                    <tr>
                        <th class="content">
                            <h4>
                                <spring:message code="menu.feature"/>
                            </h4>
                            <%--<input type="checkbox" class="make-switch" data-on-text="<spring:message code='pricing.annual'/>" data-off-text="<spring:message code='pricing.monthly'/>" checked />--%>
                        </th>
                        <th class="content"><h4>ManuscriptLink<br/><spring:message code="landing.premium"/></h4></th>
                        <th class="content"><h4>ManuscriptLink<br/><spring:message code="landing.classic"/></h4></th>
                        <th class="content"><h4>ManuscriptLink<br/><spring:message code="landing.free"/></h4></th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td>&nbsp;</td>
                        <td class="checklistItem">
                            <div class="pricing-footer">
                                <a class="btn btn-default inPrepared openServicePremium">
                                    <spring:message code="landing.inPreparation"/><br/>
                                    (BY DEC. 2015)
                                </a>
                            </div>
                        </td>
                        <td class="checklistItem">
                            <div class="pricing-footer">
                                <a class="btn btn-default inPrepared openServiceClassic">
                                    <spring:message code="landing.inPreparation"/><br/>
                                    (BY JUNE 30. 2015)
                                </a>
                            </div>
                        </td>
                        <td class="checklistItem">
                            <div class="pricing-footer">
                                <a class="btn btn-info openService" data-journalType="Free" style="background-color: #35aa47 !important;"><spring:message code="pricing.openaservice"/> <i class="fa fa-exclamation"></i></a>
                            </div>
                        </td>
                    </tr>
                    <%--pricing table without action--%>
                    <%@ include file="/WEB-INF/views/home/landing/pricing.jsp"%>
                    <tr>
                        <td>&nbsp;</td>
                        <td class="checklistItem">
                            <div class="pricing-footer">
                                <a class="btn btn-default inPrepared openServicePremium">
                                    <spring:message code="landing.inPreparation"/><br/>
                                    (BY DEC. 2015)
                                </a>
                            </div>
                        </td>
                        <td class="checklistItem">
                            <div class="pricing-footer">
                                <a class="btn btn-default inPrepared openServiceClassic">
                                    <spring:message code="landing.inPreparation"/><br/>
                                    (BY JUNE 30. 2015)
                                </a>
                            </div>
                        </td>
                        <td class="checklistItem">
                            <div class="pricing-footer">
                                <a class="btn btn-info openService" data-journalType="Free" style="background-color: #35aa47 !important;"><spring:message code="pricing.openaservice"/> <i class="fa fa-exclamation"></i></a>
                            </div>
                        </td>
                    </tr>
                    </tbody>
                    <tfoot>
                    </tfoot>
                </table>
            </div>
        </div>
    </div>
</div>
<!-- Prices block END -->
<!-- FAQ block BEGIN-->
<div class="padding-top-50 content margin-bottom-40" id="faq">
    <div class="container">
        <h2 class="margin-bottom-50"><strong>Frequently</strong> Asked Questions</h2>
        <!-- BEGIN CONTENT -->
        <div class="page-content-wrapper">
            <div class="page-content" style="min-height:600px">
                <!-- BEGIN SAMPLE PORTLET CONFIGURATION MODAL FORM-->
                <div class="modal fade" id="portlet-config" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
                                <h4 class="modal-title">Modal title</h4>
                            </div>
                            <div class="modal-body">
                                Widget settings form goes here
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn blue">Save changes</button>
                                <button type="button" class="btn default" data-dismiss="modal">Close</button>
                            </div>
                        </div>
                        <!-- /.modal-content -->
                    </div>
                    <!-- /.modal-dialog -->
                </div>
                <!-- /.modal -->
                <!-- END SAMPLE PORTLET CONFIGURATION MODAL FORM-->
                <!-- BEGIN PAGE CONTENT-->
                <div class="row">
                    <div class="col-md-3">
                        <ul class="ver-inline-menu tabbable margin-bottom-10">
                            <li class="active">
                                <a data-toggle="tab" href="#tab_1">
                                    <i class="fa fa-briefcase"></i> General Questions </a>
							<span class="after">
							</span>
                            </li>
                            <li>
                                <a data-toggle="tab" href="#tab_2">
                                    <i class="fa fa-group"></i> Membership </a>
                            </li>
                            <li>
                                <a data-toggle="tab" href="#tab_3">
                                    <i class="fa fa-leaf"></i> Terms Of Service </a>
                            </li>
                            <li>
                                <a data-toggle="tab" href="#tab_1">
                                    <i class="fa fa-info-circle"></i> License Terms </a>
                            </li>
                            <li>
                                <a data-toggle="tab" href="#tab_2">
                                    <i class="fa fa-tint"></i> Payment Rules </a>
                            </li>
                            <li>
                                <a data-toggle="tab" href="#tab_3">
                                    <i class="fa fa-plus"></i> Other Questions </a>
                            </li>
                        </ul>
                    </div>
                    <div class="col-md-9">
                        <div class="tab-content">
                            <div id="tab_1" class="tab-pane active">
                                <div id="accordion_faq1" class="panel-group">
                                    <div class="panel panel-default">
                                        <div class="panel-heading">
                                            <h4 class="panel-title">
                                                <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion_faq1" href="#accordion_faq1_1">
                                                    1. Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry ? </a>
                                            </h4>
                                        </div>
                                        <div id="accordion_faq1_1" class="panel-collapse collapse in">
                                            <div class="panel-body">
                                                Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
                                            </div>
                                        </div>
                                    </div>
                                    <div class="panel panel-default">
                                        <div class="panel-heading">
                                            <h4 class="panel-title">
                                                <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion_faq1" href="#accordion_faq1_2">
                                                    2. Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry ? </a>
                                            </h4>
                                        </div>
                                        <div id="accordion_faq1_2" class="panel-collapse collapse">
                                            <div class="panel-body">
                                                Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
                                            </div>
                                        </div>
                                    </div>
                                    <div class="panel panel-success">
                                        <div class="panel-heading">
                                            <h4 class="panel-title">
                                                <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion_faq1" href="#accordion_faq1_3">
                                                    3. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor ? </a>
                                            </h4>
                                        </div>
                                        <div id="accordion_faq1_3" class="panel-collapse collapse">
                                            <div class="panel-body">
                                                Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
                                            </div>
                                        </div>
                                    </div>
                                    <div class="panel panel-warning">
                                        <div class="panel-heading">
                                            <h4 class="panel-title">
                                                <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion_faq1" href="#accordion_faq1_4">
                                                    4. Wolf moon officia aute, non cupidatat skateboard dolor brunch ? </a>
                                            </h4>
                                        </div>
                                        <div id="accordion_faq1_4" class="panel-collapse collapse">
                                            <div class="panel-body">
                                                3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
                                            </div>
                                        </div>
                                    </div>
                                    <div class="panel panel-danger">
                                        <div class="panel-heading">
                                            <h4 class="panel-title">
                                                <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion_faq1" href="#accordion_faq1_5">
                                                    5. Leggings occaecat craft beer farm-to-table, raw denim aesthetic ? </a>
                                            </h4>
                                        </div>
                                        <div id="accordion_faq1_5" class="panel-collapse collapse">
                                            <div class="panel-body">
                                                3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et
                                            </div>
                                        </div>
                                    </div>
                                    <div class="panel panel-default">
                                        <div class="panel-heading">
                                            <h4 class="panel-title">
                                                <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion_faq1" href="#accordion_faq1_6">
                                                    6. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth ? </a>
                                            </h4>
                                        </div>
                                        <div id="accordion_faq1_6" class="panel-collapse collapse">
                                            <div class="panel-body">
                                                3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et
                                            </div>
                                        </div>
                                    </div>
                                    <div class="panel panel-default">
                                        <div class="panel-heading">
                                            <h4 class="panel-title">
                                                <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion_faq1" href="#accordion_faq1_7">
                                                    7. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft ? </a>
                                            </h4>
                                        </div>
                                        <div id="accordion_faq1_7" class="panel-collapse collapse">
                                            <div class="panel-body">
                                                3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div id="tab_2" class="tab-pane">
                                <div id="accordion_faq2" class="panel-group">
                                    <div class="panel panel-warning">
                                        <div class="panel-heading">
                                            <h4 class="panel-title">
                                                <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion_faq2" href="#accordion_faq2_1">
                                                    1. Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry ? </a>
                                            </h4>
                                        </div>
                                        <div id="accordion_faq2_1" class="panel-collapse collapse in">
                                            <div class="panel-body">
                                                <p>
                                                    Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
                                                </p>
                                                <p>
                                                    Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="panel panel-danger">
                                        <div class="panel-heading">
                                            <h4 class="panel-title">
                                                <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion_faq2" href="#accordion_faq2_2">
                                                    2. Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry ? </a>
                                            </h4>
                                        </div>
                                        <div id="accordion_faq2_2" class="panel-collapse collapse">
                                            <div class="panel-body">
                                                Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
                                            </div>
                                        </div>
                                    </div>
                                    <div class="panel panel-success">
                                        <div class="panel-heading">
                                            <h4 class="panel-title">
                                                <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion_faq2" href="#accordion_faq2_3">
                                                    3. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor ? </a>
                                            </h4>
                                        </div>
                                        <div id="accordion_faq2_3" class="panel-collapse collapse">
                                            <div class="panel-body">
                                                Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
                                            </div>
                                        </div>
                                    </div>
                                    <div class="panel panel-default">
                                        <div class="panel-heading">
                                            <h4 class="panel-title">
                                                <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion_faq2" href="#accordion_faq2_4">
                                                    4. Wolf moon officia aute, non cupidatat skateboard dolor brunch ? </a>
                                            </h4>
                                        </div>
                                        <div id="accordion_faq2_4" class="panel-collapse collapse">
                                            <div class="panel-body">
                                                3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
                                            </div>
                                        </div>
                                    </div>
                                    <div class="panel panel-default">
                                        <div class="panel-heading">
                                            <h4 class="panel-title">
                                                <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion_faq2" href="#accordion_faq2_5">
                                                    5. Leggings occaecat craft beer farm-to-table, raw denim aesthetic ? </a>
                                            </h4>
                                        </div>
                                        <div id="accordion_faq2_5" class="panel-collapse collapse">
                                            <div class="panel-body">
                                                3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et
                                            </div>
                                        </div>
                                    </div>
                                    <div class="panel panel-default">
                                        <div class="panel-heading">
                                            <h4 class="panel-title">
                                                <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion_faq2" href="#accordion_faq2_6">
                                                    6. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth ? </a>
                                            </h4>
                                        </div>
                                        <div id="accordion_faq2_6" class="panel-collapse collapse">
                                            <div class="panel-body">
                                                3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et
                                            </div>
                                        </div>
                                    </div>
                                    <div class="panel panel-default">
                                        <div class="panel-heading">
                                            <h4 class="panel-title">
                                                <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion_faq2" href="#accordion_faq2_7">
                                                    7. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft ? </a>
                                            </h4>
                                        </div>
                                        <div id="accordion_faq2_7" class="panel-collapse collapse">
                                            <div class="panel-body">
                                                3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div id="tab_3" class="tab-pane">
                                <div id="accordion_faq3" class="panel-group">
                                    <div class="panel panel-danger">
                                        <div class="panel-heading">
                                            <h4 class="panel-title">
                                                <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion_faq3" href="#accordion_faq3_1">
                                                    1. Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry ? </a>
                                            </h4>
                                        </div>
                                        <div id="accordion_faq3_1" class="panel-collapse collapse in">
                                            <div class="panel-body">
                                                <p>
                                                    Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et.
                                                </p>
                                                <p>
                                                    Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et.
                                                </p>
                                                <p>
                                                    Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="panel panel-success">
                                        <div class="panel-heading">
                                            <h4 class="panel-title">
                                                <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion_faq3" href="#accordion_faq3_2">
                                                    2. Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry ? </a>
                                            </h4>
                                        </div>
                                        <div id="accordion_faq3_2" class="panel-collapse collapse">
                                            <div class="panel-body">
                                                Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
                                            </div>
                                        </div>
                                    </div>
                                    <div class="panel panel-default">
                                        <div class="panel-heading">
                                            <h4 class="panel-title">
                                                <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion_faq3" href="#accordion_faq3_3">
                                                    3. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor ? </a>
                                            </h4>
                                        </div>
                                        <div id="accordion_faq3_3" class="panel-collapse collapse">
                                            <div class="panel-body">
                                                Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
                                            </div>
                                        </div>
                                    </div>
                                    <div class="panel panel-default">
                                        <div class="panel-heading">
                                            <h4 class="panel-title">
                                                <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion_faq3" href="#accordion_faq3_4">
                                                    4. Wolf moon officia aute, non cupidatat skateboard dolor brunch ? </a>
                                            </h4>
                                        </div>
                                        <div id="accordion_faq3_4" class="panel-collapse collapse">
                                            <div class="panel-body">
                                                3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
                                            </div>
                                        </div>
                                    </div>
                                    <div class="panel panel-default">
                                        <div class="panel-heading">
                                            <h4 class="panel-title">
                                                <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion_faq3" href="#accordion_faq3_5">
                                                    5. Leggings occaecat craft beer farm-to-table, raw denim aesthetic ? </a>
                                            </h4>
                                        </div>
                                        <div id="accordion_faq3_5" class="panel-collapse collapse">
                                            <div class="panel-body">
                                                3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et
                                            </div>
                                        </div>
                                    </div>
                                    <div class="panel panel-default">
                                        <div class="panel-heading">
                                            <h4 class="panel-title">
                                                <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion_faq3" href="#accordion_faq3_6">
                                                    6. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth ? </a>
                                            </h4>
                                        </div>
                                        <div id="accordion_faq3_6" class="panel-collapse collapse">
                                            <div class="panel-body">
                                                3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et
                                            </div>
                                        </div>
                                    </div>
                                    <div class="panel panel-default">
                                        <div class="panel-heading">
                                            <h4 class="panel-title">
                                                <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion_faq3" href="#accordion_faq3_7">
                                                    7. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft ? </a>
                                            </h4>
                                        </div>
                                        <div id="accordion_faq3_7" class="panel-collapse collapse">
                                            <div class="panel-body">
                                                3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- END PAGE CONTENT-->
            </div>
        </div>
        <!-- END CONTENT -->
    </div>
</div>
<!-- FAQ END -->
<!-- BEGIN PRE-FOOTER -->
<div class="pre-footer" id="contact">
    <div class="container">
        <div class="row">
            <div class="col-md-6 col-sm-6 pre-footer-col">
                <h2><spring:message code="system.aboutus"/></h2>
                <h4><spring:message code="system.thinkonweb"/></h4>
                <p><spring:message code="about.p1"/></p>
            </div>
            <div class="col-md-6 col-sm-6 pre-footer-col">
                <h2><spring:message code="system.contactus"/></h2>
                <address class="no-top-space">
                    <spring:message code="signin.email"/>: <a href="mailto:support@manuscriptlink.com">support@manuscriptlink.com</a>
                </address>
                <div class="row" style="margin-top: -20px !important;">
                    <ul class="social-icons margin-bottom-10" style="margin-left: 15px !important;">
                        <li>
                            <a href="https://www.facebook.com/manuscriptlink" data-original-title="facebook" class="facebook">
                            </a>
                        </li>
                        <li>
                            <a href="https://www.linkedin.com/company/manuscriptlink" data-original-title="linkedin" class="linkedin">
                            </a>
                        </li>
                        <li>
                            <a href="https://plus.google.com/u/0/103634515184521789406" data-original-title="Google Plus" class="googleplus">
                            </a>
                        </li>
                    </ul>
                </div>
                <%--
                <div class="row">
                    <div class="col-md-6">
                        <h4><img alt="" src="${resources}/metronic_assets_3.3.0/img/flags/kr.png" width="16px" style="margin-top: -4px !important;"/> Republic of Korea</h4>
                        <address class="no-top-space">
                            <spring:message code="system.companyKoreaAddress"/>
                        </address>
                    </div>
                    <div class="col-md-6">
                        <h4><img alt="" src="${resources}/metronic_assets_3.3.0/img/flags/us.png" width="16px" style="margin-top: -4px !important;"/> USA</h4>
                        <address class="no-top-space">
                            <spring:message code="system.companyUSAAddress"/>
                        </address>
                    </div>
                </div>
                --%>
            </div>
        </div>
    </div>
</div>

<!-- BEGIN FOOTER -->
<div class="footer">
    <div class="container">
        <div class="row">
            <!-- BEGIN COPYRIGHT -->
            <div class="col-md-10 col-sm-10">
                <div class="copyright"><span id="currentYear"></span> &copy; <a class="footerLogoLink" style="text-decoration: none" href="/"><span class="logo_first_small">MANUSCRIPT</span><span class="logo_second_small">LINK</span></a>. ALL Rights Reserved.
                    |   <a href="/docs/termsOfService"><spring:message code="signup.tnc2"/></a>
                    |   <a href="/docs/privacyPolicy"><spring:message code="signup.tnc4"/></a>
                </div>
                <div class="company-info">
                    <small><strong>Business Registration Number</strong>: 312-86-73128&nbsp;&nbsp;<strong>Company</strong>: <spring:message code="system.thinkonweb"/> &nbsp;&nbsp;<strong>CEO</strong>: Chan-Myung Kim &nbsp;&nbsp;<strong>TEL</strong>: +82-41-560-1486<br/><strong>Address</strong>: <spring:message code="system.companyKoreaAddress"/></small>
                </div>
            </div>
            <div class="col-md-2 col-sm-2 cellRight">
                <div>
                    <a href="http://aws.amazon.com" target="_blank">
                        <img title="powered-by-amazon-web-services-black" alt="powered-by-amazon-web-services-black" src="//d0.awsstatic.com/logos/aws/powered-by-amazon-web-services-black.jpg"/></a>
                </div>
            </div>
            <!-- END COPYRIGHT -->
        </div>
    </div>
</div>
<!-- END FOOTER -->
<a href="#promo-block" class="go2top scroll"><img src="${resources}/images/icons/up.png" style="width:40px; height:40px" /></a>
<!--[if lt IE 9]>
<script src="${resources}/metronic_assets_3.3.0/plugins/respond.min.js"></script>
<![endif]-->
<!-- Load JavaScripts at the bottom, because it will reduce page load time -->
<!-- Core plugins BEGIN (For ALL pages) -->
<script src="${resources}/metronic_assets_3.3.0/plugins/jquery-1.11.2.js" type="text/javascript"></script>
<script src="${resources}/metronic_assets_3.3.0/plugins/jquery-migrate-1.2.1.min.js" type="text/javascript"></script>
<script src="${resources}/metronic_assets_3.3.0/plugins/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<!-- Core plugins END (For ALL pages) -->
<!-- BEGIN RevolutionSlider -->
<script src="${resources}/metronic_assets_3.3.0/plugins/slider-revolution-slider/rs-plugin/js/jquery.themepunch.plugins.min.js" type="text/javascript"></script>
<script src="${resources}/metronic_assets_3.3.0/plugins/slider-revolution-slider/rs-plugin/js/jquery.themepunch.revolution.js" type="text/javascript"></script>
<script src="${resources}/metronic_assets_3.3.0/plugins/slider-revolution-slider/rs-plugin/js/jquery.themepunch.tools.min.js" type="text/javascript"></script>
<script src="${resources}/onepage/scripts/revo-ini.js" type="text/javascript"></script>
<!-- END RevolutionSlider -->
<!-- Core plugins BEGIN (required only for current page) -->
<script src="${resources}/metronic_assets_3.3.0/plugins/fancybox/source/jquery.fancybox.pack.js" type="text/javascript"></script><!-- pop up -->
<script src="${resources}/metronic_assets_3.3.0/plugins/bootstrap-switch/js/bootstrap-switch.min.js" type="text/javascript"></script>
<script src="${resources}/metronic_assets_3.3.0/plugins/jquery.easing.js"></script>
<script src="${resources}/metronic_assets_3.3.0/plugins/jquery.parallax.js"></script>
<script src="${resources}/metronic_assets_3.3.0/plugins/jquery.scrollTo.min.js"></script>
<script src="${resources}/metronic_assets_3.3.0/plugins/jquery.blockui.min.js" type="text/javascript"></script>
<script src="${resources}/onepage/scripts/jquery.nav.js"></script>
<!-- Core plugins END (required only for current page) -->
<!-- Global js BEGIN -->
<script src="${resources}/metronic_assets_3.3.0/plugins/bootbox/bootbox.min.js" type="text/javascript"></script>
<script src="${resources}/onepage/scripts/layout.js" type="text/javascript"></script>
<script src="${resources}/js/ManuscriptLink.js" type="text/javascript"></script>
<script>
    function clickPriceMenu() {
        $('#priceMenu').trigger("click");
    }

    function bootstrapSwitchInit() {
        $.fn.bootstrapSwitch.defaults.size = 'large';
        $.fn.bootstrapSwitch.defaults.onColor = 'primary';
        $.fn.bootstrapSwitch.defaults.offColor = 'primary';
    }

    function CarouselInit() {
        $("#management-carousel").show();
        $("#editorship-carousel").hide();
        $("#submission-carousel").hide();
        $("#review-carousel").hide();
    }

    $(document).ready(function() {
        $("#pageloader").fadeOut(300);
        Layout.init();
        ML.init();

        var carousel = $(this).find('.carousel').hide();
        var deferreds = [];
        var imgs = $('.carousel', this).find('img');

        // loop over each img
        imgs.each(function(){
            var self = $(this);
            var datasrc = self.attr('data-src');
            if (datasrc) {
                var d = $.Deferred();
                self.one('load', d.resolve)
                        .attr("src", datasrc)
                        .attr('data-src', '');
                deferreds.push(d.promise());
            }
        });

        $.when.apply($, deferreds).done(function(){
            //$('#ajaxloader').hide();
            //carousel.fadeIn(1000);
        });

        bootstrapSwitchInit();
        CarouselInit();

        $('#managementTour').click(function() {
            $("#management-carousel").show();
            $("#editorship-carousel").hide();
            $("#submission-carousel").hide();
            $("#review-carousel").hide();
        });

        $('#editorshipTour').click(function() {
            $("#management-carousel").hide();
            $("#editorship-carousel").show();
            $("#submission-carousel").hide();
            $("#review-carousel").hide();
        });

        $('#submissionTour').click(function() {
            $("#management-carousel").hide();
            $("#editorship-carousel").hide();
            $("#submission-carousel").show();
            $("#review-carousel").hide();
        });

        $('#reviewTour').click(function() {
            $("#management-carousel").hide();
            $("#editorship-carousel").hide();
            $("#submission-carousel").hide();
            $("#review-carousel").show();
        });

        $('.openService').click(function(event) {
            var type = $(this).attr("data-journalType");
            event.preventDefault();
            redirect("/submitJournal?type=" + type);
        });

        $('.inPrepared').click(function(event) {
            event.preventDefault();
            bootbox.alert("<spring:message code='Landing.service.open'/><br/><spring:message code='system.contactus'/>: <a href='mailto:support@manuscriptlink.com'>support@manuscriptlink.com</a>");
        });

        <c:if test="${param.isFromMyActivity eq 'True'}">
        setTimeout(function(){
            clickPriceMenu();
        }, 800);
        </c:if>
    });

    function redirect (url) {
        var ua = navigator.userAgent.toLowerCase(),
                isIE = ua.indexOf('msie') !== -1,
                version = parseInt(ua.substr(4, 2), 10);
        // Internet Explorer 8 and lower
        if (isIE && version < 9) {
            var link = document.createElement('a');
            link.href = url;
            document.body.appendChild(link);
            link.click();
        }

        // All other browsers
        else {
            window.location.href = url;
        }
    }
</script>
<!-- Global js END -->
<script>
    (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
                (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
            m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
    })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

    ga('create', 'UA-54759153-1', 'auto');
    ga('require', 'displayfeatures');
    ga('send', 'pageview');
</script>
</body>
</html>
