<%@page import="joinmember.MemberMgr"%>
<%@page import="joinmember.MemberBean"%>
<%@ page contentType="text/html; charset=EUC-KR"%>
<% request.setCharacterEncoding("EUC-KR"); %>
<jsp:useBean id="mgr" class="joinmember.MemberMgr"/>
<jsp:useBean id="bean" class="joinmember.MemberBean"/>
<jsp:setProperty property="*" name="bean"/>
<%
		boolean result = mgr.updateMember(bean);//DB ����
		String msg = "���� ����";
		String url = "teamList.jsp";
		if (result){
			msg = "���� ����";
		}
%>
<script>
	alert("<%=msg%>");
	location.href = "<%=url%>";
</script>