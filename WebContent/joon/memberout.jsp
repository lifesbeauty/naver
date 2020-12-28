<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>

<% request.setCharacterEncoding("EUC-KR"); %>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<meta name="format-detection" content="telephone=no">
<meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0">
<meta http-equiv="Cache-Control" content="no-store, no-cache, must-revalidate">
<meta http-equiv="Cache-Control" content="post-check=0, pre-check=0">
<meta http-equiv="Pragma" content="No-Cache">

<title>ȸ��Ż�� �ȳ� : ���̹� ������</title>

<script type="text/javascript" src="/inc/common/js/jquery.min.js"></script>
<link rel="stylesheet" type="text/css" href="resources/css/out.css">
<link href="https://nid.naver.com/favicon_1024.png" rel="apple-touch-icon-precomposed" sizes="1024x1024" />
<script type="text/javascript" src="https://nid.naver.com/js/clickcr.js"></script>
<script type="text/javascript" src="/inc/common/js/lcs_nclicks.js"></script>
<script type="text/javascript" src="https://nid.naver.com/inc/common/js/ko/commonUtil.js?20170214"></script>
<script type="text/javascript" src="/inc/common/js/lua.js"></script>
<script type="text/javascript">
	var gnb_option = {
		gnb_service : "nid",
		gnb_template : "gnb_utf8",
		gnb_logout : encodeURIComponent("https://nid.naver.com/user2/help/myInfo.nhn?menu=home"),
		gnb_brightness : 1,
		gnb_one_naver : 1,
		gnb_item_hide_option : 0
	}

	lcs_do();

	function gnbClose(){
		$('#wrap').click(function(e){
			if( !$('#gnb').has(e.target).length ){
				gnbAllLayerClose();
			}
		});
	}
	//120919 win8 �̽� ���� : capslock �ڵ���������
	document.msCapsLockWarningOff = true;
	function setContainerHeight(height) {}
	function clearDocs(){}
</script>
<meta name="decorator" content="NEW_USER_MYINFO">
<script type="text/javascript">
var nsc = "my.info"+ "";
var ccsrv = "cc.naver.com";

</script>
</head>

<body onclick="clearDocs();gnbClose();" id="mainBody">
<div id="wrap">
	<!-- ��ŵ�׺���̼� : �����ټ�����-->
	<div id="u_skip">
<!-- [D] �ָ޴��� �����ϴ� �������� ���� -->
<a href="#lnb" onclick="document.getElementById('lnb_area').tabIndex=-1;document.getElementById('lnb_area').focus();return false;"><span>�ָ޴��� �ٷΰ���</span></a>
<a href="#content" onclick="document.getElementById('content').tabIndex=-1;document.getElementById('content').focus();return false;"><span>�������� �ٷΰ���</span></a>
	</div>
	<!-- //��ŵ�׺���̼� -->
	<div id="header">
		<div class="top">
			<h1>
				<a href="http://www.naver.com" target="_top" onclick="clickcr(this,'STA.naver','','',event);" class="link_logo"><span class="sptxt">NAVER</span><em></em></a>
				<a href="/user2/help/myInfo.nhn?lang=ko_KR" onclick="clickcr(this,'STA.my','','',event);" class="link_subtit "><span class="sptxt">������</span><em></em></a>
			</h1>
			<div class="gnb_area">
				<div id="gnb" class="gnb_one">
					<script type='text/javascript' charset='utf-8' src='https://static.nid.naver.com/template/gnb_utf8.nhn?2020. 12. 23'></script>
				</div>
			</div>
		</div>
		<div id="lnb_area">
			<div class="lnb">
	            <ul> 
					<li id="nid"><a href="/user2/help/myInfo.nhn?lang=ko_KR" onclick="clickcr(this,'LNB.myinfo','','',event);">ȸ������<em></em></a></li>
					<li id="security"><a href="/user2/help/myInfo.nhn?m=viewSecurity&lang=ko_KR" onclick="clickcr(this,'LNB.protect','','',event);">���ȼ���<em></em></a></li>
				</ul>
			</div>
		</div>
<script type="text/javascript">
document.getElementById("nid").className = "selected";

var tagList = "nid security ";
var menu = "";
if(menu == "nid1_sub_m3" || menu.substring(0,4) == "nid2") { 
	menu = "security";
} else if( menu.substring(0,4) == "nid1" ) { 
	menu = "nid"; 
} else if( menu.substring(0,4) == "nid1" ) { 
	menu = "security"; 
} else if(menu == "" || menu == "null" || menu == null || tagList.indexOf(menu) == -1){
	menu = "nid";
} 

showMenu(menu);
function showMenu(subMenu) {
	document.getElementById(subMenu).className = "on";
	
	var otherMenu = tagList.replace(subMenu + " ", "").split(" ");
	for (var i = 0; i < otherMenu.length - 1; i++) {
		document.getElementById(otherMenu[i]).className = "";
	}
}
</script>	</div>

	<div id="container">
		<!-- CONTENTS -->
		<!-- CONTENTS -->
	<div id="content">
		<div class="c_header">
			<h2>Ż�� �ȳ�</h2>
			<p class="contxt">ȸ��Ż�� ��û�ϱ� ���� �ȳ� ������ �� Ȯ�����ּ���.</p>
		</div>

		<!-- [D] input type="text"�� focus �Ǿ����� class�� on �߰� (ie6,ie7 ����) -->
		<div class="section_delete">
			<h3 class="h_dropout">
						     	  ����ϰ� ��� ���̵�(<em> </em>)�� Ż���� ��� ���� �� ������ �Ұ����մϴ�.
						     </h3>
			<p class="dropout_dsc">
						     	  <em>Ż���� ���̵�� ���ΰ� Ÿ�� ��� ���� �� ������ �Ұ�</em>�Ͽ��� �����ϰ� �����Ͻñ� �ٶ��ϴ�.
						     </p>
			<h3 class="h_dropout">Ż�� �� ȸ������ �� ������ ���� �̿����� ��� �����˴ϴ�.</h3>
			<p class="dropout_dsc">
						     	  ȸ������ �� ����, ��α�, �ּҷ� �� ������ ���� �̿����� ��� �����Ǹ�, ������ �����ʹ� �������� �ʽ��ϴ�.<br>�����Ǵ� ������ Ȯ���Ͻð� �ʿ��� �����ʹ� �̸� ����� ���ּ���.
						     </p>
			<table cellspacing="0" border="1" summary="Ż�� �� ȸ������ �� ������ ���� �̿��� ���� �ȳ�" class="tbl_type">
			<caption>Ż�� �� ȸ������ �� ������ ���� �̿����� ��� �����˴ϴ�.</caption>
			<colgroup>
			<col width="145"><col width="*">
			</colgroup>
			<tbody id="tblBullet1"> 
			<tr>
			<th scope="row">����</th>
			<td>���� ���� �� ���� ���� ���� ����</td>
			</tr>
			<tr>
			<th scope="row">��α�</th>
			<td>��α� ���� �� �Խù� ����</td>
			</tr>
            <tr>
                <th scope="row">����Ʈ</th>
                <td>����Ʈ ���� �� �Խù� ����</td>
            </tr>
			<tr>
				<th scope="row">VIBE, ���̹�����</th>
				<td>
								�̿��� ���� öȸ, �÷��̸���Ʈ, &#39;���ƿ�&#39;�� �뷡 �� ����
							</td>
			</tr>

			<tr>
			<th scope="row">modoo!(���)</th>
			<td>��ϵ� Ȩ������ �� �Խù� ����</td>
			</tr>			
			<tr>
			<th scope="row">���̹� MYBOX</th>
			<td>����� ���� ���� (Ż�� �� �������������� �ٸ� ���̵�� ���� ����)</td>
			</tr>
			<tr>
			<th scope="row">����ĳ��Ʈ</th>
			<td>����� �ٹ� �� ���� ����</td>
			</tr>
			<tr>
			<th scope="row">�ּҷ�</th>
			<td>����� �ּ� ���� �� �ּ� ������Ʈ �ߴ�</td>
			</tr>

			<tr>
			<th scope="row">�����</th>
			<td>�� ����� ���� �� ����� �Խñ� ���賻�� ����</td>
			</tr>
			<tr>
			<th scope="row">�ֵ�����Ʈ</th>
			<td>��ȯ ��û ���̰ų� ���� ��� ���� ���Ա��� ������ �ܿ� ���� �Ҹ�</td>
			</tr>
			<tr>
			<th scope="row">���Ǻ�</th>
			<td>������� �� ���� ��û�� �ݵ� �ߴ�</td>
			</tr>
			<tr>
			<th scope="row">�ҼȰ���</th>
			<td>��α�, ī�� ��ġ �Ǵ� ������ ���� �� ���� ������ ���� (ȯ�ҺҰ�)</td>
			</tr>
			<tr>
			<th scope="row">�¶��ΰ���</th>
			<td>���ӸӴ�, ���ӵ��, ������, ĳ���� �� �����÷��̿� ���� ��� ���� ����</td>
			</tr>
			<tr>
				<th scope="row">���̹� ������</th>
				<td>������/�̿��̷� Ȯ�� �Ұ�</td>
			</tr>
			<tr>
				<th scope="row">���̹� ���ڹ���</th>
				<td>���̹� ���ڹ���(������, �ȳ���, ������ ��) ���� ����, �̿� �Ǵ� Ȯ�� �Ұ�</td>
			</tr>
			<tr>
			<th scope="row">���̹� ����</th>
			<td>�̿볻��, ���� ���� ���� ���� �� ���õ� ��� ���� ����, ����Ʈ �Ҹ� �� ��� ���� öȸ</td>
			</tr>
			<tr>
				<th scope="row">���̹��÷��� �����</th>
				<td>�̿� ���� ���� �� ��� ���� öȸ</td>
			</tr>
			<tr>
			<th scope="row">���̹� ���� ��Ʈ�ʼ���</th>
			<td>���̹� ���� ��ȭ���, ��ȭ��븦 ������ ��� Ȱ�� ���� ����</td>
			</tr>

			<tr>
				<th scope="row">������</th>
				<td>�������� ���� ������ �ڵ����� ��ҵǸ� �߽��ο��� ȯ��</td>
			</tr>
			<tr>
				<th scope="row">�����Ŭ��</th>
				<td>���� ä��, ����/�뿩�� �������, �ֱ� ���� Ŭ��, �ϸ�ũ ���� ����</td>
			</tr>
			<tr>
			<th scope="row">�̿��</th>
			<td>����, Ŭ����, �޽���, �Ͻ����, �����ǽŹ�, �Ƿηγ��̱��� �� �̿�� ����</td>
			</tr>
            <tr>
                <th scope="row">���÷�� �˻�</th>
                <td>���÷�� Ȩ ���� �� �Խù� ����</td>
            </tr>
            <tr>
                <th scope="row">����ĳ��Ʈ</th>
                <td>� ���� ĳ��Ʈ ä�� �� ���� ���� ĳ��Ʈ ��ũ������ ����</td>
            </tr>
            <tr>
                <th scope="row">�׶�������</th>
                <td>�Խ����� ������ ���</td>
            </tr>
            <tr>
                <th scope="row">����Ƽ��</th>
                <td>����Ƽ�� ���� �� �Խù� ����</td>
            </tr>
			<tr>
				<th scope="row">�ø���</th>
				<td>���ų���(��Ű, �̿�� ��) ���� �� ���� ��ǰ ���� �Ұ�</td>
			</tr>
			<tr>
			<th scope="row">��Ÿ</th>
			<td>���̵� ����� ������ ������ ���� �� �Խù� ����</td>
			</tr>
			</tbody>
			</table>
			<div class="more_wrap"> 
               <a id="more_list1" class="btn_more">������</a> 
           </div> 
			<h3 class="h_dropout">Ż�� �Ŀ��� �Խ����� ���񽺿� ����� �Խù��� �״�� ���� �ֽ��ϴ�.</h3>
			<p class="dropout_dsc">����, ī��, ����iN � �ø� �Խñ� �� ����� Ż�� �� �ڵ� �������� �ʰ� �״�� ���� �ֽ��ϴ�.
			<br>
						     	  ������ ���ϴ� �Խñ��� �ִٸ� <em>�ݵ�� Ż�� �� ����� ó���ϰų� �����Ͻñ� �ٶ��ϴ�.</em>
						     
			<br>
								Ż�� �Ŀ��� ȸ�������� �����Ǿ� ���� ���θ� Ȯ���� �� �ִ� ����� ����, �Խñ��� ���Ƿ� �����ص帱 �� �����ϴ�. <br>�Խ����� ���� �� "�׶�������"�� ����� �����˴ϴ�.
							 
			</p>
			<table cellspacing="0" border="1" summary="Ż�� �� �Խ����� ���񽺿� ����� �Խù� ���� �ȳ�" class="tbl_type">
			<caption>Ż�� �Ŀ��� �Խ����� ���񽺿� ����� �Խù��� �״�� ���� �ֽ��ϴ�.</caption>
			<colgroup>
			<col width="145"><col width="*">
			</colgroup>
			<tbody id="tblBullet2"> 
			<tr>
			<th scope="row">����iN</th>
			<td>����, �亯, �ǰ�, eXpert ����, eXpert ���� (��, ������/�亯�� ���̵� ����� ó����)</td>
			</tr>
			<tr>
			<th scope="row">ī��</th>
			<td>�Խù� �� ���</td>
			</tr>
			<tr>
			<th scope="row">����</th>
			<td>���</td>
			</tr>
			<tr>
				<th scope="row">VIBE, ���̹�����</th>
				<td>
								�Խù�, ���, �Խñۿ� ���� &#39;���ƿ�&#39; ��
							</td>
			</tr>
			<tr>
			<th scope="row">�����</th>
			<td>����� Ȩ�� ������ �Խù� �� ����</td>
			</tr>
			<tr>
			<th scope="row">���Ǻ�</th>
			<td>��������, ���/����/�������/������û����, �ὺ��� ��ǰ����/�ı� ��</td>
			</tr>
			<tr>
			<th scope="row">����, ���Ҽ�</th>
			<td>�Խù� �� ���</td>
			</tr>
			<tr>
				<th scope="row">�ø���</th>
				<td>���</td>
			</tr>
            <tr>
                <th scope="row">����Ƽ��</th>
                <td>���, ������, ������/�귣��/���/�ؽ� �±�</td>
            </tr>
			<tr>
				<th scope="row">�����Ŭ��</th>
				<td>��� �� ���ƿ�</td>
			</tr>
			<tr>
			<th scope="row">��Ÿ</th>
			<td>������ ������ �Խù�, ��� �� �ǰ�</td>
			</tr>
			</tbody>
			</table>
           <div class="more_wrap"> 
               <a id="more_list2" class="btn_more">������</a> 
           </div> 
           
			<h3 class="h_dropout">���̹� ���̵� ����� �ٸ� ���񽺿� �α��� �� �� ���� �˴ϴ�.</h3>
			<p class="dropout_dsc">
				���̹� ���̵�� �α����Ͽ� ��� ���̴� �ܺ� ����Ʈ�� �湮�Ͽ�<br>
				<em>�ٸ� �α��� ������ �غ��ϰų�, �����͸� ����� �� ���̹� ȸ���� Ż���ؾ� �մϴ�.</em>
			</p>
			<a id="lnk_external" class="btn_text_link">���̹� ���̵�� �α����� ���� ������ ����Ʈ Ȯ��</a>
           
			<form name="fm" id ="fm" method="post" action="/user2/help/leaveId.nhn?m=viewInputUserInfo">
				<input type="hidden" name="token_help" value="JxrHbKedEPcRqSl2" />
				<input type="hidden" name="lang" value="ko_KR" />
				<div class="dropout_agree_area">
					<p class="contxt">
						<strong>
						     	  Ż�� �Ŀ��� ���̵� <em> </em> �� �ٽ� ������ �� ������ ���̵�� �����ʹ� ������ �� �����ϴ�.
						     <br>
								 �Խ����� ���񽺿� ���� �ִ� �Խñ��� Ż�� �� ������ �� �����ϴ�.<br>����, ���̹� ���̵� ����� �ٸ� ���񽺿� �α��� �� �� ���� �˴ϴ�. 
							</strong>
					</p>
					<input type="checkbox" id="dropoutAgree" name="dropoutAgree" onclick="clickcr(this,'otn.guideagree','','',event);" >
					<label for="dropoutAgree"><strong>�ȳ� ������ ��� Ȯ���Ͽ�����, �̿� �����մϴ�.</strong></label>
				</div>
				<div class="btn_area_w">
					<p class="btn_area">
						<a href="#99" id="btnNext" class="btn_model"><b class="btn3">Ȯ��</b></a>
					</p>
				</div>				
			</form>
		</div>
	</div>
	<hr />
<script type="text/javascript">
$(document).ready(function() {

    var rowCount1 = $('#tblBullet1').children('tr').length;
    var rowCount2 = $('#tblBullet2').children('tr').length;
    
	$("#tblBullet1 tr").hide();
	$("#tblBullet2 tr").hide();
	    
	if(rowCount1 > 5){
		$('#more_list1').show();
		$("#more_list1").parent().show();
	    $("#tblBullet1 tr:hidden").slice(0, 5).show();          
	}
	
	if(rowCount2 > 5){
		$('#more_list2').show();
		$("#more_list2").parent().show();
	    $("#tblBullet2 tr:hidden").slice(0, 5).show();
	}
	
	setContainerHeight(document.getElementById('content').clientHeight);
	
	$('#more_list1').css('cursor','pointer');
	$(document).on("click", "#more_list1", function(event){
		var currentLength = $("#tblBullet1 tr:visible").length;
		var rowCount1 = $('#tblBullet1').children('tr').length;
		if(rowCount1 > (currentLength + 5)){
			$("#tblBullet1 tr").slice(0, currentLength + 5).show();
		}else{
			$("#tblBullet1 tr").slice(0, rowCount1).show();
			$('#more_list1').hide();
			$("#more_list1").parent().hide();
		}
		
		setContainerHeight(document.getElementById('content').clientHeight);
	});	
	
	$('#more_list2').css('cursor','pointer');
	$(document).on("click", "#more_list2", function(event){
		var currentLength = $("#tblBullet2 tr:visible").length;
		var rowCount2 = $('#tblBullet2').children('tr').length;
		if(rowCount2 > (currentLength + 5)){
			$("#tblBullet2 tr").slice(0, currentLength + 5).show();
		}else{
			$("#tblBullet2 tr").slice(0, rowCount2).show();
			$('#more_list2').hide();
			$("#more_list2").parent().hide();
		}
		
		setContainerHeight(document.getElementById('content').clientHeight);
	});		
	
	$('#btnNext').css('cursor','pointer');
	$(document).on("click", "#btnNext", function(event){
		clickcr(this,'otn.guideconfirm','','',window.event);
		if( $("#dropoutAgree").is(":checked")){
			$("#fm").submit();
		}else{
			alert("Ż�� �ȳ��� Ȯ���ϰ� ������ �ּ���.");
			$("#dropoutAgree").focus();
		}
	});	
	
	$('#lnk_external').css('cursor','pointer');
	$(document).on("click", "#lnk_external", function(event){
		rurl ="/user2/help/externalAuth.nhn?menu=security&lang=ko_KR";
		$("#lnk_external").attr("target","_blank");
		window.open(rurl);
	});	
	
});		
</script>
	</div>

	<div id="footer">
<ul class="policy_lst">


</ul>
<address>
	<a href="http://www.navercorp.com/" target="_blank"  onclick="clickcr(this,'fot.nhncorp','','',event);" class="logo">NAVER</a>

</address>

<script type="text/javascript" src="/inc/common/js/jquery.resize.js"></script>
<script type="text/javascript">
var ua = window.navigator.userAgent.toLowerCase();
var cur_container_height = Number(document.getElementById("content").clientHeight);
var min_container_height = 647;
var header_height = 140;
var footer_height = 85;

window.onload = changeContentSize; // Window â �ε��
window.onresize = changeContentSize; // Window â ũ�⸦ �����Ҷ�����
$("#content").resize(changeContentSize);

function changeContentSize() {
	cur_container_height = Number(document.getElementById("content").clientHeight);

	var container_height = min_container_height;
	var window_height = Number(document.documentElement.clientHeight) - header_height - footer_height;
	if (window_height > cur_container_height) {
		if (window_height > min_container_height) {
			container_height = window_height;
		}
	} else {
		if (cur_container_height > min_container_height) {
			container_height = cur_container_height;
		}
	}
	
    if (navigator.appName == 'Netscape' && navigator.userAgent.search('Trident') != -1) { // ie11 �߰�
        document.getElementById("container").style.height = container_height + "px";
    }else if (window.navigator.userAgent.indexOf("MSIE") == -1 || (document.all && window.XMLHttpRequest)) { // ie6 ����
        document.getElementById("container").style.height = container_height + "px";
    } else {
        document.getElementById("container").style.height ="100%";
    }
}

function setContainerHeight(height) {
	if (height >= 0) {
		cur_container_height = height;
	} else {
		cur_container_height = Number(document.getElementById("container").clientHeight);
	}
	
	if(height == -9 || height == 0 || height == "undefined"){ //�������� ����ó�� //ie7����
		document.getElementById("container").style.height ="100%";
	}else{
		changeContentSize();
	}
}
</script>	</div>
</div>

<script type="text/javascript">
getGNB();

window.onresize = function() {
	setContainerHeight(document.getElementById('content').clientHeight);
}
</script>
</body>
</html>
