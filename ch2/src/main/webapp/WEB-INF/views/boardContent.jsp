<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri = "http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container">
  <h2>Spring MVC01</h2>
  <div class="panel panel-default">
    <div class="panel-heading">Board</div>
    <div class="panel-body">
	    	<table class="table">
	    		<tr>
	    			<td>제목</td>
	    			<td>${board.title}</td>
	    		</tr>
	    		<tr>
	    			<td>내용</td>
	    			<td>${board.content}</td>
	    		</tr>
    			<tr>
	    			<td>작성자</td>
	    			<td>${board.writer}</td>
	    		</tr>
    			<tr>
	    			<td>작성일</td>
	    			<td>${board.indate}</td>
	    		</tr>
	    		<tr>
	    			<td colspan="2" align="center">
	    				<button type="button" class="btn btn-success btn-sm">수정</button>
	    				<button type="reset" class="btn btn-warning btn-sm">삭제</button>
	    				<button type="reset" class="btn btn-primary btn-sm">목록</button>
	    			</td>
	    		</tr>
	    	</table>
    </div>
    <div class="panel-footer">Spring 01</div>
  </div>
</div>

</body>
</html>
