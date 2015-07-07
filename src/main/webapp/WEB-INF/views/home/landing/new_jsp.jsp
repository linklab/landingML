<%--
  Created by IntelliJ IDEA.
  User: GoHyunyoung98
  Date: 2015-07-04
  Time: 오전 11:51
  To change this template use File | Settings | File Templates.
--%>
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
<!-- END HEAD -->


<!-- FAQ block BEGIN-->
<div class="choose-us-block content text-center margin-bottom-40" id="demo">
  <div class="container">
    <h2><spring:message code="faq.heading"/></h2>
    <h4><spring:message code="faq.description.1"/></h4>
  </div>
</div>
<!-- Choose us block END -->


<!-- BEGIN CONTAINER -->
<!-- FAQ 내용이 들어갈 부분 -->
<div class="page-container">
  <!-- BEGIN CONTENT -->
  <div class="page-content-wrapper">
    <div class="page-content" style="min-height:625px">
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
            <li class="">
              <a data-toggle="tab" href="#tab_1">
                <i class="fa fa-group"></i> Membership </a>
            </li>
            <li>
              <a data-toggle="tab" href="#tab_3">
                <i class="fa fa-leaf"></i> Terms Of Service </a>
            </li>
            <li class="">
              <a data-toggle="tab" href="#tab_1">
                <i class="fa fa-info-circle"></i> License Terms </a>
            </li>
            <li class="">
              <a data-toggle="tab" href="#tab_2">
                <i class="fa fa-tint"></i> Payment Rules </a>
            </li>
            <li class="">
              <a data-toggle="tab" href="#tab_3">
                <i class="fa fa-plus"></i> Other Questions </a>
            </li>
          </ul>
        </div>
        <div class="col-md-9">
          <div class="tab-content">
            <div id="tab_1" class="tab-pane active">
              <div id="accordion1" class="panel-group">
                <div class="panel panel-default">
                  <div class="panel-heading">
                    <h4 class="panel-title">
                      <a class="accordion-toggle collapsed" data-toggle="collapse" data-parent="#accordion1" href="#accordion1_1">
                        1. Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry123 ? </a>
                    </h4>
                  </div>
                  <div id="accordion1_1" class="panel-collapse collapse" style="height: 0px;">
                    <div class="panel-body">
                      Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
                    </div>
                  </div>
                </div>
                <div class="panel panel-default">
                  <div class="panel-heading">
                    <h4 class="panel-title">
                      <a class="accordion-toggle collapsed" data-toggle="collapse" data-parent="#accordion1" href="#accordion1_2">
                        2. Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry ? </a>
                    </h4>
                  </div>
                  <div id="accordion1_2" class="panel-collapse collapse" style="height: 0px;">
                    <div class="panel-body">
                      Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
                    </div>
                  </div>
                </div>
                <div class="panel panel-success">
                  <div class="panel-heading">
                    <h4 class="panel-title">
                      <a class="accordion-toggle collapsed" data-toggle="collapse" data-parent="#accordion1" href="#accordion1_3">
                        3. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor ? </a>
                    </h4>
                  </div>
                  <div id="accordion1_3" class="panel-collapse collapse" style="height: 0px;">
                    <div class="panel-body">
                      Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
                    </div>
                  </div>
                </div>
                <div class="panel panel-warning">
                  <div class="panel-heading">
                    <h4 class="panel-title">
                      <a class="accordion-toggle collapsed" data-toggle="collapse" data-parent="#accordion1" href="#accordion1_4">
                        4. Wolf moon officia aute, non cupidatat skateboard dolor brunch ? </a>
                    </h4>
                  </div>
                  <div id="accordion1_4" class="panel-collapse collapse" style="height: 0px;">
                    <div class="panel-body">
                      3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
                    </div>
                  </div>
                </div>
                <div class="panel panel-danger">
                  <div class="panel-heading">
                    <h4 class="panel-title">
                      <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion1" href="#accordion1_5">
                        5. Leggings occaecat craft beer farm-to-table, raw denim aesthetic ? </a>
                    </h4>
                  </div>
                  <div id="accordion1_5" class="panel-collapse collapse in" style="">
                    <div class="panel-body">
                      3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et
                    </div>
                  </div>
                </div>
                <div class="panel panel-default">
                  <div class="panel-heading">
                    <h4 class="panel-title">
                      <a class="accordion-toggle collapsed" data-toggle="collapse" data-parent="#accordion1" href="#accordion1_6">
                        6. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth ? </a>
                    </h4>
                  </div>
                  <div id="accordion1_6" class="panel-collapse collapse">
                    <div class="panel-body">
                      3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et
                    </div>
                  </div>
                </div>
                <div class="panel panel-default">
                  <div class="panel-heading">
                    <h4 class="panel-title">
                      <a class="accordion-toggle collapsed" data-toggle="collapse" data-parent="#accordion1" href="#accordion1_7">
                        7. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft ? </a>
                    </h4>
                  </div>
                  <div id="accordion1_7" class="panel-collapse collapse">
                    <div class="panel-body">
                      3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div id="tab_2" class="tab-pane">
              <div id="accordion2" class="panel-group">
                <div class="panel panel-warning">
                  <div class="panel-heading">
                    <h4 class="panel-title">
                      <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#accordion2_1">
                        1. Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry456 ? </a>
                    </h4>
                  </div>
                  <div id="accordion2_1" class="panel-collapse collapse in">
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
                      <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#accordion2_2">
                        2. Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry ? </a>
                    </h4>
                  </div>
                  <div id="accordion2_2" class="panel-collapse collapse">
                    <div class="panel-body">
                      Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
                    </div>
                  </div>
                </div>
                <div class="panel panel-success">
                  <div class="panel-heading">
                    <h4 class="panel-title">
                      <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#accordion2_3">
                        3. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor ? </a>
                    </h4>
                  </div>
                  <div id="accordion2_3" class="panel-collapse collapse">
                    <div class="panel-body">
                      Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
                    </div>
                  </div>
                </div>
                <div class="panel panel-default">
                  <div class="panel-heading">
                    <h4 class="panel-title">
                      <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#accordion2_4">
                        4. Wolf moon officia aute, non cupidatat skateboard dolor brunch ? </a>
                    </h4>
                  </div>
                  <div id="accordion2_4" class="panel-collapse collapse">
                    <div class="panel-body">
                      3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
                    </div>
                  </div>
                </div>
                <div class="panel panel-default">
                  <div class="panel-heading">
                    <h4 class="panel-title">
                      <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#accordion2_5">
                        5. Leggings occaecat craft beer farm-to-table, raw denim aesthetic ? </a>
                    </h4>
                  </div>
                  <div id="accordion2_5" class="panel-collapse collapse">
                    <div class="panel-body">
                      3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et
                    </div>
                  </div>
                </div>
                <div class="panel panel-default">
                  <div class="panel-heading">
                    <h4 class="panel-title">
                      <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#accordion2_6">
                        6. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth ? </a>
                    </h4>
                  </div>
                  <div id="accordion2_6" class="panel-collapse collapse">
                    <div class="panel-body">
                      3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et
                    </div>
                  </div>
                </div>
                <div class="panel panel-default">
                  <div class="panel-heading">
                    <h4 class="panel-title">
                      <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#accordion2_7">
                        7. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft ? </a>
                    </h4>
                  </div>
                  <div id="accordion2_7" class="panel-collapse collapse">
                    <div class="panel-body">
                      3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div id="tab_3" class="tab-pane">
              <div id="accordion3" class="panel-group">
                <div class="panel panel-danger">
                  <div class="panel-heading">
                    <h4 class="panel-title">
                      <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion3" href="#accordion3_1">
                        1. Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry789 ? </a>
                    </h4>
                  </div>
                  <div id="accordion3_1" class="panel-collapse collapse in">
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
                      <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion3" href="#accordion3_2">
                        2. Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry ? </a>
                    </h4>
                  </div>
                  <div id="accordion3_2" class="panel-collapse collapse">
                    <div class="panel-body">
                      Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
                    </div>
                  </div>
                </div>
                <div class="panel panel-default">
                  <div class="panel-heading">
                    <h4 class="panel-title">
                      <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion3" href="#accordion3_3">
                        3. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor ? </a>
                    </h4>
                  </div>
                  <div id="accordion3_3" class="panel-collapse collapse">
                    <div class="panel-body">
                      Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
                    </div>
                  </div>
                </div>
                <div class="panel panel-default">
                  <div class="panel-heading">
                    <h4 class="panel-title">
                      <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion3" href="#accordion3_4">
                        4. Wolf moon officia aute, non cupidatat skateboard dolor brunch ? </a>
                    </h4>
                  </div>
                  <div id="accordion3_4" class="panel-collapse collapse">
                    <div class="panel-body">
                      3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
                    </div>
                  </div>
                </div>
                <div class="panel panel-default">
                  <div class="panel-heading">
                    <h4 class="panel-title">
                      <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion3" href="#accordion3_5">
                        5. Leggings occaecat craft beer farm-to-table, raw denim aesthetic ? </a>
                    </h4>
                  </div>
                  <div id="accordion3_5" class="panel-collapse collapse">
                    <div class="panel-body">
                      3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et
                    </div>
                  </div>
                </div>
                <div class="panel panel-default">
                  <div class="panel-heading">
                    <h4 class="panel-title">
                      <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion3" href="#accordion3_6">
                        6. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth ? </a>
                    </h4>
                  </div>
                  <div id="accordion3_6" class="panel-collapse collapse">
                    <div class="panel-body">
                      3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et
                    </div>
                  </div>
                </div>
                <div class="panel panel-default">
                  <div class="panel-heading">
                    <h4 class="panel-title">
                      <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion3" href="#accordion3_7">
                        7. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft ? </a>
                    </h4>
                  </div>
                  <div id="accordion3_7" class="panel-collapse collapse">
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
<!-- END CONTAINER -->

<!-- END JAVASCRIPTS -->

<!-- END BODY -->
<!-- FAQ END -->




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