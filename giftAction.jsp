<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import = "java.util.*"%>
<%@ page import = "java.sql.*"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
    <!-- CSS STYLE -->
    <link rel="stylesheet" href="css/reset.css">
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="css/slick.css">
    <link rel="stylesheet" href="css/jobinfo.css">
    <link rel="stylesheet" href="css/bootstrap.css">
	<link rel="stylesheet" href="css/chatmain.css">
    <script src="https://kit.fontawesome.com/ee207e1a20.js" crossorigin="anonymous"></script>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Black+Han+Sans&display=swap');
    </style>

<link rel="stylesheet" href="owlcarousel/owl.carousel.css">
<script src="jquery.min.js"></script> 
<script src="owlcarousel/owl.carousel.min.js"></script>

<meta name="viewport" content="width=device-width, initial-scale=1.0">	
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

</head>
<body>
   <div id="wrap">
        <!-- header -->
        <div id="active_header">
            <div class="header">
                <nav class="navbar">
                    <div class="navbar_logo">
                        <i class="fas fa-user-graduate"></i>
                        <a href="index.jsp">MENTOS</a>
                    </div>

                    <ul class="navbar_menu">
                        <li><a href="">공지사항</a></li>
                        <li><a href="">커뮤니티</a></li>
                        <li><a href="">진로상담</a></li>
                        <li><a href="">전공질문</a></li>
                        <li><a href="">스터디</a></li>
                    </ul>


                    <ul class="navbar_myinfo">
                        <li><a href="">회원가입</a></li>

                        <li><a href="">마이페이지</a></li>
                    </ul>
                    
                    <% 

String userID = null;
if (session.getAttribute("userID") != null) {
	userID = (String) session.getAttribute("userID");
}

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

                    <a href="#" class="navbar_togleBtn">
                        <i class="fas fa-bars"></i>
                    </a>
                </nav>
            </div>
        </div>
        <!-- //header -->
        <div id="header">
            <div class="header-menu">
                <a href="">Designer</a>
                <a href="">Publisher</a>
            </div>
            <div class="header-tit">
                <h1>mentos in myongji</h1><br>
                <h3>www.mentos.com</h3>
            </div>
            <!-- //헤더 타이틀 -->
            <div class="header-icon">
                <a href="#" class="icon1"><span class="ir_pm">icon1</span></a>
                <a href="#" class="icon2"><span class="ir_pm">icon2</span></a>
                <a href="#" class="icon3"><span class="ir_pm">icon3</span></a>
                <a href="#" class="icon4"><span class="ir_pm">icon4</span></a>
            </div>
            <!--//헤더 아이콘-->
        </div>
        <!-- //header -->

        <div id="contents" style=height:100%;>
            <div id="cont_nav">
                <div class="container">
                    <h2 class="ir_su">전체 메뉴</h2>
                    <div class="list-container">
                        <div class="list">
                            <h3>이용 안내</h3>
                            <ol>
                                <li><a href="">공지사항</a></li>
                                <li><a href="">개인정보</a></li>
                            </ol>
                        </div>
                        <div class="list">
                            <h3>커뮤니티</h3>
                            <ol>
                                <li><a href="">자유게시판</a></li>
                                <li><a href="">학회 홍보</a></li>
                                <li><a href="">자유 채팅</a></li>
                            </ol>
                        </div>
                        <div class="list">
                            <h3>진로취업</h3>
                            <ol>
                                <li><a href="gettingJob.html" target="blank">취업정보</a></li>
                                <li><a href="">MIS로드맵</a></li>
                            </ol>
                        </div>
                        <div class="list">
                            <h3>이벤트&포인트</h3>
                            <ol>
                                <li><a href="">기프티콘 교환</a></li>
                            </ol>
                        </div>
                    </div>
                </div>
            </div>
            <!-- //cont_nav -->
            <div id="cont-tit">
                <div class="container">
                    <div class="tit">
                        <h2>"나는 멘토다"</h2>
                        <a href="" class='btn'><span class="ir_pm">전체메뉴</span></a>
                    </div>
                </div>
            </div>
            <!-- 기프트 -->
	
	<div class="gallery-section">
	<h1 style="padding-top:30px;">Point를 다양한 선물로 교환하세요!</h1>
		<%	
		Connection con = null;
		Statement stmt = null;
		ResultSet rs = null;
		String ID = userID;
		try{
			Class.forName("org.MySQL_code.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mentos?useSSL=false", "root", "@gh14041404");
			
			stmt = con.createStatement();
			String sql = "select userName from user where userID = '"+ID+"'";
			rs = stmt.executeQuery(sql);
			
			if(rs.next()){
				do{
					out.print("<h3>안녕하세요 "+rs.getString("userName")+"님</h3><br>");
				}while(rs.next());
			} else{
				out.print("결과가 없습니다.");
			}
			System.out.println("성공");
			
			con.close();
			
		} catch(SQLException e1){
			out.print(e1);
			System.out.println("실패");
		} catch(Exception e){
			out.print(e);
		}
		try{
			Class.forName("org.MySQL_code.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mentos?useSSL=false", "root", "@gh14041404");
			
			stmt = con.createStatement();
			String sql = "select userPoint from point where userID = '"+ID+"'";
			rs = stmt.executeQuery(sql);
			
			if(rs.next()){
				do{
					out.print("<h3>현재 포인트는  "+rs.getString("userPoint")+"점 입니다.</h3>");
				}while(rs.next());
			} else{
				out.print("결과가 없습니다.");
			}
			System.out.println("성공");
			
			con.close();
			
		} catch(SQLException e1){
			out.print(e1);
			System.out.println("실패");
		} catch(Exception e){
			out.print(e);
		}
	%>
	<div class="border"></div>
	
	<div class="slider owl-carousel">
		<div class="card">
			<div class="img"><img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTRz_ZlVr0EBAmN34mp3ufLWuO__8zx-SpYEg&usqp=CAU" alt=""></div>
			<div class="content">
				<div class="title">허니콤보 세트</div>
				<div class="sub-title">5000 point</div>
				<p></p>
				<div class="btn">
					<button>교환하기</button>
				</div>
			</div>
		</div>
	</div>
<%
int gift = 5000;
		try{
			Class.forName("org.MySQL_code.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mentos?useSSL=false", "root", "@gh14041404");
			
			stmt = con.createStatement();
			String sql = "select userPoint from point where userID = '"+ID+"'";
			rs = stmt.executeQuery(sql);
			
			if(rs.next()){
				do{
					int point = rs.getInt("userPoint");
					if(point < 5000){
						out.print("<script>");
						out.print("alert('포인트가 부족합니다.')");
						out.print("</script>");
						out.print("<script>");
						out.print("location.href='gift.jsp'");
						out.print("</script>");
					}
					else{
						try{
							int remainPoint = point-gift;
							Class.forName("org.MySQL_code.Driver");
							con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mentos?useSSL=false", "root", "@gh14041404");
							stmt = con.createStatement();
							String sql2 = "update point set userPoint = "+remainPoint+" where userID = '"+userID+"'";
							stmt.executeUpdate(sql2);
							
							out.print("<script>");
							out.print("alert('교환이 완료되었습니다.')");
							out.print("</script>");
							out.print("<script>");
							out.print("location.href='gift.jsp'");
							out.print("</script>");
						
						} catch(SQLException e1){
							out.print(e1);
							System.out.println("교환실패");
						} catch(Exception e){
							out.print(e);
						}
					}
				}while(rs.next());
			} else{
				out.print("결과가 없습니다.");
			}
			System.out.println("성공");
			
			con.close();
			
		} catch(SQLException e1){
			out.print(e1);
			System.out.println("실패");
		} catch(Exception e){
			out.print(e);
		}
		%>
		
			 <!-- 기프트 -->
            <div id="footer">
                <div class="container">
                    <h2 class="ir_su">푸터 영역</h2>
                    <div class="footer">
                        <ul>
                            <li><a href="#"><strong>[자바잡아조]</strong></a></li>
                            <li><a href="#">김동현</a></li>
                            <li><a href="#">민정오</a></li>
                            <li><a href="#">박연희</a></li>
                        </ul>
                    </div>
                </div>
            </div>
            <!-- //footer -->
        </div>
        <!-- //wrap -->
        <script src="js/main.js" defer></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script src="js/toggleBtn.js"></script>
        <!-- <script src="slick.min.js"></script> -->
        <script src="js/slick.js"></script>
	<script>
		$(".slider").owlCarousel({
			loop: true,
			autoplay: true,
			autoplayTimeout: 2000,
			autoplayHoverpause: true,
			
		});
		
	</script>
</body>
</html>