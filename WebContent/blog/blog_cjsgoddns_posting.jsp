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
	
	<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.js"></script>
    <script src=" https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.18/lang/summernote-ko-KR.min.js"></script>
    
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
					<form method="post" action="postingProc.jsp">
						<input type="text" name="title" style="font-size: 20px; width: 99%; height: 40px; margin-bottom: 5px;"
									placeholder="������ �Է��ϼ���">
  						<textarea id="summernote" name="contents"></textarea>
  						<input type="submit" value="����">
  						<input type="hidden" name="bid" value="cjsgoddns">
  						<input type="hidden" name="category" value="IT">
					</form>
				</div>
				
			</div>			
		</div>
	</div>
</body>
<script>
$('#summernote').summernote({
        placeholder: '������ �Է��ϼ���',
        tabsize: 2,
        height: 120,
        toolbar: [
          ['style', ['style']],
          ['font', ['bold', 'underline', 'clear']],
          ['color', ['color']],
          ['para', ['ul', 'ol', 'paragraph']],
          ['table', ['table']],
          ['insert', ['link', 'picture', 'video']],
          ['view', ['fullscreen', 'codeview', 'help']]
        ]
      });
</script>  
</html>