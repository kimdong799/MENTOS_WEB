<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="col-md-4" id="likeArea">
    <button type="button" id="btnLike">
        <mg src="${ isLiked == true ? './img/heart.png' : './img/empty_heart.png' }" 
	id="like_img" height="50px" width="50px">
    </button>
    <span id="like_count">${like_count }</span>    
    <mg src="./img/comment_1.png" height="30px" width="30px">    
    <span id="commentCount">${comments.size() }</span>
	</div>
	
</body>
</html>