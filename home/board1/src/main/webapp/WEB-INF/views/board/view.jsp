<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://code.jquery.com/jquery-3.6.0.slim.js" integrity="sha256-HwWONEZrpuoh951cQD1ov2HUK5zA5DwJ1DNUXaM6FsY=" crossorigin="anonymous"></script>
<title>게시물 조회</title>
</head>
<body>

<div id="nav">
 <%@ include file="../include/nav.jsp" %>
</div>

<form method="post">

<label>제목</label>
${view.title_counsel}<br />

<label>작성자</label>
${view.writer_counsel}<br />

<label>내용</label>
${view.content_counsel}<br />

<div>
<a href="/board/update?seq_counsel=${view.seq_counsel}">게시물 수정</a>, <a href="/board/delete?seq_counsel=${view.seq_counsel}">게시물 삭제</a>
</div>

</form>

<!-- comment START -->

<hr />
<ul>
<c:forEach items="${comment}" var="comment">
<li>
	<div>
		<p>${comment.c_writer_counsel} / ${comment.c_regDate_counsel}</p>
		<p>${comment.c_content_counsel}</p>
	</div>
	<p>              
 <button type="button" class="commentUpdate" data-c_seq_counsel="${comment.c_seq_counsel}">수정</button>
 <button type="button" class="commentDelete" data-c_seq_counsel="${comment.c_seq_counsel}">삭제</button>
 
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
</p>
	
</li>	
</c:forEach>
</ul>

<div>

	<form method="post" action="/comment/write">
	
		<p>
			<label>댓글 작성자</label>
			<input type="text" name="c_writer_counsel">
		</p>
		<p>
			<textarea rows="5" cols="50" name="c_content_counsel"></textarea>
		</p>
		<p>
		<input type="hidden" name="C_board_counsel" value="${view.seq_counsel}">
			<button type="submit">댓글 작성</button>
		</p>
	</form>
	
</div>

<!-- comment END--> 


</body>
</html>