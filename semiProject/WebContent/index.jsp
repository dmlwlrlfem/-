<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>셀카</title>
<script type="text/javascript" src="http://code.jquery.com/jquery-3.3.1.js"></script>
<link rel="stylesheet" type="text/css" href="/css/main.css">
<style>
        .wrapper>div{
            height: 100vh;
            float: left;
        }
        .main1{
            position: relative;
            background-image:url(imgs/main1.jpg);
            width: 37%;
        }
        .img-cover{
            width: 100%;
            height: 100%;
            background-image: url(imgs/main1.jpg);
        }
        .content{
            height: 30%;
            position: absolute;
        }
        .content>div{
            float: left;
        }
        .content img{
            margin: 30px;
            width: 250px;
        }
        .title{
            text-shadow: 1px 1px black;
            font-weight: bold;
            color: aliceblue;
            margin-top: 80px;
            font-size: 30px;
        }
        .content-1{
            font-size: 20px;
            margin-top: 300px;
            margin-left: 250px;
        }
        #btn1{
            background-color: #2e9afe;
            font-size: 15px;
            width: 100px;
            height: 40px;
            margin: 10px;
            border-radius: 10px;
        }
        .content-1-1{
            margin-left: 308px;
            font-size: 20px;
        }
        .main2{
            width: 63%;
            height: 100vh;
        }
        .content2{
            width: 100%;
            height: 100vh;
        }
        .navi-container{
            height: 8%;
        }
        .navi-container>div{
            float: left;
        }
        .navi-box{
            width: 80%;
        }
        .navi{
            text-align: center;
            list-style: none;
        }
        .navi>li{
            text-align: center;
            width: 200px;
            display: inline-block;
        }
        .navi>li>a{
            font-size: 20px;
            color: black;
            text-decoration: none;
        }
        .login-box{
            width: 10%;
        }
        .content2-1{
            height: 70%;
            padding: 30px;
        }
        .content2-1>div{
            float: left;
            width: 50%;
            height: 50%;
        }
        .content2 img{
            width: 100%;
            height: 100%;
        }
        .content2-1-text{
            color: #6E6E6E;
            margin-top: 50px;
            font-size: 35px;
            line-height: 70px;
            text-align: center;
        }
        .sub-navi-container{
            display: none;
            line-height: 30px;
            margin-left: 190px;
            height: 10%;
            width: 80%;
        }
        .sub-navi-container>div{
            padding: 0px;
            margin: 0px;
            float: left;
        }
        .sub-navi{
            padding: 0px;
            margin: 0px;
        }
        .sub-navi>li{
            width: 200px;
            text-align: center;
            list-style: none;
        }
        .sub-navi>li>a{
            text-align: center;
            font-size: 20px;
            color: black;
            text-decoration: none;
        }
        .on{
            display:block;
        }
    </style>
</head>
<body>
	<div class="wrapper">
        <div class="main1">
            <div class="content">
                <div><img src="imgs/logo.png"></div>
                <div class="title">사지말고 셀카해요</div>
                <form action="/views/join.jsp" method="post">
                    <div class="content-1">셀카의 회원이 되어주세요<button type="submit" id="btn1">회원가입</button></div>
                </form>
                <form action="#" method="post">
                    <div class="content-1-1">이미 회원이신가요?<button type="submit" id="btn1">로그인</button></div>
                </form>
            </div>
            <div class="img-cover"></div>
        </div>
        <div class="main2">
            <div class="content2">
               <div class="navi-container">
                    <div class="navi-box">
                        <ul class="navi">
                            <li><a href="#">서비스 소개</a></li>
                            <li><a href="#">우리동네 차량검색</a></li>
                            <li><a href="#">공지사항</a></li>
                       </ul>
                    </div>
                    <div class="login-box"></div>
               </div>
               <div class="sub-navi-container">
                   <div class="sub-navi-box">
                       <ul class="sub-navi">
                           <li><a href="#">셀카 서비스 소개</a></li>
                           <li><a href="#">이용안내</a></li>
                       </ul>
                   </div>
                   <div class="sub-navi-box">
                       <ul class="sub-navi">
                           <li><a href="#">예약1</a></li>
                           <li><a href="#">예약2</a></li>
                       </ul>
                   </div>
               </div>
                <div class="content2-1">
                    <div><img src="imgs/main2.jpg"></div>
                    <div class="content2-1-text">멀리 가지않고<br>우리동네에서 <br>"셀카"</div>
                    <div class="content2-1-text">주차장에<br>세워 두지 말고<br> "셀카"</div>
                    <div><img src="imgs/main3.jpg"></div>
                </div>
            </div>
        </div>
    </div>
    <script>
        $(".navi li").mouseover(function(){
            var navi = $(".sub-navi-container");
            navi.removeClass("on");
            navi.addClass("on");
        });
        $(".sub-navi-container").mouseleave(function(){
            var navi = $(".sub-navi-container");
            navi.removeClass("on");
        });
    </script>
</body>
</html>