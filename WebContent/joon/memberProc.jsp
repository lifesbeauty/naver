<%@page import="joinmember.BlogTemplate"%>
<%@page import="java.io.FileOutputStream"%>
<%@page import="java.io.OutputStreamWriter"%>
<%@page import="java.io.BufferedWriter"%>
<%@page import="java.io.FileWriter"%>
<%@ page contentType="text/html; charset=EUC-KR"%>
<%request.setCharacterEncoding("EUC-KR"); %>
<jsp:useBean id="mgr" class="joinmember.MemberMgr"/>
<jsp:useBean id="bean" class="joinmember.MemberBean"/>
<%
		bean.setId(request.getParameter("id"));
		bean.setName(request.getParameter("name"));
		bean.setPswd1(request.getParameter("pswd1"));
		bean.setPswd2(request.getParameter("pswd2"));
		bean.setBirth_yy(request.getParameter("birth_yy"));
		bean.setBirth_mm(request.getParameter("birth_mm"));
		bean.setBirth_dd(request.getParameter("birth_dd"));
		bean.setGender(request.getParameter("gender"));
		bean.setMobile(request.getParameter("mobile"));
		
		String id = request.getParameter("id");

		String msg = "가입에 실패하였습니다.";		
		
		BlogTemplate btemp = new BlogTemplate();
		
		String blogTemplate = btemp.blogTemplate(id);
		String welcomeTemplate = btemp.blogWelcomeTemplate(id);
		String settingTemplate = btemp.blogSettingTemplate(id);
		String postingTemplate = btemp.blogPostingTemplate(id);
		
		boolean result = mgr.insertMember(bean);
		if(result){
			msg = "회원가입을 축하드립니다.";
			
			BufferedWriter createBlog = new BufferedWriter(
					new OutputStreamWriter(
							new FileOutputStream("C:/Jsp/naver/WebContent/blog/blog_"+id+".jsp"), "euc-kr"));
				createBlog.write(blogTemplate);
				createBlog.close();
				
			BufferedWriter createBlogWelcome = new BufferedWriter(
					new OutputStreamWriter(
							new FileOutputStream("C:/Jsp/naver/WebContent/blog/blog_"+id+"_welcome.jsp"), "euc-kr"));
				createBlogWelcome.write(welcomeTemplate);
				createBlogWelcome.close();

			BufferedWriter createBlogSetting = new BufferedWriter(
					new OutputStreamWriter(
							new FileOutputStream("C:/Jsp/naver/WebContent/blog/blog_"+id+"_setting.jsp"), "euc-kr"));
				createBlogSetting.write(settingTemplate);
				createBlogSetting.close();
			
			BufferedWriter createBlogPosting = new BufferedWriter(
					new OutputStreamWriter(
							new FileOutputStream("C:/Jsp/naver/WebContent/blog/blog_"+id+"_posting.jsp"), "euc-kr"));
				createBlogPosting.write(settingTemplate);
				createBlogPosting.close();
				
			response.sendRedirect("login.jsp");
		}
%>
<script>
alert(<%=msg%>);
</script>