
<!doctype html>
<html lang="ko" class="h-100">
<head>
    <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="canonical" href="https://getbootstrap.kr/docs/5.1/examples/cover/">

    <!-- Bootstrap core CSS -->
    <link href="/docs/5.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <!-- Favicons -->
    <link rel="apple-touch-icon" href="/docs/5.1/assets/img/favicons/apple-touch-icon.png" sizes="180x180">
    <link rel="icon" href="/docs/5.1/assets/img/favicons/favicon-32x32.png" sizes="32x32" type="image/png">
    <link rel="icon" href="/docs/5.1/assets/img/favicons/favicon-16x16.png" sizes="16x16" type="image/png">
    <link rel="manifest" href="/docs/5.1/assets/img/favicons/manifest.json">
    <link rel="mask-icon" href="/docs/5.1/assets/img/favicons/safari-pinned-tab.svg" color="#7952b3">
    <link rel="icon" href="/docs/5.1/assets/img/favicons/favicon.ico">
    <meta name="theme-color" content="#7952b3">

    <style>
        .bd-placeholder-img {
            font-size: 1.125rem;
            text-anchor: middle;
            -webkit-user-select: none;
            -moz-user-select: none;
            user-select: none;
        }
        @media (min-width: 1400px) {
            .bd-placeholder-img-lg {
                font-size: 3.5rem;
            }
        }
    </style>

    <script type="text/javascript">
        document.addEventListener("DOMContentLoaded", function() {
            realTimer();    // 시간을 딜레이 없이 나타내기위한 선 실행
            setInterval(realTimer, 500);    // 이후 0.5초에 한번씩 시간을 갱신한다.
        });

        // 시간을 출력
        function realTimer() {
            const nowDate = new Date();
            const year = nowDate.getFullYear();
            const month= nowDate.getMonth() + 1;
            const date = nowDate.getDate();
            const hour = nowDate.getHours();
            const min = nowDate.getMinutes();
            const sec = nowDate.getSeconds();
            const hi = msg(hour);

            document.getElementById("times").innerHTML = hi;
            document.getElementById("nowTimes").innerHTML = year + "-" + addzero(month) + "-" + addzero(date) + "&nbsp;" + hour + ":" + addzero(min) + ":" + addzero(sec);
        } // 1자리수의 숫자인 경우 앞에 0을 붙여준다.

        function addzero(num) {
            if(num < 10) { num = "0" + num; }
            return num;
        }

        function msg(result){
            if(result < 12){
                result = '좋은 아침!';
            } else if(result < 18){
                result= '활기찬 오후!';
            } else { result = '잘 자요!'; }
            return result;
        }
    </script>

    <!-- Custom styles for this template -->
    <link href="cover.css" rel="stylesheet">
</head>
<body class="d-flex h-100 text-center text-white bg-dark">

<div class="cover-container d-flex w-50 h-100 p-3 mx-auto flex-column" align="left">
    <header class="mb-auto">
        <div>
            <h3 class="float-md-start mb-0">CRIZEN SOLUTION</h3>
            <!--<nav class="nav nav-masthead justify-content-center float-md-end">
              <a class="nav-link active" aria-current="page" href="#">Home</a>
              <a class="nav-link" href="#">Features</a>
              <a class="nav-link" href="#">Contact</a>
            </nav> -->
        </div>
    </header>

    <div class="px-3" >
        <div><h1><span id=times></span></h1></div>

        <div><p class="lead">현재 시간은 <span id="nowTimes"></span> 입니다.</p></div>
        <div><p class="lead">
            <a href="#" onclick="window.open('https://www.naver.com')" class="btn btn-lg btn-secondary fw-bold border-white bg-white" style = "color:black">Learn more</a>
        </p></div>
    </div>

    <footer class="mt-auto text-white-50">
        <p>Cover template for <a href="https://getbootstrap.com/" class="text-white">Bootstrap</a>, by <a href="https://twitter.com/mdo" class="text-white">@mdo</a>.</p>
    </footer>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>
