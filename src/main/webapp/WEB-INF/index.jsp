<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<link rel="stylesheet" href="/resources/css/bootstrap.min.css">
	<link rel="stylesheet" href="/resources/css/owl.carousel.min.css">
	<link rel="stylesheet" href="/resources/css/owl.theme.default.min.css">
	<link rel="stylesheet" href="/resources/css/jquery.fancybox.min.css">
	<link rel="stylesheet" href="/resources/css/daterangepicker.css">
	<link rel="stylesheet" href="/resources/css/aos.css">
	<link rel="stylesheet" href="/resources/css/style.css">

	<title>Tour Free Bootstrap Template for Travel Agency by Untree.co</title>
</head>
<body>
	<div class="site-mobile-menu site-navbar-target">
		<div class="site-mobile-menu-header">
			<div class="site-mobile-menu-close">
				<span class="icofont-close js-menu-toggle"></span>
			</div>
		</div>
		<div class="site-mobile-menu-body"></div>
	</div>

	<div class="site-mobile-menu site-navbar-target">
    <div class="site-mobile-menu-header">
      <div class="site-mobile-menu-close">
        <span class="icofont-close js-menu-toggle"></span>
      </div>
    </div>
    <div class="site-mobile-menu-body"></div>
  </div>

  <nav class="site-nav">
    <div class="container">
      <div class="site-navigation">
        <a href="index.html" class="logo m-0">Tour <span class="text-primary">.</span></a>

        <ul class="js-clone-nav d-none d-lg-inline-block text-left site-menu float-right">
          <li class="active"><a href="/">Home</a></li>
          <li class="has-children">
            <a href="#">Dropdown</a>
            <ul class="dropdown">
              <li><a href="elements.html">Elements</a></li>
              <li><a href="#">Menu One</a></li>
              <li class="has-children">
                <a href="#">Menu Two</a>
                <ul class="dropdown">
                  <li><a href="#">Sub Menu One</a></li>
                  <li><a href="#">Sub Menu Two</a></li>
                  <li><a href="#">Sub Menu Three</a></li>
                </ul>
              </li>
              <li><a href="#">Menu Three</a></li>
            </ul>
          </li>
          <li><a href="services.html">Services</a></li>
          <li><a href="about.html">About</a></li>
          <li class="active"><a href="contact.html">Contact Us</a></li>
        </ul>

        <a href="#" class="burger ml-auto float-right site-menu-toggle js-menu-toggle d-inline-block d-lg-none light" data-toggle="collapse" data-target="#main-navbar">
          <span></span>
        </a>

      </div>
    </div>
  </nav>


  <div class="hero hero-inner">
    <div class="container">
      <div class="row align-items-center">
        <div class="col-lg-6 mx-auto text-center">
          <div class="intro-wrap">
            <h1 class="mb-0">Main</h1>
            <p class="text-white">Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. </p>
          </div>
        </div>
      </div>
    </div>
  </div>

  
  
  <div class="untree_co-section">
  
  	<div class="container" >	
       <table> 
		 	<tr>
			<th style="padding-right: 10px; width:15%">
			 <select class="form-control form-cotrol-sm" name="searchType" id="searchType">
						<option value="title">제목</option>
						<option value="content">내용</option>
			</select>
			</th>
			
			<th style="padding-right: 10px; width: 50%;">
				<input type="text" class="form-control form-control-sm" name="keyword" id="keyword">
			</th>
			
			<th style="text-align:left; width:10%;">
				<button class="btn btn-success" name="btnSearch" id="btnSearch" onclick="btnSearch" style="padding: 10px;"  >
				검색</button>
			</th>
			<th style="padding-right: 10px;">
			<button type="button"  class="btn btn-primary"  onclick="location='board/write'">글쓰기</button>
			</th>
			</tr>
		</table>
		
		</div>
    <div class="container">
      <table class="table card-table">
			<thead>
				<tr>
					<th>번호</th>
					<th>제목</th>
					<th>작성자</th>
					<th>작성일</th>
				</tr>
			</thead>
			
			<tbody class="table-border-bottom-0">
			  <c:forEach var="result" items="${list }" varStatus="loop">
				<tr>
					<td>${result.idx }</td>
					<td><a href="/board/detail?idx=${result.idx }">${result.title }</a></td>
					<td>${result.writer }</td>
					<td>${result.indate }</td>
				</tr>
			  </c:forEach>
			</tbody>
			
		</table>
		
		<!-- 페이징 -->
 		<div class="container">
		<div id="paginationBox" class="text-center">
			<ul class="pagination" style="justify-content: center; ">
			
				<c:if test="${pagination.prev }">
					<li class="page-item"><a class="page-link" href="#" onclick="fn_prev('${pagination.page }','${pagination.range }', '${pagination.rangeSize }','${pagination.listSize }'
					,'${search.searchType }', '${search.keyword}')">이전</a>
				</li></c:if>
				<c:forEach begin="${pagination.startPage }" end="${pagination.endPage}" var="title">
					<li class='page-item <c:out value="${pagination.page ==  title ? 'active' : ''}"/> '>
					<a class="page-link" href="#" onclick="fn_pagination('${title }', '${pagination.range }','${paginationf.rangeSize }',
						'${pagination.listSize }','${search.searchType}','${search.keyword }')">
						${title}</a></li>
				</c:forEach>	
				
				<c:if test="${pagination.next }">
					<li class="page-item"><a class="page-link" href="#" onclick="fn_next('${pagination.page }','${pagination.range }', '${pagination.rangeSize }',
						'${pagination.listSize }','${search.searchType }', '${search.keyword}')">다음</a>
					</li>
				</c:if>
			
			</ul>
		</div> 
		</div>
		<!-- 페이징 종료 -->
      </div>
    </div>
  </div>

  



  <div class="site-footer">
    <div class="inner first">
      <div class="container">
        <div class="row">
          <div class="col-md-6 col-lg-4">
            <div class="widget">
              <h3 class="heading">About Tour</h3>
              <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
            </div>
            <div class="widget">
              <ul class="list-unstyled social">
                <li><a href="#"><span class="icon-twitter"></span></a></li>
                <li><a href="#"><span class="icon-instagram"></span></a></li>
                <li><a href="#"><span class="icon-facebook"></span></a></li>
                <li><a href="#"><span class="icon-linkedin"></span></a></li>
                <li><a href="#"><span class="icon-dribbble"></span></a></li>
                <li><a href="#"><span class="icon-pinterest"></span></a></li>
                <li><a href="#"><span class="icon-apple"></span></a></li>
                <li><a href="#"><span class="icon-google"></span></a></li>
              </ul>
            </div>
          </div>
          <div class="col-md-6 col-lg-2 pl-lg-5">
            <div class="widget">
              <h3 class="heading">Pages</h3>
              <ul class="links list-unstyled">
                <li><a href="#">Blog</a></li>
                <li><a href="#">About</a></li>
                <li><a href="#">Contact</a></li>
              </ul>
            </div>
          </div>
          <div class="col-md-6 col-lg-2">
            <div class="widget">
              <h3 class="heading">Resources</h3>
              <ul class="links list-unstyled">
                <li><a href="#">Blog</a></li>
                <li><a href="#">About</a></li>
                <li><a href="#">Contact</a></li>
              </ul>
            </div>
          </div>
          <div class="col-md-6 col-lg-4">
            <div class="widget">
              <h3 class="heading">Contact</h3>
              <ul class="list-unstyled quick-info links">
                <li class="email"><a href="#">mail@example.com</a></li>
                <li class="phone"><a href="#">+1 222 212 3819</a></li>
                <li class="address"><a href="#">43 Raymouth Rd. Baltemoer, London 3910</a></li>
              </ul>
            </div>
          </div>
        </div>
      </div>
    </div>



    <div class="inner dark">
      <div class="container">
        <div class="row text-center">
          <div class="col-md-8 mb-3 mb-md-0 mx-auto">
            <p>Copyright &copy;<script>document.write(new Date().getFullYear());</script>. All Rights Reserved. &mdash; Designed with love by <a href="https://untree.co" class="link-highlight">Untree.co</a> <!-- License information: https://untree.co/license/ --> Distributed By <a href="https://themewagon.com" target="_blank" >ThemeWagon</a>
            </p>
          </div>
          
        </div>
      </div>
    </div>
  </div>

	<div id="overlayer"></div>
	<div class="loader">
		<div class="spinner-border" role="status">
			<span class="sr-only">Loading...</span>
		</div>
	</div>

	<script src="/resources/js/jquery-3.4.1.min.js"></script>
	<script src="/resources/js/popper.min.js"></script>
	<script src="/resources/js/bootstrap.min.js"></script>
	<script src="/resources/js/owl.carousel.min.js"></script>
	<script src="/resources/js/jquery.animateNumber.min.js"></script>
	<script src="/resources/js/jquery.waypoints.min.js"></script>
	<script src="/resources/js/jquery.fancybox.min.js"></script>
	<script src="/resources/js/aos.js"></script>
	<script src="/resources/js/moment.min.js"></script>
	<script src="/resources/js/daterangepicker.js"></script>

	<script src="/resources/js/typed.js"></script>
<script>
function fn_prev(page, range, rangeSize, listSize, searchType, keyword) {
	
	var page = ((range - 2) * rangeSize) + 1;
	var range = range - 1;
	var url = "/";
	url += "?page=" + page;
	url += "&range=" + range;
	url += "&listSize=" + listSize;
	url += "&searchType=" + searchType;
	url += "&keyword=" + keyword;
	location.href= url;
}

function fn_pagination(page, range, rangeSize, listSize, searchType, keyword) {
	var url = "/";
		url += "?page=" + page;
		url += "&range=" + range;
		url += "&listSize=" + listSize;
		url += "&searchType=" + searchType;
		url += "&keyword=" + keyword;
		location.href= url;
}

function fn_next(page, range, rangeSize, listSize, searchType, keyword) {
	
	var page = parseInt((range * rangeSize)) +1;
	var range = parseInt(range) +1;
	var url = "/";
	url += "?page=" + page;
	url += "&range=" + range;
	url += "&listSize=" + listSize;
	url += "&searchType=" + searchType;
	url += "&keyword=" + keyword;
	location.href= url;
}
$(document).on('click','#btnSearch',function(e){
	e.preventDefault();
	var url = "/";
	url += "?searchType=" + $('#searchType').val();
	url += "&keyword=" + $('#keyword').val();
	location.href = url;
	console.log(url);
});
</script>

	<script src="/resources/js/custom.js"></script>

</body>
</html>