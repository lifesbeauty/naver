package joinmember;

public class BlogTemplate {
	
	public BlogTemplate() {
		
	}
	//블로그 템플릿
	public String blogTemplate(String id) {

		String blogTemplate = 
				"<%@page import=\"blog.BlogPostBean\"%>\r\n"
				+ "<%@page import=\"blog.CateBean\"%>\r\n"
				+ "<%@page import=\"java.util.Vector\"%>\r\n"
				+ "<%@ page contentType=\"text/html; charset=EUC-KR\"%>\r\n"
				+ "<%request.setCharacterEncoding(\"EUC-KR\");%>\r\n"
				+ "<jsp:useBean id=\"blogBean\" class=\"blog.BlogBean\"/>\r\n"
				+ "<jsp:useBean id=\"blogMgr\" class=\"blog.BlogMgr\"/>\r\n"
				+ "<jsp:useBean id=\"cateBean\" class=\"blog.CateBean\"/>\r\n"
				+ "<jsp:useBean id=\"cateMgr\" class=\"blog.CateMgr\"/>\r\n"
				+ "<jsp:useBean id=\"postMgr\" class=\"blog.BlogPostMgr\"/>\r\n"
				+ "<%\r\n"
				+ "		String id = \""+id+"\";\r\n"
				+ "		blogBean = blogMgr.getBlogPage(id);\r\n"
				+ "		String blogBanner = blogBean.getBannerImg();\r\n"
				+ "		String blogProfileDesc = blogBean.getProfileDesc();\r\n"
				+ "		String blogProfileImg = blogBean.getProfileImage();\r\n"
				+ "		String sid = (String) session.getAttribute(\"id\");\r\n"
				+ "		\r\n"
				+ "%>\r\n"
				+ "\r\n"
				+ "<!DOCTYPE html>\r\n"
				+ "<html>\r\n"
				+ "<head>\r\n"
				+ "	<meta charset=\"EUC-KR\">\r\n"
				+ "	<title>blog</title>\r\n"
				+ "	<link rel=\"stylesheet\" href=\"./resources/css/blog_style.css\">\r\n"
				+ "	<script type=\"text/javascript\" src=\"./resources/js/script.js\"></script>\r\n"
				+ "</head>\r\n"
				+ "<body>\r\n"
				+ "	<div id=\"root\">\r\n"
				+ "		\r\n"
				+ "		<div id=\"blog-navBarWrap\">\r\n"
				+ "			<div class=\"blog-navbar\">\r\n"
				+ "				<div class=\"blog-navbar-left\">\r\n"
				+ "					<a href=\"../chu/index.jsp\" style=\"width: 81px; height: 26px; margin-left: 18%;\">\r\n"
				+ "						<img src=\"./resources/img/logo-md.png\" alt=\"img\">\r\n"
				+ "					</a> \r\n"
				+ "				</div>\r\n"
				+ "				<div class=\"blog-navbar-right\">\r\n"
				+ "					<%if(sid!=null&&!sid.equals(\"\")){ %>\r\n"
				+ "					<div><a href=\"../joon/logout.jsp\">로그아웃</a></div>\r\n"
				+ "						<%if(sid!=id&&!sid.equals(id)){ %>\r\n"
				+ "					<div><a href=\"blog_<%=sid%>.jsp\">내 블로그</a></div>\r\n"
				+ "						<%} %>\r\n"
				+ "					<%}else{ %> \r\n"
				+ "					<div><a href=\"../joon/login.jsp\">로그인</a></div>\r\n"
				+ "					<%} %>\r\n"
				+ "				</div>\r\n"
				+ "			</div>\r\n"
				+ "		</div>\r\n"
				+ "		<div id=\"mainImgWrap\">\r\n"
				+ "			<div style=\"height: 100%;\">\r\n"
				+ "				<img class=\"bannerImg\" src=\"./resources/img/<%=blogBanner %>\">\r\n"
				+ "			</div>\r\n"
				+ "		</div>\r\n"
				+ "		\r\n"
				+ "		<div id=\"container\">\r\n"
				+ "		\r\n"
				+ "			<div class=\"blog-conLeft\">\r\n"
				+ "				\r\n"
				+ "				<div class=\"blog-profileWrap\">\r\n"
				+ "					<div class=\"blog-profileImg\">\r\n"
				+ "						<div style=\"width: 100%; height: 100%;\">\r\n"
				+ "							<img src=\"./resources/img/<%=blogProfileImg %>\" style=\"width: 100%; height: 100%;\">\r\n"
				+ "						</div>\r\n"
				+ "					</div>\r\n"
				+ "					<div class=\"blog-profileId\">					\r\n"
				+ "						<div><strong><%=id %>님의 블로그</strong></div>\r\n"
				+ "					</div>\r\n"
				+ "					<div class=\"blog-profileDesc\">\r\n"
				+ "						<div><%=blogProfileDesc %></div>\r\n"
				+ "					</div>\r\n"
				+ "				</div>\r\n"
				+ "				<%if(sid!=null&&sid.equals(id)){ %>\r\n"
				+ "				<div style=\"margin-top: 5px;\">\r\n"
				+ "					<a href=\"blog_<%=id%>_posting.jsp\">글쓰기 </a><small style=\"padding: 5px;\"> / </small>\r\n"
				+ "					<a href=\"blog_<%=id%>_setting.jsp\"> 설정</a>\r\n"
				+ "				</div>\r\n"
				+ "				<%} %>\r\n"
				+ "				<div class=\"blog-postCategorys\">					\r\n"
				+ "					\r\n"
				+ "						<div>\r\n"
				+ "							<div class=\"pCategory\"><strong>카테고리</strong></div>\r\n"
				+ "							<%\r\n"
				+ "									Vector<CateBean> cateVlist = new Vector<CateBean>();\r\n"
				+ "									cateVlist = cateMgr.getBlogCategory(id);\r\n"
				+ "									for(int i=0; i<cateVlist.size(); i++){\r\n"
				+ "										cateBean = cateVlist.get(i);\r\n"
				+ "										String cateName = cateBean.getBlogCateName();\r\n"
				+ "										int cateNum = cateBean.getBlogCateNum();\r\n"
				+ "							%>\r\n"
				+ "							\r\n"
				+ "							<div class=\"pCategory\">\r\n"
				+ "							<form class=\"categoryFrm\">\r\n"
				+ "								<input type=\"submit\" class=\"textbtn\" name=\"category\" value=\"<%=cateName%>\">\r\n"
				+ "								<input type=\"hidden\" name=\"cateNum\" value=\"<%=i+1%>\">\r\n"
				+ "							</form>\r\n"
				+ "							</div>\r\n"
				+ "							\r\n"
				+ "							<%	} %>\r\n"
				+ "								\r\n"
				+ "						</div>\r\n"
				+ "					\r\n"
				+ "				</div>\r\n"
				+ "				\r\n"
				+ "			</div>\r\n"
				+ "			\r\n"
				+ "			\r\n"
				+ "			<div class=\"blog-conRight\">\r\n"
				+ "			<%\r\n"
				+ "					Vector<BlogPostBean> postVlist = new Vector<BlogPostBean>();\r\n"
				+ "					String cateName = request.getParameter(\"category\");\r\n"
				+ "					int cateNum = Integer.parseInt(request.getParameter(\"cateNum\"));\r\n"
				+ "					postVlist = postMgr.getPostList(id, cateNum);\r\n"
				+ "					for(int i=0; i<postVlist.size(); i++){\r\n"
				+ "						BlogPostBean bean = postVlist.get(i);\r\n"
				+ "						String title = bean.getPostTitle();\r\n"
				+ "						String text = bean.getPostText();\r\n"
				+ "						String date = bean.getPostDate();\r\n"
				+ "						int like = bean.getPostLike();\r\n"
				+ "						int view = bean.getPostView();\r\n"
				+ "			%>\r\n"
				+ "				<div class=\"postWrap\">\r\n"
				+ "					<div class=\"postTitle\">\r\n"
				+ "						<span class=\"postSpan-lg\">제목: <%=title %></span>\r\n"
				+ "					</div>\r\n"
				+ "					<div class=\"postContents\">\r\n"
				+ "						<%=text %>\r\n"
				+ "					</div>\r\n"
				+ "					<div class=\"postLike\">\r\n"
				+ "						<span class=\"postSpan-sm\">좋아요: <%=like %></span>\r\n"
				+ "					</div>\r\n"
				+ "					<div class=\"postDate\">\r\n"
				+ "						<span class=\"postSpan-sm\">게시일: <%=date %></span>\r\n"
				+ "					</div>\r\n"
				+ "				</div>\r\n"
				+ "			<%	} %>\r\n"
				+ "				<div class=\"postListWrap\">\r\n"
				+ "					<div class=\"postListTop\">\r\n"
				+ "						<div><strong><%=cateName %> <%=postVlist.size() %>개의 글</strong></div>\r\n"
				+ "						<select>\r\n"
				+ "							<option>5줄 보기</option>\r\n"
				+ "							<option>10줄 보기</option>\r\n"
				+ "							<option>15줄 보기</option>\r\n"
				+ "						</select>\r\n"
				+ "					</div>\r\n"
				+ "					<div class=\"postListBottom\">\r\n"
				+ "						<table style=\"width: 95%;\">\r\n"
				+ "							<thead>\r\n"
				+ "								<tr>\r\n"
				+ "									<td style=\" width:80%\"><strong>제목</strong></td>\r\n"
				+ "									<td style=\"width:10%\"><strong>작성일</strong></td>\r\n"
				+ "									<td style=\"width:10%\"><strong>조회수</strong></td>\r\n"
				+ "								<tr>\r\n"
				+ "							</thead>\r\n"
				+ "							<tbody>\r\n"
				+ "							<%\r\n"
				+ "									postVlist = postMgr.getPostList(id, cateNum);\r\n"
				+ "									for(int i=0; i<postVlist.size(); i++){\r\n"
				+ "										BlogPostBean bean = postVlist.get(i);\r\n"
				+ "										String title = bean.getPostTitle();\r\n"
				+ "										String date = bean.getPostDate();\r\n"
				+ "										int view = bean.getPostView();\r\n"
				+ "							%>\r\n"
				+ "								<tr>\r\n"
				+ "									<td style=\" width:80%\"><%=title %></td>\r\n"
				+ "									<td style=\"width:10%\"><%=date %></td>\r\n"
				+ "									<td style=\"width:10%\" align=\"center\"><%=view %></td>\r\n"
				+ "								<tr>\r\n"
				+ "							<%	} %>\r\n"
				+ "							</tbody>\r\n"
				+ "						</table>\r\n"
				+ "					</div>\r\n"
				+ "				</div>\r\n"
				+ "			</div>			\r\n"
				+ "		</div>\r\n"
				+ "	</div>\r\n"
				+ "</body>\r\n"
				+ "</html>";
		return blogTemplate;
	}
	
	//블로그 웰컴 템플릿
	public String blogWelcomeTemplate(String id) {
		
		String blogWelcomeTemplate = 
				"<%@page import=\"blog.BlogPostBean\"%>\r\n"
				+ "<%@page import=\"blog.CateBean\"%>\r\n"
				+ "<%@page import=\"java.util.Vector\"%>\r\n"
				+ "<%@ page contentType=\"text/html; charset=EUC-KR\"%>\r\n"
				+ "<%request.setCharacterEncoding(\"EUC-KR\");%>\r\n"
				+ "<jsp:useBean id=\"blogBean\" class=\"blog.BlogBean\"/>\r\n"
				+ "<jsp:useBean id=\"blogMgr\" class=\"blog.BlogMgr\"/>\r\n"
				+ "<jsp:useBean id=\"cateBean\" class=\"blog.CateBean\"/>\r\n"
				+ "<jsp:useBean id=\"cateMgr\" class=\"blog.CateMgr\"/>\r\n"
				+ "<jsp:useBean id=\"postMgr\" class=\"blog.BlogPostMgr\"/>\r\n"
				+ "<%\r\n"
				+ "		String id = \""+id+"\";\r\n"
				+ "		blogBean = blogMgr.getBlogPage(id);\r\n"
				+ "		String blogBanner = blogBean.getBannerImg();\r\n"
				+ "		String blogProfileDesc = blogBean.getProfileDesc();\r\n"
				+ "		String blogProfileImg = blogBean.getProfileImage();\r\n"
				+ "		String sid = (String) session.getAttribute(\"id\");\r\n"
				+ "		\r\n"
				+ "%>\r\n"
				+ "\r\n"
				+ "<!DOCTYPE html>\r\n"
				+ "<html>\r\n"
				+ "<head>\r\n"
				+ "	<meta charset=\"EUC-KR\">\r\n"
				+ "	<title>blog</title>\r\n"
				+ "	<link rel=\"stylesheet\" href=\"./resources/css/blog_style.css\">\r\n"
				+ "	<script type=\"text/javascript\" src=\"./resources/js/script.js\"></script>\r\n"
				+ "</head>\r\n"
				+ "<body>\r\n"
				+ "	<div id=\"root\">\r\n"
				+ "		\r\n"
				+ "		<div id=\"blog-navBarWrap\">\r\n"
				+ "			<div class=\"blog-navbar\">\r\n"
				+ "				<div class=\"blog-navbar-left\">\r\n"
				+ "					<a href=\"../chu/index.jsp\" style=\"width: 81px; height: 26px; margin-left: 18%;\">\r\n"
				+ "						<img src=\"./resources/img/logo-md.png\" alt=\"img\">\r\n"
				+ "					</a> \r\n"
				+ "				</div>\r\n"
				+ "				<div class=\"blog-navbar-right\">\r\n"
				+ "					<%if(sid!=null&&!sid.equals(\"\")){ %>\r\n"
				+ "					<div><a href=\"../joon/logout.jsp\">로그아웃</a></div>\r\n"
				+ "						<%if(sid!=id&&!sid.equals(id)){ %>\r\n"
				+ "					<div><a href=\"blog_<%=sid%>.jsp\">내 블로그</a></div>\r\n"
				+ "						<%} %>\r\n"
				+ "					<%}else{ %> \r\n"
				+ "					<div><a href=\"../joon/login.jsp\">로그인</a></div>\r\n"
				+ "					<%} %>\r\n"
				+ "				</div>\r\n"
				+ "			</div>\r\n"
				+ "		</div>\r\n"
				+ "		<div id=\"mainImgWrap\">\r\n"
				+ "			<div style=\"height: 100%;\">\r\n"
				+ "				<img class=\"bannerImg\" src=\"./resources/img/<%=blogBanner %>\">\r\n"
				+ "			</div>\r\n"
				+ "		</div>\r\n"
				+ "		\r\n"
				+ "		<div id=\"container\">\r\n"
				+ "		\r\n"
				+ "			<div class=\"blog-conLeft\">\r\n"
				+ "				\r\n"
				+ "				<div class=\"blog-profileWrap\">\r\n"
				+ "					<div class=\"blog-profileImg\">\r\n"
				+ "						<div style=\"width: 100%; height: 100%;\">\r\n"
				+ "							<img src=\"./resources/img/<%=blogProfileImg %>\" style=\"width: 100%; height: 100%;\">\r\n"
				+ "						</div>\r\n"
				+ "					</div>\r\n"
				+ "					<div class=\"blog-profileId\">					\r\n"
				+ "						<div><strong><%=id %>님의 블로그</strong></div>\r\n"
				+ "					</div>\r\n"
				+ "					<div class=\"blog-profileDesc\">\r\n"
				+ "						<div><%=blogProfileDesc %></div>\r\n"
				+ "					</div>\r\n"
				+ "				</div>\r\n"
				+ "				<%if(sid!=null&&sid.equals(id)){ %>\r\n"
				+ "				<div style=\"margin-top: 5px;\">\r\n"
				+ "					<a href=\"blog_<%=id%>_posting.jsp\">글쓰기 </a><small style=\"padding: 5px;\"> / </small>\r\n"
				+ "					<a href=\"blog_<%=id%>_setting.jsp\"> 설정</a>\r\n"
				+ "				</div>\r\n"
				+ "				<%} %>\r\n"
				+ "				<div class=\"blog-postCategorys\">					\r\n"
				+ "					\r\n"
				+ "						<div>\r\n"
				+ "							<div class=\"pCategory\"><strong>카테고리</strong></div>\r\n"
				+ "							<%\r\n"
				+ "									Vector<CateBean> cateVlist = new Vector<CateBean>();\r\n"
				+ "									cateVlist = cateMgr.getBlogCategory(id);\r\n"
				+ "									for(int i=0; i<cateVlist.size(); i++){\r\n"
				+ "										cateBean = cateVlist.get(i);\r\n"
				+ "										String cateName = cateBean.getBlogCateName();\r\n"
				+ "										int cateNum = cateBean.getBlogCateNum();\r\n"
				+ "							%>\r\n"
				+ "							\r\n"
				+ "							<div class=\"pCategory\">\r\n"
				+ "							<form class=\"categoryFrm\" action=\"blog_<%=id%>.jsp?cateNum=<%=cateNum%>\">\r\n"
				+ "								<input type=\"submit\" class=\"textbtn\" name=\"category\" value=\"<%=cateName%>\">\r\n"
				+ "								<input type=\"hidden\" name=\"cateNum\" value=\"<%=i+1%>\">\r\n"
				+ "							</form>\r\n"
				+ "							</div>\r\n"
				+ "							\r\n"
				+ "							<%	} %>\r\n"
				+ "								\r\n"
				+ "						</div>\r\n"
				+ "					\r\n"
				+ "				</div>\r\n"
				+ "				\r\n"
				+ "			</div>\r\n"
				+ "			\r\n"
				+ "			\r\n"
				+ "			<div class=\"blog-conRight\">\r\n"
				+ "			<%\r\n"
				+ "						BlogPostBean bean = postMgr.getNewPost(id);\r\n"
				+ "						int postNo = bean.getPostNo();\r\n"
				+ "						String title = bean.getPostTitle();\r\n"
				+ "						String text = bean.getPostText();\r\n"
				+ "						String date = bean.getPostDate();\r\n"
				+ "						int like = bean.getPostLike();\r\n"
				+ "						int view = bean.getPostView();\r\n"
				+ "			%>\r\n"
				+ "				<div class=\"postWrap\">\r\n"
				+ "					<div class=\"postTitle\">\r\n"
				+ "						<span class=\"postSpan-lg\">제목: <%=title %></span>\r\n"
				+ "					</div>\r\n"
				+ "					<div class=\"postContents\">\r\n"
				+ "						<%=text %>\r\n"
				+ "					</div>\r\n"
				+ "					<div class=\"postLike\">\r\n"
				+ "						<span class=\"postSpan-sm\">좋아요: <%=like %></span>\r\n"
				+ "					</div>\r\n"
				+ "					<div class=\"postDate\">\r\n"
				+ "						<span class=\"postSpan-sm\">게시일: <%=date %></span>\r\n"
				+ "					</div>\r\n"
				+ "				</div>\r\n"
				+ "				\r\n"
				+ "			<%\r\n"
				+ "						BlogPostBean bean2 = postMgr.getMaxLikePost(id);\r\n"
				+ "						int postNo2 = bean2.getPostNo();\r\n"
				+ "						String title2 = bean2.getPostTitle();\r\n"
				+ "						String text2 = bean2.getPostText();\r\n"
				+ "						String date2 = bean2.getPostDate();\r\n"
				+ "						int like2 = bean2.getPostLike();\r\n"
				+ "						int view2 = bean2.getPostView();\r\n"
				+ "			%>\r\n"
				+ "				<div class=\"postWrap\">\r\n"
				+ "					<div class=\"postTitle\">\r\n"
				+ "						<span class=\"postSpan-lg\">제목: <%=title2 %></span>\r\n"
				+ "					</div>\r\n"
				+ "					<div class=\"postContents\">\r\n"
				+ "						<%=text2 %>\r\n"
				+ "					</div>\r\n"
				+ "					<div class=\"postLike\">\r\n"
				+ "						<span class=\"postSpan-sm\">좋아요: <%=like2 %></span>\r\n"
				+ "					</div>\r\n"
				+ "					<div class=\"postDate\">\r\n"
				+ "						<span class=\"postSpan-sm\">게시일: <%=date2 %></span>\r\n"
				+ "					</div>\r\n"
				+ "				</div>\r\n"
				+ "				\r\n"
				+ "				\r\n"
				+ "			</div>	\r\n"
				+ "					\r\n"
				+ "		</div>\r\n"
				+ "	</div>\r\n"
				+ "</body>\r\n"
				+ "</html>";
		return blogWelcomeTemplate;
	}
	
	//블로그 세팅 템플릿
	public String blogSettingTemplate(String id) {
		String blogSettingTemplate = 
				"<%@page import=\"blog.BlogPostBean\"%>\r\n"
				+ "<%@page import=\"blog.CateBean\"%>\r\n"
				+ "<%@page import=\"java.util.Vector\"%>\r\n"
				+ "<%@ page contentType=\"text/html; charset=EUC-KR\"%>\r\n"
				+ "<%request.setCharacterEncoding(\"EUC-KR\");%>\r\n"
				+ "<jsp:useBean id=\"blogBean\" class=\"blog.BlogBean\"/>\r\n"
				+ "<jsp:useBean id=\"blogMgr\" class=\"blog.BlogMgr\"/>\r\n"
				+ "<jsp:useBean id=\"cateBean\" class=\"blog.CateBean\"/>\r\n"
				+ "<jsp:useBean id=\"cateMgr\" class=\"blog.CateMgr\"/>\r\n"
				+ "<jsp:useBean id=\"postMgr\" class=\"blog.BlogPostMgr\"/>\r\n"
				+ "<%\r\n"
				+ "		String id = \""+id+"\";\r\n"
				+ "		blogBean = blogMgr.getBlogPage(id);\r\n"
				+ "		String blogBanner = blogBean.getBannerImg();\r\n"
				+ "		String blogProfileDesc = blogBean.getProfileDesc();\r\n"
				+ "		String blogProfileImg = blogBean.getProfileImage();\r\n"
				+ "		\r\n"
				+ "%>\r\n"
				+ "\r\n"
				+ "<!DOCTYPE html>\r\n"
				+ "<html>\r\n"
				+ "<head>\r\n"
				+ "	<meta charset=\"EUC-KR\">\r\n"
				+ "	<title>blog</title>\r\n"
				+ "	<link rel=\"stylesheet\" href=\"./resources/css/blog_style.css\">\r\n"
				+ "	<script type=\"text/javascript\" charset=\"EUC-KR\" src=\"./resources/js/script.js\">\r\n"
				+ "	\r\n"
				+ "	</script>\r\n"
				+ "</head>\r\n"
				+ "<body>\r\n"
				+ "\r\n"
				+ "	<div id=\"root\">\r\n"
				+ "		<div id=\"overlay\" style=\"background-image: url('./resources/img/tutorImg.png');\">\r\n"
				+ "			<button class=\"overlayButton\" onclick=\"overlaySleep()\">알겠다</button>\r\n"
				+ "		</div>\r\n"
				+ "		<div id=\"blog-navBarWrap\">\r\n"
				+ "			<div class=\"blog-navbar\">\r\n"
				+ "				<div class=\"blog-navbar-left\">\r\n"
				+ "					<a href=\"../chu/index.jsp\" style=\"width: 81px; height: 26px; margin-left: 18%;\">\r\n"
				+ "						<img src=\"./resources/img/logo-md.png\" alt=\"img\">\r\n"
				+ "					</a> \r\n"
				+ "				</div>\r\n"
				+ "				<div class=\"blog-navbar-right\">\r\n"
				+ "					<select>\r\n"
				+ "						<option>이웃블로그\r\n"
				+ "					</select>\r\n"
				+ "					<div><a href=\"../joon/logout.jsp\">로그아웃</a></div> \r\n"
				+ "				</div>\r\n"
				+ "			</div>\r\n"
				+ "		</div>\r\n"
				+ "		\r\n"
				+ "		<form name=\"updateFrm\" action=\"blog_settingProc.jsp\" method=\"post\" enctype=\"multipart/form-data\" accept-charset=\"euc-kr\">\r\n"
				+ "		\r\n"
				+ "		<div id=\"mainImgWrap\" style=\"border: 5px solid yellow;\">\r\n"
				+ "			<div style=\"height: 100%;\">\r\n"
				+ "				<input type=\"file\" name=\"bannerImg\" id=\"bannerImg\" class=\"bannerChange\" style=\"background-image: url('./resources/img/<%=blogBanner %>');\"\r\n"
				+ "							onchange=\"previewBanner(event);\">\r\n"
				+ "			</div>\r\n"
				+ "		</div>\r\n"
				+ "		\r\n"
				+ "		<div id=\"container\">\r\n"
				+ "		\r\n"
				+ "			<div class=\"blog-conLeft\">\r\n"
				+ "				\r\n"
				+ "				<div class=\"blog-profileWrap\">\r\n"
				+ "					<div class=\"blog-profileImg\" style=\"border: 5px solid yellow;\">\r\n"
				+ "						<div style=\"width: 100%; height: 100%;\">\r\n"
				+ "							<input type=\"file\" id=\"profileImg\" name=\"profileImg\" class=\"profileImgChange\" style=\"background-image: url('./resources/img/<%=blogProfileImg %>');\"\r\n"
				+ "										onchange=\"previewProfile(event);\">\r\n"
				+ "						</div>\r\n"
				+ "					</div>\r\n"
				+ "					<div class=\"blog-profileId\">					\r\n"
				+ "						<div>\r\n"
				+ "							<span style=\"opacity: 0.5\"><%=id %>님의 블로그</span>\r\n"
				+ "						</div>\r\n"
				+ "					</div>\r\n"
				+ "					<div class=\"blog-profileDesc\"  style=\"border: 5px solid yellow;\">\r\n"
				+ "						<div style=\"width: 100%; height: 100%;\">\r\n"
				+ "							<textarea name=\"profileDesc\" class=\"descChange\" placeholder=\"<%=blogProfileDesc %>\"></textarea>\r\n"
				+ "						</div>\r\n"
				+ "					</div>\r\n"
				+ "				</div>\r\n"
				+ "				<%if(id!=null&&!id.equals(\"\")){ %>\r\n"
				+ "				<div style=\"margin-top: 5px;\">\r\n"
				+ "					<span style=\"opacity: 0.5\">글쓰기<small style=\"padding: 5px;\"> / </small></span>\r\n"
				+ "					<span style=\"opacity: 0.5\">설정</span>\r\n"
				+ "				</div>\r\n"
				+ "				<%} %>\r\n"
				+ "				<div class=\"blog-postCategorys\"  style=\"border: 5px solid yellow;\">					\r\n"
				+ "					\r\n"
				+ "						<div id=\"categorys\" style=\"padding-inline-start: 0px;\">\r\n"
				+ "							<div class=\"pCategory\">\r\n"
				+ "								<strong>카테고리</strong>\r\n"
				+ "								\r\n"
				+ "							</div>\r\n"
				+ "							<%\r\n"
				+ "									int count = 0;\r\n"
				+ "									Vector<CateBean> cateVlist = new Vector<CateBean>();\r\n"
				+ "									cateVlist = cateMgr.getBlogCategory(id);\r\n"
				+ "									for(int i=0; i<cateVlist.size(); i++){\r\n"
				+ "										cateBean = cateVlist.get(i);\r\n"
				+ "										String cateName = cateBean.getBlogCateName();\r\n"
				+ "										int cateNum = cateBean.getBlogCateNum();\r\n"
				+ "							%>\r\n"
				+ "							\r\n"
				+ "							<div id=\"pCategory<%=i+1%>\">\r\n"
				+ "								<input type=\"text\" class=\"cateChange\" name=\"category\" placeholder=\"<%=cateName%>\">\r\n"
				+ "								<input type=\"button\" id=\"delButton<%=i+1 %>\" value=\"삭제\" onclick=\"delCategory('<%=i+1%>')\">\r\n"
				+ "							</div>\r\n"
				+ "									<%count = i+1; %>\r\n"
				+ "							<%	} %>\r\n"
				+ "							\r\n"
				+ "							<input type=\"button\" id=\"addButton<%=count %>\" value=\"추가\" onclick=\"addCategory('<%=count%>')\" style=\"margin-left: 40%; margin-top: 5px;\">\r\n"
				+ "							\r\n"
				+ "						</div>\r\n"
				+ "					\r\n"
				+ "				</div>\r\n"
				+ "				\r\n"
				+ "			</div>\r\n"
				+ "			\r\n"
				+ "			<div class=\"blog-conRight\">\r\n"
				+ "				<input type=\"submit\" value=\"수정완료\">\r\n"
				+ "				<input type=\"button\" value=\"수정취소\" onclick=\"javascript:location.href='blog_<%=id%>.jsp'\">\r\n"
				+ "			</div>		\r\n"
				+ "				\r\n"
				+ "		</div>\r\n"
				+ "		</form>\r\n"
				+ "	</div>\r\n"
				+ "	\r\n"
				+ "</body>\r\n"
				+ "<script type=\"text/javascript\">\r\n"
				+ "function addCategory(count) {\r\n"
				+ "	\r\n"
				+ "	addFrm = document.getElementById(\"categorys\");\r\n"
				+ "	addBtn = document.getElementById(\"addButton\"+count);\r\n"
				+ "	addFrm.removeChild(addBtn);\r\n"
				+ "	\r\n"
				+ "	count++;\r\n"
				+ "	\r\n"
				+ "	addedDiv = document.createElement(\"div\");\r\n"
				+ "	addedDiv.setAttribute(\"id\",\"pCategory\"+count);\r\n"
				+ "	\r\n"
				+ "	addedInput = document.createElement(\"input\");\r\n"
				+ "	addedInput.setAttribute(\"class\",\"cateChange\");\r\n"
				+ "	addedInput.setAttribute(\"name\",\"category\");\r\n"
				+ "	addedInput.setAttribute(\"placeholder\",\"새 카테고리\");\r\n"
				+ "	\r\n"
				+ "	addedBtn = document.createElement(\"input\");\r\n"
				+ "	addedBtn.type = \"button\";\r\n"
				+ "	addedBtn.setAttribute(\"onclick\",\"delCategory(\"+count+\")\");\r\n"
				+ "	addedBtn.setAttribute(\"value\",\"삭제\");\r\n"
				+ "	\r\n"
				+ "	addedAddBtn = document.createElement(\"input\");\r\n"
				+ "	addedAddBtn.type=\"button\";\r\n"
				+ "	addedAddBtn.setAttribute(\"onclick\", \"addCategory(\"+count+\")\");\r\n"
				+ "	addedAddBtn.setAttribute(\"id\", \"addButton\"+count);\r\n"
				+ "	addedAddBtn.setAttribute(\"style\", \"margin-left: 40%; margin-top: 5px;\")\r\n"
				+ "	addedAddBtn.setAttribute(\"value\", \"추가\");\r\n"
				+ "	\r\n"
				+ "	addFrm.appendChild(addedDiv);\r\n"
				+ "	addedDiv.appendChild(addedInput);\r\n"
				+ "	addedDiv.appendChild(addedBtn);\r\n"
				+ "	\r\n"
				+ "	addFrm.appendChild(addedAddBtn);\r\n"
				+ "	\r\n"
				+ "}\r\n"
				+ "\r\n"
				+ "function delCategory(count) {\r\n"
				+ "	//delFrm = document.getElementById(\"categorys\");\r\n"
				+ "	//alert(\"pCategory\"+count);\r\n"
				+ "	delCate = document.getElementById(\"pCategory\"+count);\r\n"
				+ "	document.getElementById(\"categorys\").removeChild(delCate);\r\n"
				+ "	\r\n"
				+ "	//delFrm.removeChild(delCate);\r\n"
				+ "}\r\n"
				+ "</script>\r\n"
				+ "</html>";
		return blogSettingTemplate;
	}
	//블로그 포스팅 템플릿
	public String blogPostingTemplate(String id) {
		String blogPostingTemplate = 
				"<%@page import=\"blog.BlogPostBean\"%>\r\n"
				+ "<%@page import=\"blog.CateBean\"%>\r\n"
				+ "<%@page import=\"java.util.Vector\"%>\r\n"
				+ "<%@ page contentType=\"text/html; charset=EUC-KR\"%>\r\n"
				+ "<%request.setCharacterEncoding(\"EUC-KR\");%>\r\n"
				+ "<jsp:useBean id=\"blogBean\" class=\"blog.BlogBean\"/>\r\n"
				+ "<jsp:useBean id=\"blogMgr\" class=\"blog.BlogMgr\"/>\r\n"
				+ "<jsp:useBean id=\"cateBean\" class=\"blog.CateBean\"/>\r\n"
				+ "<jsp:useBean id=\"cateMgr\" class=\"blog.CateMgr\"/>\r\n"
				+ "<jsp:useBean id=\"postMgr\" class=\"blog.BlogPostMgr\"/>\r\n"
				+ "<%\r\n"
				+ "		String id = \""+id+"\";\r\n"
				+ "		blogBean = blogMgr.getBlogPage(id);\r\n"
				+ "		String blogBanner = blogBean.getBannerImg();\r\n"
				+ "		String blogProfileDesc = blogBean.getProfileDesc();\r\n"
				+ "		String blogProfileImg = blogBean.getProfileImage();\r\n"
				+ "		\r\n"
				+ "%>\r\n"
				+ "\r\n"
				+ "<!DOCTYPE html>\r\n"
				+ "<html>\r\n"
				+ "<head>\r\n"
				+ "	<meta charset=\"EUC-KR\">\r\n"
				+ "	<title>blog</title>\r\n"
				+ "	<link rel=\"stylesheet\" href=\"./resources/css/blog_style.css\">\r\n"
				+ "	<script type=\"text/javascript\" src=\"./resources/js/script.js\"></script>\r\n"
				+ "	\r\n"
				+ "	<script src=\"https://code.jquery.com/jquery-3.4.1.slim.min.js\" integrity=\"sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n\" crossorigin=\"anonymous\"></script>\r\n"
				+ "    <link href=\"https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.css\" rel=\"stylesheet\">\r\n"
				+ "    <script src=\"https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.js\"></script>\r\n"
				+ "    <script src=\" https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.18/lang/summernote-ko-KR.min.js\"></script>\r\n"
				+ "    \r\n"
				+ "</head>\r\n"
				+ "<body>\r\n"
				+ "	<div id=\"root\">\r\n"
				+ "		\r\n"
				+ "		<div id=\"blog-navBarWrap\">\r\n"
				+ "			<div class=\"blog-navbar\">\r\n"
				+ "				<div class=\"blog-navbar-left\">\r\n"
				+ "					<a href=\"../chu/index.jsp\" style=\"width: 81px; height: 26px; margin-left: 18%;\">\r\n"
				+ "						<img src=\"./resources/img/logo-md.png\" alt=\"img\">\r\n"
				+ "					</a> \r\n"
				+ "				</div>\r\n"
				+ "				<div class=\"blog-navbar-right\">\r\n"
				+ "					<select>\r\n"
				+ "						<option>이웃블로그\r\n"
				+ "					</select>\r\n"
				+ "					<div><a href=\"../joon/logout.jsp\">로그아웃</a></div>\r\n"
				+ "				</div>\r\n"
				+ "			</div>\r\n"
				+ "		</div>\r\n"
				+ "		\r\n"
				+ "		<div id=\"mainImgWrap\">\r\n"
				+ "			<div style=\"height: 100%;\">\r\n"
				+ "				<img class=\"bannerImg\" src=\"./resources/img/<%=blogBanner %>\">\r\n"
				+ "			</div>\r\n"
				+ "		</div>\r\n"
				+ "		\r\n"
				+ "		<div id=\"container\">\r\n"
				+ "		\r\n"
				+ "			<div class=\"blog-conLeft\">\r\n"
				+ "				\r\n"
				+ "				<div class=\"blog-profileWrap\">\r\n"
				+ "					<div class=\"blog-profileImg\">\r\n"
				+ "						<div style=\"width: 100%; height: 100%;\">\r\n"
				+ "							<img src=\"./resources/img/<%=blogProfileImg %>\" style=\"width: 100%; height: 100%;\">\r\n"
				+ "						</div>\r\n"
				+ "					</div>\r\n"
				+ "					<div class=\"blog-profileId\">					\r\n"
				+ "						<div><%=id %>님의 블로그</div>\r\n"
				+ "					</div>\r\n"
				+ "					<div class=\"blog-profileDesc\">\r\n"
				+ "						<div><%=blogProfileDesc %></div>\r\n"
				+ "					</div>\r\n"
				+ "				</div>\r\n"
				+ "				<%if(id!=null&&!id.equals(\"\")){ %>\r\n"
				+ "				<div style=\"margin-top: 5px;\">\r\n"
				+ "					<a href=\"blog_<%=id%>_posting.jsp\">글쓰기 </a><small style=\"padding: 5px;\"> / </small>\r\n"
				+ "					<a href=\"blog_<%=id%>_setting.jsp\"> 설정</a>\r\n"
				+ "				</div>\r\n"
				+ "				<%} %>\r\n"
				+ "				<div class=\"blog-postCategorys\">					\r\n"
				+ "					<form class=\"categoryFrm\">\r\n"
				+ "						<div>\r\n"
				+ "							<div class=\"pCategory\"><strong>카테고리</strong></div>\r\n"
				+ "							<%\r\n"
				+ "									Vector<CateBean> cateVlist = new Vector<CateBean>();\r\n"
				+ "									cateVlist = cateMgr.getBlogCategory(id);\r\n"
				+ "									for(int i=0; i<cateVlist.size(); i++){\r\n"
				+ "										cateBean = cateVlist.get(i);\r\n"
				+ "										String cateName = cateBean.getBlogCateName();\r\n"
				+ "										int cateNum = cateBean.getBlogCateNum();\r\n"
				+ "							%>\r\n"
				+ "							\r\n"
				+ "							<div class=\"pCategory\">\r\n"
				+ "								<input type=\"submit\" class=\"textbtn\" name=\"category\" value=\"<%=cateName%>\"></div>\r\n"
				+ "							\r\n"
				+ "							<%	} %>\r\n"
				+ "								\r\n"
				+ "						</div>\r\n"
				+ "					</form>\r\n"
				+ "				</div>\r\n"
				+ "				\r\n"
				+ "			</div>\r\n"
				+ "			\r\n"
				+ "			<div class=\"blog-conRight\">\r\n"
				+ "			\r\n"
				+ "				<div class=\"postWrap\">\r\n"
				+ "					<form name=\"postFrm\" method=\"post\" action=\"postingProc.jsp\" enctype=\"multipart/form-data\">\r\n"
				+ "						<input type=\"text\" name=\"title\" style=\"font-size: 20px; width: 99%; height: 40px;\"\r\n"
				+ "									placeholder=\"제목을 입력하세요\">\r\n"
				+ "						<div style=\"display: flex; justify-content: flex-end;\">\r\n"
				+ "							<select name=\"category\">\r\n"
				+ "								<option>카테고리\r\n"
				+ "								<option value=\"1\">취미\r\n"
				+ "								<option value=\"2\">일상\r\n"
				+ "							</select>\r\n"
				+ "							<select name=\"topic\">\r\n"
				+ "								<option>주제\r\n"
				+ "								<option value=\"1\">IT\r\n"
				+ "								<option value=\"2\">요리\r\n"
				+ "								<option value=\"3\">여행\r\n"
				+ "								<option value=\"4\">예술\r\n"
				+ "								<option value=\"5\">스포츠\r\n"
				+ "							</select>\r\n"
				+ "						</div>\r\n"
				+ "  						<textarea id=\"summernote\" name=\"text\"></textarea>\r\n"
				+ "  						<input multiple=\"multiple\" type=\"file\" name=\"filename[]\">\r\n"
				+ "  						<input type=\"submit\" value=\"저장\">\r\n"
				+ "  						<input type=\"hidden\" name=\"bid\" value=\"cjsgoddns\">\r\n"
				+ "					</form>\r\n"
				+ "				</div>\r\n"
				+ "				\r\n"
				+ "			</div>			\r\n"
				+ "		</div>\r\n"
				+ "	</div>\r\n"
				+ "</body>\r\n"
				+ "<script>\r\n"
				+ "$('#summernote').summernote({\r\n"
				+ "        placeholder: '내용을 입력하세요',\r\n"
				+ "        tabsize: 2,\r\n"
				+ "        height: 120,\r\n"
				+ "        toolbar: [\r\n"
				+ "          ['style', ['style']],\r\n"
				+ "          ['font', ['bold', 'underline', 'clear']],\r\n"
				+ "          ['color', ['color']],\r\n"
				+ "          ['para', ['ul', 'ol', 'paragraph']],\r\n"
				+ "          ['table', ['table']],\r\n"
				+ "          ['insert', ['link', 'picture', 'video']],\r\n"
				+ "          ['view', ['fullscreen', 'codeview', 'help']]\r\n"
				+ "        ]\r\n"
				+ "      });\r\n"
				+ "</script>  \r\n"
				+ "</html>";
		return blogPostingTemplate;
	}
}