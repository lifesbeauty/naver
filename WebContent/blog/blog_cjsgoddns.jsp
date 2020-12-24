<%@ page contentType="text/html; charset=EUC-KR"%>

<%
		request.setCharacterEncoding("EUC-KR");
		String id = "cjsgoddns";
%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="EUC-KR">
	<title>blog</title>
	<link rel="stylesheet" href="./resources/css/blog_style.css">
	<script type="text/javascript" src="./resources/js/script.js"></script>
</head>
<body>
	<div id="root">
		
		<div id="blog-navBarWrap">
			<div class="blog-navbar">
				<select>
					<option>이웃블로그
				</select> 
			</div>
		</div>
		
		<div id="mainImgWrap">
			<div>메인이미지</div>
		</div>
		<div id="container">
		
			<div class="blog-conLeft">
				
				<div class="blog-profileWrap">
					<div class="blog-profileImg">
						<div>프사</div>
					</div>
					<div class="blog-profileId">					
						<div>아이디</div>
					</div>
					<div class="blog-profileDesc">
						<div>할 말</div>
					</div>
				</div>
				<div style="margin-top: 5px;">글쓰기</div>
				<div class="blog-postCategorys">					
					<form class="categoryFrm">
						<ul>
							<li class="pCategory"><strong>카테고리</strong></li>
							<li class="pCategory">
								<input type="submit" class="textbtn" name="category" value="IT"></li>
  							<li class="pCategory">
								<input type="submit" class="textbtn" name="category" value="취미"></li>						
  							<li class="pCategory">
								<input type="submit" class="textbtn" name="category" value="운동"></li>
						</ul>
					</form>
				</div>
				
			</div>
			
			<div class="blog-conRight">
			
				<div class="postWrap">
					글
				</div>
				<div class="postListWrap">
					<div class="postListTop">
						<div>IT 9개의 글</div>
						<select>
							<option>5줄 보기</option>
							<option>10줄 보기</option>
							<option>15줄 보기</option>
						</select>
					</div>
					<div class="postListBottom">
						<table style="width: 95%;">
							<thead>
								<tr>
									<td style=" width:80%">제목</td>
									<td style="width:10%">작성일</td>
									<td style="width:10%">조회수</td>
								<tr>
							</thead>
							<tbody>
								<tr>
									<td style=" width:80%">즐겁구나</td>
									<td style="width:10%">20.12.12</td>
									<td style="width:10%">1,093</td>
								<tr>
							</tbody>
						</table>
					</div>
				</div>
			</div>			
		</div>
	</div>
</body>
</html>