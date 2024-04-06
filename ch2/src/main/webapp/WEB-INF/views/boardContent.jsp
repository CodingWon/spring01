<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri = "http://java.sun.com/jsp/jstl/core"%>
    <%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
    <% pageContext.setAttribute("newLineChar", "\n"); %>
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
	    			<td><input type="text" name="title" class = "form-control" value="${board.title}" readonly /></td>
	    		</tr>
	    		<tr>
	    			<td>내용</td>
	    			<td><textarea rows ="7" class="form-control" name="content" readonly >${board.content}</textarea></td>
	    		</tr>
    			<tr>
	    			<td>작성자</td>
	    			<td><input type="text" name="writer" class = "form-control" value="${board.writer}" readonly /></td>
	    		</tr>
	    		<tr>
	    			<td colspan="2" align="center">
	    				<a href="/boardUpdateForm.do/${board.idx}" class="btn btn-success btn-sm">수정</button>
	    				<a href="/boardDelete.do/${board.idx}" class="btn btn-success btn-sm">삭제</button>
	    				<a href="/boardList.do" class="btn btn-warning btn-sm">리스트</button>
	    			</td>
	    		</tr>
	    	</table>
    </div>
    <div class="panel-footer">Spring 01</div>
  </div>
</div>

</body>
</html>
