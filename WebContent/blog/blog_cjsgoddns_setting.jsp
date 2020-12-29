<%@page import="blog.BlogPostBean"%>
<%@page import="blog.CateBean"%>
<%@page import="java.util.Vector"%>
<%@ page contentType="text/html; charset=EUC-KR"%>
<%request.setCharacterEncoding("EUC-KR");%>
<jsp:useBean id="blogBean" class="blog.BlogBean"/>
<jsp:useBean id="blogMgr" class="blog.BlogMgr"/>
<jsp:useBean id="cateBean" class="blog.CateBean"/>
<jsp:useBean id="cateMgr" class="blog.CateMgr"/>
<jsp:useBean id="postMgr" class="blog.BlogPostMgr"/>
<%
		String id = "cjsgoddns";
		blogBean = blogMgr.getBlogPage(id);
		String blogBanner = blogBean.getBannerImg();
		String blogProfileDesc = blogBean.getProfileDesc();
		String blogProfileImg = blogBean.getProfileImage();
		
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
		<div id="overlay" style="background-image: url('./resources/img/tutorImg.png');">
			<button class="overlayButton" onclick="overlaySleep()">알겠다</button>
		</div>
		<div id="blog-navBarWrap">
			<div class="blog-navbar">
				<div class="blog-navbar-left">
					<a href="../chu/index.jsp" style="width: 81px; height: 26px; margin-left: 18%;">
						<img src="./resources/img/logo-md.png" alt="img">
					</a> 
				</div>
				<div class="blog-navbar-right">
					<select>
						<option>이웃블로그
					</select>
					<div><a href="../joon/logout.jsp">로그아웃</a></div> 
				</div>
			</div>
		</div>
		
		<form action="blog_settingProc.jsp" method="post" enctype="multipart/form-data">
		
		<div id="mainImgWrap" style="border: 5px solid yellow;">
			<div style="height: 100%;">
				<input type="file" name="bannerImg" class="bannerChange" style="background-image: url('./resources/img/<%=blogBanner %>'); background-size: 100% 100%;">
			</div>
		</div>
		
		<div id="container">
		
			<div class="blog-conLeft">
				
				<div class="blog-profileWrap">
					<div class="blog-profileImg" style="border: 5px solid yellow;">
						<div style="width: 100%; height: 100%;">
							<input type="file" name="profileImg" class="profileImgChange" style="background-image: url('./resources/img/<%=blogProfileImg %>'); background-size: 100% 100%;">
						</div>
					</div>
					<div class="blog-profileId">					
						<div>
							<span style="opacity: 0.5"><%=id %>님의 블로그</span>
						</div>
					</div>
					<div class="blog-profileDesc"  style="border: 5px solid yellow;">
						<div style="width: 100%; height: 100%;">
							<textarea name="profileDesc" class="descChange"><%=blogProfileDesc %></textarea>
						</div>
					</div>
				</div>
				<%if(id!=null&&!id.equals("")){ %>
				<div style="margin-top: 5px;">
					<span style="opacity: 0.5">글쓰기<small style="padding: 5px;"> / </small></span>
					<span style="opacity: 0.5">설정</span>
				</div>
				<%} %>
				<div class="blog-postCategorys"  style="border: 5px solid yellow;">					
					
						<ul style="padding-inline-start: 0px;">
							<li class="pCategory">
								<strong>카테고리</strong>
								<input type="button" value="추가" onclick="addCategory()">
							</li>
							<%
									Vector<CateBean> cateVlist = new Vector<CateBean>();
									cateVlist = cateMgr.getBlogCategory(id);
									for(int i=0; i<cateVlist.size(); i++){
										cateBean = cateVlist.get(i);
										String cateName = cateBean.getBlogCateName();
										int cateNum = cateBean.getBlogCateNum();
							%>
							
							<li class="pCategory">
								<input type="text" class="cateChange" name="category" value="<%=cateName%>">
								<input type="button" value="삭제" onclick="delCategory()">
							</li>
							
							<%	} %>
								
						</ul>
					
				</div>
				
			</div>
			
			
			<div class="blog-conRight">
				<input type="submit" value="수정완료">
				<input type="button" value="수정취소" onclick="javascript:location.href='blog_<%=id%>.jsp'">
			</div>		
				
		</div>
		</form>
	</div>
	
</body>
</html>