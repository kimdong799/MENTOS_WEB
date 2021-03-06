<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ page import = "java.util.*"%>
	<%@ page import = "java.sql.*"%>
	  <%@ page import="java.io.PrintWriter" %>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>MENTOS</title>

    <!-- CSS STYLE -->
    <link rel="stylesheet" href="css/reset.css">
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="css/slick.css">


    <script src="https://kit.fontawesome.com/ee207e1a20.js" crossorigin="anonymous"></script>
	
    <style>
    
        @import url('https://fonts.googleapis.com/css2?family=Black+Han+Sans&display=swap');
    </style>

</head>

<body>

    <!-- 스킵 네비게이션  -->
    <!-- <div id="skip">
        <a href="#cont_nav">전체 메뉴 바로가기</a>
        <a href="#cont_ban">배너 영역 바로가기</a>
        <a href="#cont_cont">컨텐츠 영역 바로가기</a>
    </div> -->
    <!-- //스킵 네비게이션 -->

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
                        <li><a href="community/notice.jsp">공지사항</a></li>
                        <li><a href="community/index.jsp">커뮤니티</a></li>
                        <li><a href="community/bbs.jsp">자유게시판</a></li>
                        <li><a href="community/study.jsp">스터디</a></li>
                        <li><a href="gettingJob.jsp">취업정보</a></li>
                        <li><a href="gift.jsp">선물교환</a></li>
                    </ul>


                    <ul class="navbar_myinfo">
                        <li><a href="join.jsp">회원가입</a></li>
                        <!-- <li><a href="../../login.jsp">로 그 인</a></li> -->
                        <li><a href="mypage.jsp">마이페이지</a></li>
                    </ul>
<% 

String userID = null;
if (session.getAttribute("userID") != null) {
	userID = (String) session.getAttribute("userID");
}


				if(userID == null) {
			%>
					<ul class="dropdown-menu">
						<li><a href="login.jsp">로그인</a></li>
					</ul>


			<%
				} else {
			%>
			<ul class="nav navbar-nav navbar-right">
				<li class="dropdown">
					<ul class="dropdown-menu">
						<li><a href="community/logoutAction.jsp">로그아웃</a></li>
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

        <div id="contents">
            <div id="cont_nav">
                <div class="container">
                    <h2 class="ir_su">전체 메뉴</h2>
                    <div class="list-container">
                        <div class="list">
                            <h3>이용 안내</h3>
                            <ol>
                                <li><a href="community/notice.jsp">공지사항</a></li>
                                <li><a href="mypage.jsp">개인정보</a></li>
                            </ol>
                        </div>
                        <div class="list">
                            <a href="community/index.jsp"><h3>커뮤니티</h3></a>
                            <ol>
                                <li><a href="community/bbs.jsp">자유게시판</a></li>
                                <li><a href="community/study.jsp">학회 홍보</a></li>
                                <li><a href="community/chatmain.jsp">자유 채팅</a></li>
                            </ol>
                        </div>
                        <div class="list">
                            <h3>진로취업</h3>
                            <ol>
                                <li><a href="gettingJob.jsp" target="blank">취업정보</a></li>
                                
                            </ol>
                        </div>
                        <div class="list">
                            <h3>이벤트&포인트</h3>
                            <ol>
                                <li><a href="gift.jsp">기프티콘 교환</a></li>
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
            <!-- //cont_tit -->
            <div id="cont_ban">
                <div class="container">
                    <div class="ban">

                        <!-- <a href="#" class="prev"><span class="ir_pm"> 이전 이미지</span></a>
                        <ul>
                            <li class="ban_img1"><a href="#"><img src="../img/erp.jpg" alt="배너 이미지 1"></a></li>
                            <li class="ban_img2"><a href="#"><img src="img/빅데이터.jpg" alt="배너 이미지 2"></a></li>
                            <li class="ban_img3"><a href="#"><img src="img/management.jpg" alt="배너 이미지 3"></a></li>
                        </ul>
                        <a href="#" class="next"><span class="ir_pm">다음 이미지</span></a> -->

                        <div><a href="#"><img src="img/mju1.jpg" alt="배너 이미지 1"></a></div>
                        <div><a href="#"><img src="img/mju2.jpg" alt="배너 이미지 2"></a></div>
                        <div><a href="#"><img src="img/mju3.jpg" alt="배너 이미지 3"></a></div>
                        <div><a href="#"><img src="img/mju4.jpg" alt="배너 이미지 3"></a></div>
                        <div><a href="#"><img src="img/mju5.jpg" alt="배너 이미지 3"></a></div>
                        <div><a href="#"><img src="img/mju6.jpg" alt="배너 이미지 3"></a></div>
                        <div><a href="#"><img src="img/mju7.jpg" alt="배너 이미지 3"></a></div>

                    </div>
                </div>
            </div>
            <!-- //cont_ban -->
            <div id="cont_cont">
                <div class="container">
                    <div class="cont">
                        <div class="column col1">
                            <h3><span class="ico_img ir_pm">아이콘</span><span class="ico_tit">Notice</span></h3>
                            <p class="ico_desc">WELCOME MENTOS<br>공지를 확인해주세요!</p>
                            <!-- 탭메뉴1 -->
                            <div class="tab_menu">
                                <h4 class="ir_su">공지사항</h4>
                                <ul>
                                    <li class="active"><a href="#"> 공지사항1</a>
                                        <ul>
                                            <li><a href="community/notice.jsp">
                                            <%
                                         	
                                    		Connection con = null;
                                    		Statement stmt = null;
                                    		ResultSet rs = null;
                                    		try{
                                    			Class.forName("org.MySQL_code.Driver");
                                    			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mentos?useSSL=false", "root", "@gh14041404");
                                    			
                                    			stmt = con.createStatement();
                                    			String sql = "select noticeTitle from notice where noticeID=1";
                                    			rs = stmt.executeQuery(sql);
                                    			
                                    			if(rs.next()){
                                    				do{
                                    					out.print(rs.getString("noticeTitle"));
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
                                   
                                            </a></li>
                                            <li><a href="community/notice.jsp">
                                             <%
                                    		try{
                                    			Class.forName("org.MySQL_code.Driver");
                                    			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mentos?useSSL=false", "root", "@gh14041404");
                                    			
                                    			stmt = con.createStatement();
                                    			String sql = "select noticeTitle from notice where noticeID=3";
                                    			rs = stmt.executeQuery(sql);
                                    			
                                    			if(rs.next()){
                                    				do{
                                    					out.print(rs.getString("noticeTitle"));
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
                                            </a></li>
                                            <li><a href="community/notice.jsp">
                                                <%
                                    		try{
                                    			Class.forName("org.MySQL_code.Driver");
                                    			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mentos?useSSL=false", "root", "@gh14041404");
                                    			
                                    			stmt = con.createStatement();
                                    			String sql = "select noticeTitle from notice where noticeID=2";
                                    			rs = stmt.executeQuery(sql);
                                    			
                                    			if(rs.next()){
                                    				do{
                                    					out.print(rs.getString("noticeTitle"));
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
                                            </a></li>
                                        </ul>
                                    </li>
                                    </li>
                                    <li><a href="#"> 공지사항2</a>
                                        <ul>
                                            <li><a href="community/notice.jsp">두 번째 공지사항 탭 메뉴 테스트 목록입니다.</a></li>
                                            <li><a href="community/notice.jsp">두 번째 공지사항 탭 메뉴 테스트 목록입니다.</a></li>
                                            <li><a href="community/notice.jsp">두 번째 공지사항 탭 메뉴 테스트 목록입니다.</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="#"> 공지사항3</a>
                                        <ul>
                                            <li><a href="#">세 번째 공지사항 탭 메뉴 테스트 목록입니다.</a></li>
                                            <li><a href="#">세 번째 공지사항 탭 메뉴 테스트 목록입니다.</a></li>
                                            <li><a href="#">세 번째 공지사항 탭 메뉴 테스트 목록입니다.</a></li>
                                        </ul>
                                    </li>
                                </ul>
                            </div>
                            <!-- 탭메뉴2 -->
                            <div class="notice4 mt15">
                                <h4>최신 <em>공지사항</em></h4>
                                <ul>
                                    <li><a href="#">    <%
                                    		try{
                                    			Class.forName("org.MySQL_code.Driver");
                                    			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mentos?useSSL=false", "root", "@gh14041404");
                                    			
                                    			stmt = con.createStatement();
                                    			String sql = "select noticeTitle from notice where noticeID=3";
                                    			rs = stmt.executeQuery(sql);
                                    			
                                    			if(rs.next()){
                                    				do{
                                    					out.print(rs.getString("noticeTitle"));
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
                                    		
                                    	%></a><span>2018.11.19</span></li>
                                    <li><a href="#">    <%
                                    		try{
                                    			Class.forName("org.MySQL_code.Driver");
                                    			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mentos?useSSL=false", "root", "@gh14041404");
                                    			
                                    			stmt = con.createStatement();
                                    			String sql = "select noticeTitle from notice where noticeID=3";
                                    			rs = stmt.executeQuery(sql);
                                    			
                                    			if(rs.next()){
                                    				do{
                                    					out.print(rs.getString("noticeTitle"));
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
                                    		
                                    	%></a><span>2018.11.19</span></li>
                                    <li><a href="#">    <%
                                    		try{
                                    			Class.forName("org.MySQL_code.Driver");
                                    			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mentos?useSSL=false", "root", "@gh14041404");
                                    			
                                    			stmt = con.createStatement();
                                    			String sql = "select noticeTitle from notice where noticeID=3";
                                    			rs = stmt.executeQuery(sql);
                                    			
                                    			if(rs.next()){
                                    				do{
                                    					out.print(rs.getString("noticeTitle"));
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
                                    		
                                    	%></a><span>2018.11.19</span></li>
                                </ul>
                                <a href="community/notice.jsp" class="more" title="더보기">더보기</a>
                            </div>
                            <!-- //게시판 -->
                            <!-- 게시판2 -->

                            <!-- //게시판2 -->
                        </div>
                        <!-- // col1-->
                        <div class="column col2">
                            <h3><span class="ico_img  ir_pm">아이콘</span><span class="ico_tit">Notice</span></h3>
                            <p class="ico_desc">경영정보학과의 학회를 소개합니다.</p>
                            <!-- 게시판3 -->
                            <div class="notice3">
                                <h4 class="ir_su">학회 소개</h4>
                                <ul>
                                    <li>
                                        <a href="community/study.jsp">
                                            <img src="img/notice01.jpg" alt="학회이미지1">
                                            <strong>[학회] COIN</strong>
                                            <span>COIN학회는 데이터 분석 및 시각화, 머신러닝을 연구하는 학회입니다.</span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="community/study.jsp">
                                            <img src="img/notice02.jpg" alt="학회이미지2">
                                            <strong>[학회] ERP</strong>
                                            <span>ERP학회는 SAP ERP를 통해 각 모듈과 ABAP을 연구하는 학회입니다.</span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="community/study.jsp">
                                            <img src="img/notice03.jpg" alt="학회이미지3">
                                            <strong>[학회] MAD</strong>
                                            <span>MAD학회는 안드로이드 앱 개발을 위한 안드로이드 스튜디오를 연구하는 학회입니다.</span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="community/study.jsp">
                                            <img src="img/notice04.jpg" alt="학회이미지3">
                                            <strong>[학회] APPS</strong>
                                            <span>APPS학회는 첨단 프로세스 연구학회로써 프로세스 마이닝과 더불어 RPA를 통한 프로세스 혁신을 연구합니다.</span>
                                        </a>
                                    </li>
                                </ul>
                                <a href="community/study.jsp" class="more ir_pm" title="더보기">더보기</a>
                            </div>
                            <!-- //게시판3 -->
                        </div>
                        <!-- // col2-->
                        <div class="column col3">
                            <h3><span class="ico_img  ir_pm">아이콘</span><span class="ico_tit">Notice</span></h3>
                            <p class="ico_desc">MIS 최고의 선배들을 만나보세요!</p>
                            <div class="notice3">
                                <h4 class="ir_su">학회 소개</h4>
                                <ul>
                                    <li>
                                        <a href="community/chatmain.jsp">
                                            <img src="images/1.png" alt="학회이미지1" style="width:50px; height:50px;">
                                            <strong>[멘토] 홍삼성</strong>
                                            <span>홍삼성 선배의 디지털마케팅 성공신화!</span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="community/chatmain.jsp">
                                            <img src="images/2.png" alt="학회이미지2" style="width:50px; height:50px;">
                                            <strong>[멘토] 이엘지</strong>
                                            <span>이엘지 선배의 ERP CO모듈 공부방법!</span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="community/chatmain.jsp">
                                            <img src="images/3.png" alt="학회이미지3" style="width:50px; height:50px;">
                                            <strong>[멘토] 김롯데</strong>
                                            <span>김롯데 선배의 데이터사이언스 취업스토리!</span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="community/chatmain.jsp">
                                            <img src="images/4.png" alt="학회이미지3" style="width:50px; height:50px;">
                                            <strong>[멘토] 박이웃</strong>
                                            <span>박이웃 선배가 추천하는 앱개발자 로드맵!</span>
                                        </a>
                                    </li>
                                </ul>
                                <a href="community/chatmain.jsp" class="more ir_pm" title="더보기">더보기</a>
                            </div>
                        </div>

                        <!-- // col3-->
                        <div class="column col4">
                           <a href="gettingJob.jsp"> <h3><span class="ico_img  ir_pm">아이콘</span><span class="ico_tit">Notice</span></h3></a>
                            <a href="gettingJob.jsp"><p class="ico_desc">2020년 11월 취업공고</p></a>
                            <!-- 오버 효과 -->
                            <div class="notice_hover">
                                <a href="gettingJob.jsp"><h4>취업 정보</h4></a>
                                <ul>
                                    <li>
                                        <a href="gettingJob.jsp">
                                            <span><img src="img/네이버.png" alt="취업정보1"><em>지원하기</em></span>
                                            <strong>NAVER</strong>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="gettingJob.jsp">
                                            <span><img src="img/우아한형제들.png" alt="취업정보2" ><em>지원하기</em></span>
                                            <strong>우아한형제들</strong>
                                        </a>
                                    </li>
                                    <li class="job_info1">
                                        <a href="gettingJob.jsp">
                                            <span><img src="img/한국콜마.jpg" alt="취업정보3"><em>지원하기</em></span>
                                            <strong>한국콜마</strong>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="gettingJob.jsp">
                                            <span><img src="img/현대글로비스.png" alt="취업정보2"><em>지원하기</em></span>
                                            <strong>현대글로비스</strong>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="gettingJob.jsp">
                                            <span><img src="img/쿠팡.jpg" alt="취업정보2"><em>지원하기</em></span>
                                            <strong>쿠팡</strong>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="gettingJob.jsp">
                                            <span><img src="img/시큐아이.png" alt="취업정보2"><em>지원하기</em></span>
                                            <strong>시큐아이</strong>
                                        </a>
                                    </li>
                                </ul>
                            </div>
                            <!-- //오버효과 -->
                        </div>
                        <!-- // col4-->
                        <div class="column col5">
                            <h3><span class="ico_img  ir_pm">아이콘</span><span class="ico_tit">Notice</span></h3>
                            <p class="ico_desc">MENTOS 자유게시판입니다.<br>자유롭게 작성해주세요.</p>
                            <div class="notice2">
                                <h4>자유게시판</h4>
                                <ul>
                                <%
                                try{
                        			Class.forName("org.MySQL_code.Driver");
                        			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mentos?useSSL=false", "root", "@gh14041404");
                        			
                        			stmt = con.createStatement();
                        			String sql = "select bbsTitle from bbs where bbsID=1";
                        			rs = stmt.executeQuery(sql);
                        			
                        			if(rs.next()){
                        				do{
                        					out.print("<li><a href='#'>");
                        					out.print(rs.getString("bbsTitle"));
                        					out.print("</a><span>2018.11.16</span></li>");
                        					
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
                                 <%
                                try{
                        			Class.forName("org.MySQL_code.Driver");
                        			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mentos?useSSL=false", "root", "@gh14041404");
                        			
                        			stmt = con.createStatement();
                        			String sql = "select bbsTitle from bbs where bbsID=2";
                        			rs = stmt.executeQuery(sql);
                        			
                        			if(rs.next()){
                        				do{
                        					out.print("<li><a href='#'>");
                        					out.print(rs.getString("bbsTitle"));
                        					out.print("</a><span>2018.11.16</span></li>");
                        					
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
                                 <%
                                try{
                        			Class.forName("org.MySQL_code.Driver");
                        			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mentos?useSSL=false", "root", "@gh14041404");
                        			
                        			stmt = con.createStatement();
                        			String sql = "select bbsTitle from bbs where bbsID=3";
                        			rs = stmt.executeQuery(sql);
                        			
                        			if(rs.next()){
                        				do{
                        					out.print("<li><a href='#'>");
                        					out.print(rs.getString("bbsTitle"));
                        					out.print("</a><span>2018.11.16</span></li>");
                        					
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
                                 <%
                                try{
                        			Class.forName("org.MySQL_code.Driver");
                        			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mentos?useSSL=false", "root", "@gh14041404");
                        			
                        			stmt = con.createStatement();
                        			String sql = "select bbsTitle from bbs where bbsID=4";
                        			rs = stmt.executeQuery(sql);
                        			
                        			if(rs.next()){
                        				do{
                        					out.print("<li><a href='#'>");
                        					out.print(rs.getString("bbsTitle"));
                        					out.print("</a><span>2018.11.16</span></li>");
                        					
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
                                </ul>
                                <a href="" class="more ir_pm" title="더보기">더보기</a>
                            </div>
                        </div>
                        <!-- // col5-->
                        <div class="column col6">
                            <h3><span class="ico_img  ir_pm">아이콘</span><span class="ico_tit">Notice</span></h3>
                            <p class="ico_desc">포인트를 다양한 선물과 교환하세요!</p>
                            <div class="notice_hover_gift">
                                <h4>기프티콘 TOP3</h4>
                                <ul>
                                    <li>
                                        <a href="gift.jsp">
                                            <span><img
                                                    src="https://t1.daumcdn.net/cfile/tistory/99E133445C982CEB1F" alt="취업정보1"><em>교환하기</em></span>
                                            <strong>허니콤보 세트</strong>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="gift.jsp">
                                            <span><img
                                                    src="data:image/jpeg;base64,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"
                                                    alt="취업정보2"><em>교환하기</em></span>
                                            <strong>베스킨라빈스</strong>
                                        </a>
                                    </li>
                                    <li class="job_info1">
                                        <a href="gift.jsp">
                                            <span><img
                                                    src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS7_Pec-CJGq-39WsFg7N9LvVJhafnL6PdxIw&usqp=CAU"
                                                    alt="취업정보3"><em>교환하기</em></span>
                                            <strong>스타벅스</strong>
                                        </a>
                                    </li>
                                </ul>
                            </div>
                            <!-- //오버효과 -->
                        </div>
                    </div>
                    <!-- // col6-->
                </div>
            </div>
        </div>
        <!-- //cont_cont -->
    </div>
    <!-- //contents -->

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
    <script type="text/javascript">
        // 탭매뉴
        const $tab_list = $(".tab_menu");
        $tab_list.find("ul ul").hide();
        $tab_list.find("li.active > ul").show();

        function tabMenu(e) {
            e.preventDefault();
            const $this = $(this);

            $this.next("ul").show().parent("li").addClass("active").siblings("li").removeClass("active").find(">ul")
                .hide();
        }
        $tab_list.find("ul>li>a").click(tabMenu).focus(tabMenu);

        // 배너
        $(".ban").slick({
            infinite: true,
            slidesToShow: 3,
            slidesToScroll: 1,
            autoplay: true,
            autoplaySpeed: 1000,
            dots: true
        })
    </script>
</body>

</html>