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
       .btn-group{float: right; margin-left:30px; margin-top:32px;}
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
  </header>

  <main class="px-3">
  
    <form method="post">
        <div class="row" >
            <div class="col-8">
                <label for="exampleFormControlInput1" class="form-label" style="font-size:large;"  name="title_counsel" value="${updateView.title_counsel}" >제 &nbsp &nbsp &nbsp &nbsp  목</label>
                <input type="text" class="form-control" id="exampleFormControlInput1"  name="title_counsel"  value="${updateView.title_counsel}" >
            </div>
            <div class="col-4">
                <label for="inputCity" class="form-label" style="font-size:large;" >작 성 자</label>
                <input type="text" class="form-control" id="inputCity" name="writer_counsel" value="${updateView.writer_counsel}">
            </div>

        </div>

        <div class="mb-3">
            <label for="exampleFormControlTextarea1" class="form-label" style="font-size:large; margin-top: 30px;" >내 &nbsp &nbsp &nbsp &nbsp  용</label>
            <textarea class="form-control" id="exampleFormControlTextarea1" rows="7" name="content_counsel">${updateView.content_counsel}</textarea>
            <div class="btn-group" role="group" aria-label="Basic example">
                <button type="button" class="btn btn-light" onclick="location.href='/board/view?seq_counsel=${updateView.seq_counsel}'">취 소</button>
                <button type="submit" class="btn btn-primary">수정</button>
            </div>
        </div>
    </form>
</main>






  








  <footer class="mt-auto text-white-50">
    <p>Cover template for <a href="https://getbootstrap.com/" class="text-white">Bootstrap</a>, by <a href="https://twitter.com/mdo" class="text-white">@mdo</a>.</p>
  </footer>
</div>


    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
  </body>
</html>
