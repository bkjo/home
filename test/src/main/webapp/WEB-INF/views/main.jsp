<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
<title>Insert title here</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>


</head>
<body>

<nav id="mainNav" class="navbar navbar-default navbar-fixed-top">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="/test">
       <span class="glyphicon glyphicon-home" aria-hidden="true"></span>
      </a>
    </div>
  </div>
</nav>


<header>
     <div class="page-header">
     			<br/>
                <h1>검색엔진</h1>
                <hr>
                <a href="#realsite" class="btn btn-primary btn-lg" role="button">검색사이트 이동</a>
        </div>
</header>

<section id="realsite">
<div class="row">
	  <div class="col-xs-6 col-md-3">
	    <a href="./daumReal.do" class="thumbnail">
	      <img src="http:///localhost:8080/test/resources/img/daum.png">
	    </a>
	  </div>
  
	<div class="col-xs-6 col-md-3">
	    <a href="./naverReal.do" class="thumbnail">
	      <img src="http:///localhost:8080/test/resources/img/naver.jpg">
	    </a>
	  </div>
  </div>
</section>


<section>

<div class="panel panel-success">
  <div class="panel-heading">
    <h3 class="panel-title"> ${engin} 실시간 검색 목록</h3>
  </div>
	
      <!-- Table -->
  <table class="table">
  
    <tr>
    	<th>순 위</th>
    	<th>검색어</th>
    </tr>
    
    <c:forEach items="${alist }" var="bean">
    <tr>
    	<td>${bean.rank }</td>
    	<td>${bean.word }</td>
    </tr>
    </c:forEach>
    
  </table>
  </div>

</section>





</body>
</html>