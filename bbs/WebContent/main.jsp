<%@page import="javax.security.auth.callback.ConfirmationCallback"%>
	<%@ page language="java" contentType="text/html; charset=UTF-8"
		pageEncoding="UTF-8"%>
	<%@ page import="java.io.PrintWriter"%>
	<%@ page import="bbs.BbsDAO"%>
	<%@ page import="bbs.Bbs"%>
	<%@ page import="java.util.ArrayList"%>
	<!DOCTYPE html>
	<html>
	<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<!-- 뷰포트 -->
	<meta name="viewport" content="width=device-width" initial-scale="1">
	<!-- 스타일시트 참조  -->
	<link rel="stylesheet" href="css/bootstrap.css">
	<title>jsp 게시판 웹사이트</title>
	<style type="text/css">
		a, a:hover {
			color: #000000;
			text-decoration: none;
		}
	</style>
	</head>
	<body>
		<%
			//로긴한사람이라면	 userID라는 변수에 해당 아이디가 담기고 그렇지 않으면 null값
			String userID = null;
			if (session.getAttribute("userID") != null) {
				userID = (String) session.getAttribute("userID");
	
			}
	
			int pageNumber = 1; //기본 페이지 넘버
	
			//페이지넘버값이 있을때
			if (request.getParameter("pageNumber") != null) {
				pageNumber = Integer.parseInt(request.getParameter("pageNumber"));
			}
		%>
	
	
		<!-- 네비게이션  -->
		<nav class="navbar navbar-default">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="bs-example-navbar-collapse-1"
					aria-expaned="false">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="main.jsp">JSP 게시판</a>
			</div>
			<div class="collapse navbar-collapse"
				id="#bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav">
					<li><a href="main.jsp">메인</a></li>
					<li class="active"><a href="bbs.jsp">게시판</a></li>
				</ul>
	
	
				<%
					//라긴안된경우
					if (userID == null) {
				%>
				<ul class="nav navbar-nav navbar-right">
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown" role="button" aria-haspopup="true"
 
						aria-expanded="false">접속하기<span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="login.jsp">로그인</a></li>
							<li><a href="join.jsp">회원가입</a></li>
						</ul></li>
				</ul>
				<%
					} else {
				%>
				<ul class="nav navbar-nav navbar-right">
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown" role="button" aria-haspopup="true"
						aria-expanded="false">회원관리<span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="logoutAction.jsp">로그아웃</a></li>
						</ul></li>
				</ul>
				<%
					}
				%>
			</div>
		</nav>

				<!-- 회원만넘어가도록 -->
				<%
					//if logined userID라는 변수에 해당 아이디가 담기고 if not null
					if (session.getAttribute("userID") != null) {
				%>
				<a href="write.jsp" class="btn btn-primary pull-right">글쓰기</a>
				<%
					} else {
				%>
				<button class="btn btn-primary pull-right"
					onclick="if(confirm('로그인 하세요'))location.href='login.jsp';"
					type="button">글쓰기</button>
				<%
					}
				%>
	
	<iframe width="1168" height="657" src="https://www.youtube.com/embed/P94SfHo2Gts" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
	
	
	
		<!-- 애니매이션 담당 JQUERY -->
		<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
		<!-- 부트스트랩 JS  -->
		<script src="js/bootstrap.js"></script>
	
	</body>
	</html>
