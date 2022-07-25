<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
      .viewMain{margin-top:30px;}
      .btn-group{float: left; margin-left:300px; margin-top:15px;}
  	  .commentView{margin-top:15px;}
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
        <a class="nav-link " aria-current="page" href="/">Home</a>
         <a class="nav-link" href="/board/list">board</a>
        <!-- <a class="nav-link" href="#">Contact</a>-->
      </nav>
    </div>
     <!-- 제이쿼리 -->
 <script src='https://code.jquery.com/jquery-3.3.1.min.js'></script>
  </header>

  <main class="px-3">
<form method="post" class="viewMain">
<div class="row" >
	<div class="col-8">
	  <label for="exampleFormControlInput1" class="form-label" style="font-size:large;"  >제 &nbsp &nbsp &nbsp &nbsp  목</label>
  	  <input type="text" class="form-control" id="exampleFormControlInput1"  name="title_counsel" value="${view.title_counsel}" readonly>
	</div>
	<div class="col-4">
		<label for="inputCity" class="form-label" style="font-size:large;" >작 성 자</label>
		<input type="text" class="form-control" id="inputCity" name="writer_counsel" value="${view.writer_counsel}" readonly>
    </div>

</div>

<div class="mb-3">
  <label for="exampleFormControlTextarea1" class="form-label" style="font-size:large; margin-top: 30px;"  >내 &nbsp &nbsp &nbsp &nbsp  용</label>
  <textarea class="form-control" id="exampleFormControlTextarea1" rows="7" name="content_counsel" readonly>${view.content_counsel}</textarea>
 </div>
 
 <div class="container">
  <div class="row">
    <div class="col-md-4"><p class="newWrite"><button type="button" onclick="location.href='/board/list'" class="btn btn-primary btnWrite">목록</button></p>
    </div>
    <div class="col-md-4 offset-md-4">
    		<button type="button" class="btn btn-light" onclick="location.href='/board/update?seq_counsel=${view.seq_counsel}'">수정</button>
	  		<button type="button" class="btn btn-light" onclick="location.href='/board/delete?seq_counsel=${view.seq_counsel}'">삭제</button>
  	</div>
  </div>
 </div>  		
</form>
<hr />







<!-- comment START -->
<div class="commentView">
<c:forEach items="${comment}" var="comment">
<div class="row g-3">
  <div class="col-sm-6" style="text-align:left;" >
    <fmt:formatDate value="${comment.c_regDate_counsel}" pattern="yyyy-MM-dd" />
  </div>
  <div class="col-sm">
    <input  type="hidden" class="form-control" placeholder="State" aria-label="State">
  </div>
  <div class="col-sm"  style="margin-left:50px;">
    <button type="button" class="commentUpdate btn btn-primary btn-sm" style="margin-bottom:4px;" data-c_seq_counsel="${comment.c_seq_counsel}">수정</button>
 	<button type="button" class="commentDelete btn btn-light btn-sm" style="margin-bottom:4px;" data-c_seq_counsel="${comment.c_seq_counsel}">삭제</button>
  </div>
</div>

<div class="row" >
	<div class="col-9">
  	  <input type="text" class="form-control" id="exampleFormControlInput1"  name="title_counsel" value="${comment.c_content_counsel}" readonly>
	</div>
	
	<div class="col-3">
		<input type="text" class="form-control" id="inputCity" name="writer_counsel" value="${comment.c_writer_counsel}" readonly>
    </div>
</div>
<br />
<br />
<script>
  $(".commentUpdate").click(function(){
   self.location = "/comment/commentUpdate?=seq_counsel=${view.seq_counsel}"
   + "&C_seq_counsel=" + $(this).attr("data-c_seq_counsel"); 
  });
  
  $(".commentDelete").click(function(){
   self.location = "/comment/commentDelete?seq_counsel=${view.seq_counsel}"
   + "&C_seq_counsel=" + $(this).attr("data-c_seq_counsel"); 
    
  });       
 </script>
</c:forEach>
</div>
<hr style=""/>





<div>
	<form method="post" action="/comment/write">
		<p>
			<textarea rows="5" cols="50" name="c_content_counsel"></textarea>
		</p>
		<p>
			<label>댓글 작성자</label>
			<input type="text" name="c_writer_counsel">
			<input type="hidden" name="C_board_counsel" value="${view.seq_counsel}">
			<button type="submit" class="btn btn-primary btn-sm btnWrite">댓글작성</button>
		</p>
	</form>
</div>
<!-- comment END--> 
  </main>


  <footer class="mt-auto text-white-50">
    <p>Cover template for <a href="https://getbootstrap.com/" class="text-white">Bootstrap</a>, by <a href="https://twitter.com/mdo" class="text-white">@mdo</a>.</p>
  </footer>
</div>


    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
  </body>
</html>
