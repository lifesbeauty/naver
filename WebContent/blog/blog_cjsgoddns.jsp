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
					<option>�̿���α�
				</select> 
			</div>
		</div>
		
		<div id="mainImgWrap">
			<div>�����̹���</div>
		</div>
		<div id="container">
		
			<div class="blog-conLeft">
				
				<div class="blog-profileWrap">
					<div class="blog-profileImg">
						<div>����</div>
					</div>
					<div class="blog-profileId">					
						<div>���̵�</div>
					</div>
					<div class="blog-profileDesc">
						<div>�� ��</div>
					</div>
				</div>
				<div style="margin-top: 5px;">�۾���</div>
				<div class="blog-postCategorys">					
					<form class="categoryFrm">
						<ul>
							<li class="pCategory"><strong>ī�װ�</strong></li>
							<li class="pCategory">
								<input type="submit" class="textbtn" name="category" value="IT"></li>
  							<li class="pCategory">
								<input type="submit" class="textbtn" name="category" value="���"></li>						
  							<li class="pCategory">
								<input type="submit" class="textbtn" name="category" value="�"></li>
						</ul>
					</form>
				</div>
				
			</div>
			
			<div class="blog-conRight">
			
				<div class="postWrap">
					��
				</div>
				<div class="postListWrap">
					<div class="postListTop">
						<div>IT 9���� ��</div>
						<select>
							<option>5�� ����</option>
							<option>10�� ����</option>
							<option>15�� ����</option>
						</select>
					</div>
					<div class="postListBottom">
						<table style="width: 95%;">
							<thead>
								<tr>
									<td style=" width:80%">����</td>
									<td style="width:10%">�ۼ���</td>
									<td style="width:10%">��ȸ��</td>
								<tr>
							</thead>
							<tbody>
								<tr>
									<td style=" width:80%">��̱���</td>
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