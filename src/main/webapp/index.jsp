<%@page contentType="text/html; charset=utf-8" language="java" errorPage="" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<body>
    <div class="container">
        <div class="carousel slide hidden-xs" data-ride="carousel" id="slideshow" data-interval="3000">

            <ol class="carousel-indicators">
                <li data-target="#slideshow" data-slide-to="0" class="active"></li>
                <li data-target="#slideshow" data-slide-to="1"></li>
            </ol>

            <div class="carousel-inner">
                <div class="item active">
                    <img src="/image/slide_image1.png" alt="">
                    <div class="carousel-caption">
                        <h2>Bootstrap</h2>
                        <p>It's my first time to learn it.</p>
                    </div>
                </div>
                <div class="item">
                    <img src="/image/slide_image2.png" alt="">
                    <div class="carousel-caption">
                        <h2>Bootstrap</h2>
                        <p>It's my second time to learn it.</p>
                    </div>
                </div>
            </div>
            <a href="#slideshow" data-slide="prev" class="left carousel-control">
                <span class="glyphicon glyphicon-chevron-left"></span>
            </a>
            <a href="#slideshow" data-slide="next" class="right carousel-control">
                <span class="glyphicon glyphicon-chevron-right"></span>
            </a>
        </div>
    </div>
    <br>
    <div class="container">
        <marquee> <span class="glyphicon glyphicon-flag"></span><a href="/user/login">请您先登录，再进行投票活动！</a></marquee>
    </div>
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <h1 class="page-header">小编寄语</h1>
                <p>您的支持是我们的动力,你的宝贵意见是我们改进的方向。</p>
            </div>
        </div>
    </div>
    <div class="container-fluid" >
        <div class="row">
            <div class="col-xs-6">
            </div>
            <div class="col-xs-6">
            </div>
        </div>
    </div>
</body>

