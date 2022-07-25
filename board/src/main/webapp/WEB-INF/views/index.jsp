<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en" class="h-100">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
       <link rel="canonical" href="https://getbootstrap.com/docs/5.1/examples/cover/">

    
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>

    <!-- Bootstrap core CSS -->
<link href="/resources/css/index.css" rel="stylesheet">

    <style>
      .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        user-select: none;
      }

      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }
    </style>

    
    <!-- Custom styles for this template -->
    <link href="/resources/css/index.css" rel="stylesheet">
  </head>
  <body class="d-flex h-100 text-center text-white bg-dark">
				    <script type="text/javascript">
				    document.addEventListener("DOMContentLoaded", function() {
				        // 시간을 딜레이 없이 나타내기위한 선 실행
				        realTimer();
				        // 이후 0.5초에 한번씩 시간을 갱신한다.
				        setInterval(realTimer, 500);
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
					}
				        // 1자리수의 숫자인 경우 앞에 0을 붙여준다.
					function addzero(num) {
						if(num < 10) { num = "0" + num; }
						return num;
					}
				
				    function msg(result){
				    	if(result <= 12){
				    		result = '좋은 아침!';
				    	} else if(result <= 18){
				    		result= '활기찬 오후!';
				    	} else { result = '잘 자요!'; }
				    	return result;
				    	
				    }
				
				
				</script>
<div class="cover-container d-flex w-100 h-100 p-3 mx-auto flex-column">
  <header class="mb-auto">
    <div>
      <h3 class="float-md-start mb-0">CRIZEN SOLUTION</h3>
      <nav class="nav nav-masthead justify-content-center float-md-end">
        <a class="nav-link " aria-current="page" href="#">Home</a>
         <a class="nav-link" href="/board/list">board</a>
        <!-- <a class="nav-link" href="#">Contact</a>-->
      </nav>
    </div>
  </header>

  <main class="px-3">
  
    <h1 id="times"></h1>
    <h1><p class="lead" id=nowTimes></p></h1>
    <p class="lead">
      <a href="#" class="btn btn-lg btn-secondary fw-bold border-white bg-white" style="color:black;">Learn more</a>
    </p>
  </main>

  <footer class="mt-auto text-white-50">
    <p>Cover template for <a href="https://getbootstrap.com/" class="text-white">Bootstrap</a>, by <a href="https://twitter.com/mdo" class="text-white">@mdo</a>.</p>
  </footer>
</div>


    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
  </body>
</html>
