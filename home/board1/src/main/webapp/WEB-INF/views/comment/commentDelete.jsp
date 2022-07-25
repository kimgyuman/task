<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
<head>
 <title>kuzuro 게시판</title>
 <!-- 제이쿼리 -->
 <script src='https://code.jquery.com/jquery-3.3.1.min.js'></script>
</head>
<body>
<div id="root">
 <header>
  
 </header>
 <nav>
  
 </nav>
 <section id="container">
  <form role="form" method="post" autocomplete="off">
   <input type="hidden" id="c_board_counsel" name="c_board_counsel" value="${selectComment.c_board_counsel}" readonly="readonly" />
   <input type="hidden" id="c_seq_counsel" name="c_seq_counsel" value="${selectComment.c_seq_counsel}" readonly="readonly" /> 
  
   
   <p>정말로 삭제하시겠습니까?</p>
   <p>
    <button type="submit">예, 삭제합니다.</button><br />
    <button type="button" id="cancel_btn">아니오, 삭제하지 않습니다.</button>

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
</body>
</html>

