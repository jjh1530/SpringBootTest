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
  
  
  
	<div class="hero">
	<div class="container">
	<h5 class="card-header bg-primary text-white">문의 글 작성</h5>
    <div class="panel-body">
     <form id="form1" name="form1" class="form-horizontal" method="post" enctype="multipart/form-data">
		 <div class="bg-light rounded h-100 p-4">
					<div class="form-group">
						<label class="control-label col-sm-2" for="title">제목 :</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="title" name="title"
								placeholder="제목을 입력하세요">
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-sm-2" for="content">내용 :</label>
						<div class="col-sm-10">
							<textarea class="form-control" id="content" name="content"
								placeholder="내용을 입력하세요" rows="5"></textarea>
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-sm-2" for="writer">작성자 :</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="writer" name="writer"
								 style="width: 50%;" value=${user.userid }>
						</div>
					</div>
					<!-- 수정 -->
					<div class="form-group">
					<label class="control-label col-sm-2" for="uploadFile">첨부파일 :</label>
						<div class="col-sm-10">
							<input multiple="multiple" type="file" id="file"name="file" style="width: 50%">
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-sm-2" for="boardpass">게시글 비밀번호 :</label>
						<div class="col-sm-10">
							<input type="password" class="form-control" id="boardpass" name="boardpass" onkeyup="passwordCheck();"
								placeholder="비밀번호를 입력하세요">
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-sm-2" for="boardpass2">비밀번호 확인 :</label>
						<div class="col-sm-10">
							<input type="password" class="form-control" id="boardpass2" name="boardpass2" onkeyup="passwordCheck();"
								placeholder="비밀번호를 입력하세요">
						</div>
					</div>
					<div style="text-align: center;">
						<input type="button" value="등록" id="btn_add" name="btn_add"class='btn btn-primary' /> 
						<input type="button" value="리스트" onclick="location.href='/'"class='btn btn-success' />
					</div>
					<div>
					   <span>비밀번호는 필수 입력이 아닙니다.</span><br>
		      	       <span id="passMessage" style="color:red;"></span>
					</div>
				  </div>
				</form>
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
	</script>

	<script src="/resources/js/custom.js"></script>
	<script>
	 $(function() {
			
			$("#btn_add").click(function(){
				
				//var email_rule =  /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
				
				var title = $.trim($("#title").val());
				var content = $.trim($("#content").val());
				var writer = $.trim($("#writer").val());
				var boardpass =  $.trim($("#boardpass").val());
				var boardpass2 =  $.trim($("#boardpass2").val());
				
				if(title == "") {
					alert("제목을 입력해주세요.");	
					$("#title").focuse();
					return false;
				}
				
				if(content == "") {
					alert("내용을 입력해주세요.");	
					$("#content").focuse();
					return false;
				}
				
				if(writer == "") {
					alert("이름을 입력해주세요.");	
					$("#writer").focuse();
					return false;
				}
				 
				  if (boardpass != boardpass2) {
					  alert("비밀번호가 다릅니다.")	
						return false;
				}
				  
				  document.form1.action="<c:url value='/board/write'/>"; 
				  document.form1.submit();
				
			});
		});
	 
	 
	  function passwordCheck() {
			var boardpass = $("#boardpass").val();
			var boardpass2 = $("#boardpass2").val();
			if (boardpass != boardpass2) {
				$("#passMessage").html("비밀번호가 일치하지 않습니다.");
			}else {
				$("#passMessage").html("");
			}		
		}
	</script>
</body>
</html>