<%@ page contentType="text/html; charset=utf-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<jsp:useBean id="bean" class="naver.ADBean"/>
<jsp:useBean id="mgr" class="naver.ADMgr"/>
<%
		bean = mgr.getBannerAD();
		String ADIMG = bean.getImg();
		String ADURL = bean.getUrl();
		String banner;
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="EUC-KR">
	<title>index</title>
	<link rel="stylesheet" href="./resources/css/style.css">
</head>
<body>
	<div id="root">
		<div id="portfolioLink">
			<a href="http://localhost/portFolioSite/index.html">포트폴리오</a>
		</div>
		<div id="searchBar">
			<img src="" alt="img">
			<form name="searchFrm" action="search.jsp">
				<input type="text" name="keyWord" style="width: 533px; height: 57px;">
				<input type="submit" value="검색">
			</form> 
		</div>
		<div id="categoryWrap">
			<div id="categoryBar">
				<div class="category">블로그</div>
				<div class="category">지식인</div>
				<div class="category">쇼핑</div>
				<div class="category">여행</div>
			</div>
		</div>
		<div id="container">
		
			<div class="conLeft">
				<div class="bannerAD">
					<a href="<%=ADURL%>" style="width:100%; height:100%;">
						<img class="bannerImg" style="max-width: 100%; max-height:100%;" src="<%=ADIMG %>" alt="img">
					</a>
				</div>
				<div class="blogWrap">
					<div class="blogCategoryBar">
						<div class="blogCategory">IT</div>
						<div class="blogCategory">일상</div>
						<div class="blogCategory">취미</div>
						<div class="blogCategory">요리</div>
					</div>
					<div class="blogItems">
						<div class="blogLeft">
							<img class="thumb-lg" alt="img">
							<span class="spanHeader-lg">제목</span>
							<span class="spanDesc">내용</span>
						</div>
						<div class="blogRight">
							<div class="blogRightItem">
								<img class="thumb-md" alt="img">
								<span class="spanHeader-md">제목</span>
							</div>
							<div class="blogRightItem">
								<img class="thumb-md"  alt="img">
								<span class="spanHeader-md">제목</span>
							</div>
							<div class="blogRightItem">
								<img class="thumb-md"  alt="img">
								<span class="spanHeader-md">제목</span>
							</div>
						</div>
					</div>
				</div>
			</div>
			
			<div class="conRight">
				<div class="loginBox">로그인박스</div>
				<div class="weatherBox">날씨</div>
				<div class="shopBox">
					<div class="shopItems">
						<div class="shopItem">
							<img class="thumb-md" alt="img">
							<span class="spanHeader-sm">어머나 이가격이!</span>
						</div>
						<div class="shopItem">
							<img class="thumb-md" alt="img">
							<span class="spanHeader-sm">어머나 이가격이!</span>
						</div>
					</div>
					<div class="shopItems">
						<div class="shopItem">
							<img class="thumb-md" alt="img">
							<span class="spanHeader-sm">어머나 이가격이!</span>
						</div>
						<div class="shopItem">
							<img class="thumb-md" alt="img">
							<span class="spanHeader-sm">어머나 이가격이!</span>
						</div>
					</div>
					<div class="shopItems">
						<div class="shopItem">
							<img class="thumb-md" alt="img">
							<span class="spanHeader-sm">어머나 이가격이!</span>
						</div>
						<div class="shopItem">
							<img class="thumb-md" alt="img">
							<span class="spanHeader-sm">어머나 이가격이!</span>
						</div>
					</div>
				</div>
			</div>
			
		</div>
	</div>
</body>
</html>