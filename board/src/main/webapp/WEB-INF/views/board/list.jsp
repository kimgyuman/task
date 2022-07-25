<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!doctype html>
<html lang="en" class="h-100">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Cover Template · Bootstrap v5.1</title>
    <link rel="canonical" href="https://getbootstrap.com/docs/5.1/examples/cover/">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>

    <!-- Bootstrap core CSS -->
<link href="../resources/css/index.css" rel="stylesheet">

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
      th, td{
      color:white;}
      td:hover{
      background:white;}
      .px-3{
      	color:white;
      }
      .table{
      color:white;
      
      }
     a {
		  text-decoration: none !important;
		  color:white !important; 
		
		}
      
      .btnWrite{
      	float:right;
      	width:60px;
      	height:35px;
      	font-family:10px;
      }
      .newWrite{
      font-family:5px;
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
        <a class="nav-link " aria-current="page" href="/">Home</a>
         <a class="nav-link" href="/board/list">board</a>
        <!-- <a class="nav-link" href="#">Contact</a>-->
      </nav>
    </div>
  </header>

  <main class="px-3">
  
<h3>Board</h3>       
        <table class="table table-hover table-striped">
          <thead>
            <tr>
              <th>글번호</th>
              <th>제목</th>
              <th>작성일</th>
              <th>작성자</th>
              <th>조회수</th>
            </tr>
          </thead>
          <tbody>
          <c:forEach items="${list}" var="list">
            <tr>
				<td>${list.seq_counsel}</td>
				<td>
					<a href="/board/view?seq_counsel=${list.seq_counsel}">${list.title_counsel}</a>
				</td>
				<td>
					<fmt:formatDate value="${list.regDate_counsel}" pattern="yyyy-MM-dd" />
				</td>
				<td>${list.writer_counsel}</td>
				<td>${list.viewCnt_counsel}</td>
		 	</tr>
		 </c:forEach>
          </tbody>
         <!--  <tfoot>
            <tr>
              <td>Totals</td>
              <td>21</td>
              <td>23</td>
            </tr>
          </tfoot> -->
        </table>
        <p class="newWrite"><button type="button" onclick="location.href='/board/write'" class="btn btn-primary btnWrite">작성</button></p>  

  </main>

  <footer class="mt-auto text-white-50">
    <p>Cover template for <a href="https://getbootstrap.com/" class="text-white">Bootstrap</a>, by <a href="https://twitter.com/mdo" class="text-white">@mdo</a>.</p>
  </footer>
</div>


    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
  </body>
</html>
