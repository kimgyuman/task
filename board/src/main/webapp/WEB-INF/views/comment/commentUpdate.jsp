<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en" class="h-100">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Hugo 0.88.1">
    <title>Cover Template · Bootstrap v5.1</title>

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
				   
<div class="cover-container d-flex w-100 h-100 p-3 mx-auto flex-column">
  <header class="mb-auto">
    <div>
      <h3 class="float-md-start mb-0">CRIZEN SOLUTION</h3>
      <nav class="nav nav-masthead justify-content-center float-md-end">
        <a class="nav-link active" aria-current="page" href="/">Home</a>
         <a class="nav-link" href="/board/list">board</a>
        <!-- <a class="nav-link" href="#">Contact</a>-->
      </nav>
    </div>
    
 <!-- 제이쿼리 -->
 <script src='https://code.jquery.com/jquery-3.3.1.min.js'></script>
  </header>

  <main class="px-3">
  
    <div id="root">
 <header>

 </header>

 <section id="container">
  <form role="form" method="post" autocomplete="off">
    
   <input type="hidden" id="c_board_counsel" name="c_board_counsel" value="${selectComment.c_board_counsel}" readonly="readonly" />
   <input type="hidden" id="c_seq_counsel" name="c_seq_counsel" value="${selectComment.c_seq_counsel}" readonly="readonly" /> 
  
   <p>
    <label for="content"></label>
    <textarea id="c_content_counsel" name="c_content_counsel" >${selectComment.c_content_counsel}</textarea>
   </p>
   
   <p>
    <button type="submit" class=" btn btn-primary btn-sm" style="margin-left:50x;">수정</button>
    <button type="button" id="cancel_btn" class="btn btn-light btn-sm">취소</button>
    
    
    
    <script>
    // 폼을 변수에 저장
    var formObj = $("form[role='form']"); 
    
    // 취소 버튼 클릭
    $("#cancel_btn").click(function(){   
     self.location = "/board/view?seq_counsel=${selectComment.c_board_counsel}";
     
    });
    </script>
   </p> 
  </form>
 </section>
 <footer>
  
 </footer>
</div>
    
    
    
    
  </main>



  <footer class="mt-auto text-white-50">
    <p>Cover template for <a href="https://getbootstrap.com/" class="text-white">Bootstrap</a>, by <a href="https://twitter.com/mdo" class="text-white">@mdo</a>.</p>
  </footer>
</div>


    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
  </body>
</html>
