<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import = "java.util.*"%>
<%@ page import = "java.sql.*"%>
<%@ page import="java.io.PrintWriter" %>
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
    <script src="http://code.jquery.com/jquery-3.5.1.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js"></script>

    

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
                        <li><a href="community/notice.jsp">공지사항</a></li>
                        <li><a href="community/index.jsp">커뮤니티</a></li>
                        <li><a href="community/bbs.jsp">자유게시판</a></li>
                        <li><a href="community/study.jsp">스터디</a></li>
                        <li><a href="gettingJob.jsp">취업정보</a></li>
                        <li><a href="gift.jsp">선물교환</a></li>
                    </ul>


                    <ul class="navbar_myinfo">
                        <li><a href="join.jsp">회원가입</a></li>

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
					<button><a href="giftAction.jsp">교환하기</a></button>
				</div>
			</div>
		</div>
		<div class="card">
			<div class="img"><img src="data:image/png;base64,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" alt=""></div>
			<div class="content">
				<div class="title">입생로랑 루쥬</div>
				<div class="sub-title">7500 point</div>
				<p></p>
				<div class="btn">
					<button><a href="chatbot2.jsp">교환하기</a></button>
				</div>
			</div>
		</div>
		<div class="card">
			<div class="img"><img src="data:image/jpeg;base64,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" alt=""></div>
			<div class="content">
				<div class="title">아이패드</div>
				<div class="sub-title">10000 point</div>
				<p></p>
				<div class="btn">
					<button><a href="chatbot.jsp">교환하기</a></button>
				</div>
			</div>
		</div>
		<div class="card">
			<div class="img"><img src="data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBwgHBgkIBwgKCgkLDRYPDQwMDRsUFRAWIB0iIiAdHx8kKDQsJCYxJx8fLT0tMTU3Ojo6Iys/RD84QzQ5OjcBCgoKDQwNGg8PGjclHyU3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3N//AABEIALEAowMBIgACEQEDEQH/xAAcAAEAAQUBAQAAAAAAAAAAAAAABgIDBAUHAQj/xABKEAACAQMBBAUJBQQHBQkAAAABAgMABBEFBhIhMRMiQVFxBxQyYYGRobHBI0JS0fAVJGJyFjM0gqLC8UNEhLLhRVNzhZKjw9LT/8QAGQEBAAMBAQAAAAAAAAAAAAAAAAECAwQF/8QAIREBAAICAgICAwAAAAAAAAAAAAECAxESMSFRBBMyQYH/2gAMAwEAAhEDEQA/AO10pSgUpSgUpSgVptsNaOz2zl3qaRrJJEFEatyLMwUZ9XHPsrc1AfLPKw2VgtI+Ml1dpGB7GPzAoNHDth5RZo1kh0IMjgMrjT5SGB5EHe5V6NqvKQ7FV0gbw5gWR4e9q6pZvHEiWoDIY0CqrDmBw4Vj3UCQlpIwQxO9gdp7aznJHHcDmba/5Tz/ANmsv/CqPmaxTtL5SGmMIQrIOaC3iyO3trpriaVF83TfJ58cBT66iTXB/b5kJ5sAeP8ACBUUyTaehHDrvlLblJIPCG3H0qk6t5TG/wB4mH922H0qS6pO8NhK0TbrhcK2ORPDNZNsxeJS3NhV+S2kSa58pxco11cBhzG/bj5VXFH5Tblt1Ly4znH9ohHYT9DU5mOb259TY/XurO0bBmOTjGSPYAP81TMo05+NF8qEnO/nH/GoPkaf0Z8pj89VnH/mJHyrrcbKAMHPiK9kmAU44+FRFoQ5HsRd7R22350XVdTuJzGrCdJJ2lT0QwwT49lddrluwTef+U3aG8I4RyShT6g5QfAV1KrBSlKBSlKBSlKBSlKBXPvKVm62k2Q04DIkvukcepWT6Fq6DXO9fZrvyv6HCo3ks7RpmHrIk/JaiZ1GxNNUnIQ/Zsd0b4ZR6OKsrNezW6/1RYr1ic5Pu4VXeRQnMoQdLIyAk8WKllBHhjsq4IzDKH3hxHX4el3HxrzcuO1pm3Lv16WYkF3JCTv7iluZySD+vpUL1GQLqN5IvEJI5Hs/0qayQlpS/S/ZgfHu+Vc41rVbS1vLqGUztLIztuxW7yYBJ57oOK2+NFo3WZ3ohILlGngdEYKWHBiMgeyr1kjK0EbtvtlQzYxk99ae01uKS3jaOy1J8qP9zcfMCsiLVpkmjkTRtSkCOGx0aLnB/iYV1cZ30tMw3W9vT3LDtkPzNbLSQVIPqfPt3KiUOo6t02Y9EnCFssJJYgT/AIuHxraaZrkpkdLu1NrJEQroJA+9wBzw8ePPs9sZNxWfCv6SpQ7ZZWC8eHHPCrvSLEpLcQOLGsa1uFngSZFZFcZw4wceusTaK8812d1W4AbMVnK/tCHHxrmrZCF+RMG5fWdQYdaRxk/zdauoVAPIrB0ey082MdJcFfHd/wBan9dqClKUClKUClKUClKUCuWvI03lQ1696Tci0+zQO3E4GIyeA5/erqQr591LVS2u7V7t29u9xcOI9x90yBHbq57scfYKzyfjK1K8p0l8m38B11EWPOlRoH6SNSZGbs5nkDj41NdE1mz1+1nms4pgqtgmQbvE+BNcWvoI/wCt6R2mm6pWVslzzAXhnOccOOanWhw6hpehIi2fRjJeSWYooX/1Hurmr14jw65wU463qUyl3zIIo95iTh3bljhw4VzxRJLb6ld24UySXB3d/kAuEPxVvfW0mm1OOEXFwqRw7u/vGeJOHPPFhWgvtZh0DR9NF5HIZJ4zNKkag8eDNnJHa1dOCk03btyzXU623On3t/5usZW3RxnO/Cx4ewgVsbVtSuXKec2adXPC1Y//ACVUkK3MEfQgRgfdbsz4VXHZzIweGdAw5HBNYXt8umbx5r/G0RhmnqVVrb3iX+biffjVTjcV1B9hcjt7q1eiGO+2svhOWa33m3kBOGK4TkP5akMDSFD0zRnHavD51FdCtLuxmu7m4t06SWTeWMyqebFm4gntNdNtxVGKKzNt+nQofNYUCLLOVBOC8bkgdgBxyrQ+UbUIYNiNUWOR2eREjGUYek6g8x3E1rbW91K0sp5NWRJQMvDKXRd4/gAHL/pUJ2u2guLvSJLOcIeklVgyru7oGTj5VStKxLGXT/JfB0GxFgcY6XMnvP8A0qVVqtlbcWuzOmQgYAt1IHdkZ+tbWtVSlKUClKUClKUClKUFLuI0aRuSgk1xjyfbNRa5pt5q9+FZJ7g4XowzcMk4J9HJbs/CK6ptXdeZbL6vcg4MdnKV8dw4+OK4NoW3WtaDpyadYR2TWyFmBljZm4nJ4hhVbdL07SaTyZPf28aXt/MQoIUKgAHHtBzk4qlPIla3DKTqk4I7EgQVi2/lR1sn7a204gfwSD/PV+527TU1Ualpemz7nFQZGXH+Ks66htbdu9Mw+ROxtYZGinvp5yhCdeNVBx25FYOr7Mba3DDzjTra8CZC9PFbOQKtDafTc4XRkX/wtRmT5GrR2osy2F0+9Q96azP+daRk49M5xzLPhj8okbkSWqMOz7KPn7/1mroPlEUZFkg7f7KD8mrU/wBNIInwDriH+HVXb/mqr+ni9mp7SR/y3MTf8y0+8+qfaS6Zb7bXO+NVNjaWmCHD2rB5eeVUB+773IZ8a5teNs552gaK9TdJG7jl1jUyPlQgjtljiivZJwu6bi5COx9xx7AAKib61azXBkF5eQhmyR0SNjwqtsu0xjdT2T0Vb3SEMCC3gETQbrHeJyvA45cN7Oe/wqGbebNroN3pURu5LlryRjhlA3QpQdnfvfCpfoHlF2Xs9Lt7WW7nVo0wxa2bJPecDGa0O0+t6ftZtvs/HpUxngjIUtuMuHLZIwQOxVqa+1Lbh2K2i6C1gh/7uNV9wxVyvW9KvKuoUpSgUpSgUpQcaBTsyTgDtNWbi6ht1YswO6OPHAHiajGq7Sb3VtftcHG8BlR4DPGg2uv39utjJCwjdH4HpDwbBzjHbUM6XRpW3ZdD0989pgT8qokea4m6WYu7EcN8MueHZ2fSrcnUcszdY+lvZ+Ixw8aC/wCbbMnO9s5ZnHPdt1GPhXh07ZB+D6BGM/hG78iKs9QjqgEDs4Z+XHv/AFmvCuQD1cnvC49n5UFb6HsLJ6elSL/LcOPk9Uf0X2Df0ba5XwuJD/mNeFVJJILAcTgcSe88fXzowcqDuHePIENwHs/QoPTsXsTIMJLfx/yyMfmpq0/k+2Rf0dV1NPFl+sdVNCnFWAwPSbrY+XA/rhVG7DjpAqjsUHA9vLjQWz5NtmG9DXrofz9H/wDUVQ3ku0Rh9ltGB/NGh+orIxugIrEM38Y4d3h4Vl2VjcXsu7C8yxqQGcvgL4959Q+FDbTP5KrX/ZbT2o9TWw//AErY7MeTs6NtBp9+dWt7tY5+qkcW6c4JznePYDUlt9nLQxiIQtPLzLtIyknvyDwH641u9L0Cy06dbkIXuVUqHZmIXPPAJOPHnTRttTzpSlApSlApSvG3txuj3d/HDe5UHtKx968HOCJv5ZcfSnS3AGWtG9kimgqmtoJk3JoY3XuZQRWM+kaZjrWVuO4BAPlVUt+Ix14ZlJ5dUH61ZOoxHn0ieKHNBjXWi6WxJe2jRe3rEe85rCk2d0qRQI4bgKeP2Rcg/StzFe2I9JxvZ+8OVZK39q3KdPfQRg7K2uAFl1BB2ANnHwq0+y0eSVvbwE895c5+FS4Twt6MinwNVB0PJhQQv+jJQgjUWGOWYBVttnH3iy30DE8ADGAB7qnO8v4h768wp7jQQFtm74cIbizIPNyzg+vh+s1S+g6scH7EheOEnbJPian5hQ80U/3asTrbRYBhRnb0VCDJoIZp+g3SlpNR6ijsSY5bxPID4+FbyGQBVSKJY4V5bvD3D61my21oyk3eCfuxQsRu+0czVCW4QBpyRn0U+81Bdj1AQx7kNuqj1tnNV2+qdJcrbuse+3JVPWx347quJZiXDTqEUejGvA+0ir1vbW9sCLaCOIE5O4oGT66C9SlKBSlKBXhIHEnA9de1h31vczSBojGyY9FmK4PuNBee7gj4Bt8/w8cVhXWpKgxvrGPxOQK0+oOVna3uYYnCelG+WU5HbyzwPbViKW1gH7vpWmwN+KK1VTQbRZBMpeFllJ5HfGCfWargtb11JmksEbsVJmf44HyrGF3Ett08kiJGo67McBPEnlVEGpWdyP3e4SUc8x9Ye8cKDONnqGerFaOO8XB+W5VLWOosMJZ2+9jnJPhfgpPwrH85t+XTxg+tgK9e7iiTeMwxy6pz8qC/Ho1+xzM9io/CkTH45HyqiayltziS3Zs8mgDMPdzFW11SLsumHtYVei1Fnz0Vzv454bOKCwW3efnaeMcg+YotwCwVbp948gx4/Gsz9oXAziXOOJJAwo9Z7KoZ9QubVZwyXEDZICfZtwPceB5d48KC0XuTjduSP7gry3t3Y4BaR+TSOck+NeZJAPL1GthaKbkFTiOJcZVebUFMEWG3LcCSQc3PorWdBbrCd4nfkPNz9O6riqqKEjUKo5AV7QKUpQKUpQKUpQKUpQW5IIZf66GKQ97oDWq1fRI5oRLp8EMVxGCQqxgCQdxHfwGD+Zrc0BxQQKx08yQy31tJJLNCwl83mO8IyODboPjkd3ZU20i/j1GzSZDxx1h3GtNq8T6TqC6raj7GRgLhR2Hv9v651ZWVdH1CO7tznTrw5wOSN2j9fSglZUMMEA+NavV9GTUBH0TpAyZyRHnez7RWzRg6BlOVIyDVVBFG2VuR6F3E3ihX6mqYtB1O1k6RHt2T76iRssvaMbtS2lByzWdX82vs219NNaYWQRQQDdBLEMDkFicYOfhUr0ixOoaRbTi+uIpHjBdQsZCNjiAN2qNctIrLUEmmiSS0mbLKw4Bu39eNeadL+x9WNqzZs7jrRMe48vyoM2LZ5A2bjUr+4H4S6xj/ANtVPxrbRRRwxiOJAqDsFVngaUClKUClKUClKUClKUClKUClKUFMkaTRPDMoaNxusD2iorFGtndTaDqLfu843reU9ncfEfQ9lSytXtFpX7VscRHdu4TvwP3N3eB/Kgxdmr+WC5m0e/OLiA9Un7y9hqSVBQ7atZpex5j1XTsrIvIso5g+H641LdJvlvrRZARv4G8Ac0GbSlKDG1Gzjv7OS3k4Bhwb8J7DUStke7t5dLuOre2jFoePdzHt/KptUd2msXSSPVbXhLDgSY7V7/Z+uVBlaBfee2nRyf10XBge6tlUPubvzC9t9Ytx+63J3Z1HJH7ffz99S9HWWNZYzlGGQaD2lKUClKUClKUClKUClKUClUPIiDLsAPWa1lxtFpkDFTchyOB6NS+PdRMRM9NtStGNobeb+ztn+435VRJeyTKf3hkB/h3fmKaQx9c094tVS/02fomuAYp1RgGzg4cev9dprB0S/wBRttdhspzLdgRIJboooLlvvEKAAo7+PHhWPFeLpV46mHW9RXcwX3BIg8OI416u0umW4RTb39rujA6S0clR3bwB4e2gnhmUc2HvrzzmP8Y99QtdrNEchH1aBGPZK5Q/4sVmwX1jdDNrfQTA9sUyt8jQSjzmP8Y99GlidSrFWUjBB7RUeKNzEhA76ikWqa9rVvd6jotzb22nQ74tWmi6Rr0rzbmNxCQQO086DfTRwWt7NpF037pdr9kx7O4+IP641sdm5ja28dlPKkgC9WRZFZc9wIPdjnWiuA+vaJa3kOA7xJcwHPEbyg4rHhj1K5geWDFtM6LEodsBODEtg8useziOfHlQdCpWi8/mUkHiQcEiri6lIOYNBuaVql1Q9oq8upIeamgz6ViLfRGri3UZ7aC/SijeUMDwNe0GtvZtTS4K21qssG71WWQBs9xB/OsC4udc3Qf2XM/eEuYhj4ipBSggGtQ3V6sYmt9Ytt0ksqW/Sq3qO4TmtS0MMA3TqMSN3XKSRH/FmuqUIBGDyotW9q9S5jBa3b9a2vrVu7ze4B+eKy1bXYf9hK4/EWQ/WptcaNplyc3GnWkh73gUn5VhvstpBOY7d4j2dFM6AewHFRxhb7bz3KOfta9hTNzpxlIyerGyn4Zq1M02rQ3EUdrLZZG6JI5DvnI5gkAKR4HwqRvswg4walfx+oyKw+KmrTaDqSHMepQSD8MtpxPtDD5U4wrylx7bPSY9DvrWITtJ5zBvP0krOzMp6xJPiOXr8TsdmI9l9otPks71bW31OAY6eECN3XsbhjJHIg57O+p7qWzF5fMpvLDTrhVBA3ZWU48Cv1rRtsDpMMgafZiaJBkmWKYSbvsDb3wqVUY1Ax22yFzdWnSPdQ3TWjzWsrqjoDjpQucYPAY5Ak9gqHjUNoNNRIZbqaGzmjCLH0x+zQjAAAPVOOGPhXakfQo9OitvOLdYQcRxhd3HcN3HD3Vft9Eecb1nZwCMnAmkOM+CgZI9ooKdmbY2uh2NlN0zSQQIhaQjJwPV3Vf1K30tozHfzSI3MJHcOrkeCneNZ40O5kUC6u5mXHoRN0a/DifaTV6HRILdd2GAIP4eGaCIRWWn282/pVjeIc53jcvEreIBJPtArNnTULwAPeyW4B5Wqhc+JbePxqRjSzngh9tXotM/EMUGkt0lRQHmklI+8+Mn3VloH9dbpNPjA9Grq2cY7BQamONz2VlR25PMVsFhUdlXAoHIUHsICxIO4V7XlKBSlKBSlKBSlKBSlKAK8f0TSlB5Zf1A/mPzr3758aUoPTXlKUHh5172UpQe0pSgUpSgUpSg/9k=" alt=""></div>
			<div class="content">
				<div class="title">노트북 거치대</div>
				<div class="sub-title">2000 point</div>
				<p></p>
				<div class="btn">
					<button>교환하기</button>
				</div>
			</div>
		</div>
		<div class="card">
			<div class="img"><img src="data:image/jpeg;base64,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" alt=""></div>
			<div class="content">
				<div class="title">스타벅스 Tall</div>
				<div class="sub-title">1000 point</div>
				<p></p>
				<div class="btn">
					<button>교환하기</button>
				</div>
			</div>
		</div>
	</div>
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