<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.io.PrintWriter" %>
    <% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="../css/bootstrap.css">
<link rel="stylesheet" href="../css/communityMain.css">
<script src="https://kit.fontwesome.com/a076d05399.js"></script>
<title>커뮤니티 메인화면</title>
</head>
<body>
	<%
		String userID = null;
		if (session.getAttribute("userID") != null) {
			userID = (String) session.getAttribute("userID");
		}
	
	%>

	<nav class="navbar navbar-default">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
					aria-expanded="false">
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					
			</button>
			<a class="navbar-brand" href="../index.jsp">멘토스</a>
		</div>
		<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav">
				<li class="active"><a href="main.isp">커뮤니티 메인</a></li>
				<li><a href="bbs.jsp">자유게시판</a></li>
				<li><a href="chatmain.jsp">채팅방</a></li>
				<li><a href="study.jsp">스터디</a></li>
				<li><a href="notice.jsp">공지사항</a></li>
			</ul>
			<% 
				if(userID == null) {
			%>
			<ul class="nav navbar-nav navbar-right">
				<li class="dropdown">
					<a href="#" class="dropdown-toggle"
						data-toggle="dropdown" role="button" aria-haspopup="true"
						aria-expanded="false">접속하기<span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="../login.jsp">로그인</a></li>
						<li><a href="../join.jsp">회원가입</a></li>
					</ul>
				</li>
			</ul>
			<%
				} else {
			%>
			<ul class="nav navbar-nav navbar-right">
				<li class="dropdown">
					<a href="#" class="dropdown-toggle"
						data-toggle="dropdown" role="button" aria-haspopup="true"
						aria-expanded="false">로그아웃하기<span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="logoutAction.jsp">로그아웃</a></li>
					</ul>
				</li>
			</ul>
			<%
				}
			%>
		</div>
	</nav>
	
	<div class= "container">
		<div class="jumbotron"> 
			<div class="container">
				<h1>커뮤니티 소개</h1>
				<p>커뮤니티의 자유게시판에서는 자유롭게 생각과 의견 및 정보를 공유할 수 있고, 채팅방에서는 여러분이 멘토와 다른 멘티들과 함께 대화를 나눌 수 있습니다. 그리고 스터디에서는 멘티분들이 함께 모여 스터디모임을 가질 수 있습니다.</p>
				<p><a  class="btn btn-primary btn-pull" href="#" role="button">참여하기</a></p>
				
			</div>
		</div>
	</div>
    

<div class="gallery-section">
	<%--자유게시판 --%>
	<div class="wrapper">
		<div class="table basic">
			<div class="price-section">
				<div class="price-area">
					<div class="inner-area">
						<span class="text">1</span>
						<span class="price">자유게시판</span>
					</div>
				</div>
			</div>
			<div class="package-name">기능</div>
			<div class="features">
				<li>
					<span class="list-name">자유로운 의견 공유</span>
					<span class="icon check"><i class="fas fa-check"></i></span>
				</li>
				<li>
					<span class="list-name">자신만의 꿀팁방출</span>
					<span class="icon check"><i class="fas fa-check"></i></span>
				</li>
				<li>
					<span class="list-name">서로가 서로의 멘토</span>
					<span class="icon check"><i class="fas fa-check"></i></span>
				</li>
				<li>
					<span class="list-name">아이디어 공유</span>
					<span class="icon check"><i class="fas fa-check"></i></span>
				</li>
				
			</div>
			<a href="bbs.jsp"><div class="btn" ><button>바로가기</button></div></a>
		</div>
		<%--채팅방 --%>
		<div class="table premium">
			<div class="price-section">
				<div class="price-area">
					<div class="inner-area">
						<span class="text">2</span>
						<span class="price">채팅방</span>
					</div>
				</div>
			</div>
			<div class="package-name">기능</div>
			<div class="features">
				<li>
					<span class="list-name">멘토와 1:1 대화</span>
					<span class="icon check"><i class="fas fa-check"></i></span>
				</li>
				<li>
					<span class="list-name">멘토에게 자유로운 질의응답</span>
					<span class="icon check"><i class="fas fa-check"></i></span>
				</li>
				<li>
					<span class="list-name">멘토의 실시간 답변</span>
					<span class="icon check"><i class="fas fa-check"></i></span>
				</li>
				<li>
					<span class="list-name">채팅방 간 자유로운 이동</span>
					<span class="icon check"><i class="fas fa-check"></i></span>
				</li>
				
			</div>
			<a href="chatmain.jsp"><div class="btn" ><button>바로가기</button></div></a>
		</div>
		<%--스터디 --%>
		<div class="table ultimate">
			<div class="price-section">
				<div class="price-area">
					<div class="inner-area">
						<span class="text">3</span>
						<span class="price">스터디</span>
					</div>
				</div>
			</div>
			<div class="package-name">기능</div>
			<div class="features">
				<li>
					<span class="list-name">다양한 스터디 그룹</span>
					<span class="icon check"><i class="fas fa-check"></i></span>
				</li>
				<li>
					<span class="list-name">자유로운 스터디 가입</span>
					<span class="icon check"><i class="fas fa-check"></i></span>
				</li>
				<li>
					<span class="list-name">온라인 모임</span>
					<span class="icon check"><i class="fas fa-check"></i></span>
				</li>
				<li>
					<span class="list-name">스터디 내력 확인</span>
					<span class="icon check"><i class="fas fa-check"></i></span>
				</li>
				
				
			</div>
			<a href="study.jsp"><div class="btn" ><button>바로가기</button></div></a>
		</div>
	
	</div>
	</div>
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="../js/bootstrap.js"></script>




</body>
</html>