<%@ page contentType="text/html; charset=EUC-KR"%>

<%
		request.setCharacterEncoding("EUC-KR");
%>


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

<title>���̹� ������</title>

<script type="text/javascript" src="/inc/common/js/jquery.min.js"></script>
<link rel="stylesheet" type="text/css" href="resources/css/update.css">
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
 
function toggle(obj){
	if(document.getElementById("p_" + obj).style.display == "block"){
		document.getElementById("p_" + obj).style.display="none";
		document.getElementById("i_" + obj).className="spico ico_arr3_dn";
	}else{
		document.getElementById("p_" + obj).style.display="block";
		document.getElementById("i_" + obj).className="spico ico_arr3_up";
	}
	
	setContainerHeight(document.getElementById('content').clientHeight);
}

function changeImage() {
	var goUrl = "/user2/help/naverProfile.nhn?lang=ko_KR";
	document.location.href = goUrl;
}
function closeNudge() {
	document.getElementById("divNudge").style.display="none";
}
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
var menu = "nid";
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
		<div id="content" class="section_home">
			<div class="column">

				<!-- ������ ���� -->
				<div class="sh_group">
					<div class="sh_header">
						<h2>���̹� ������</h2>
						<a href="javascript:toggle('profile');" onclick="clickcr(this,'imn.prfhelp','','',event);" class="link_help"><i id="i_profile" class="spico ico_arr3_dn">����</i></a>
						<!-- [D] ���߱� ���̱� dislay:none/block -->
						<p id="p_profile" class="contxt" style="display:none">
						     	  ���̹������� <em>&#39;��&#39;�� ǥ���ϴ� ������</em> �����Դϴ�.
						     <br>
						���� ȭ�鿡�� ������ ������ ������ �����ϼ���.</p>
					</div>
					<div class="sh_content">
						<dl class="sh_lst">
						<dt class="blind">������ ����</dt>
						<dd class="pic_desc">
							<a href="#" onclick="changeImage();clickcr(this,'imn.prfmodify','','',event);">
								<img src= width="80" height="80" alt="">
								<span class="spimg img_frame"></span>
							</a>
						</dd>
						<dt class="blind">&nbsp;</dt>
						<dd class="intro_desc">&nbsp;</dd>
						<dt class="nic_tit">����</dt>
						<dd class="nic_desc"></dd>
						</dl>
					</div>
					<p class="btn_area_btm"><a href="#" onclick="changeImage();clickcr(this,'imn.prfmodify','','',event);" class="btn_model"><b class="btn2">����</b></a></p>
				</div>

				<!-- ���̹�Sign ���� -->
				<div class="sh_group">
					<div class="sh_header">
						<h2>���̹� ������ <i class="spico ico_new">NEW</i></h2>
					</div>
					<div class="sh_content">
						
								<p class="contxt">������ ������ �����ϰ�!<br>�ѹ� �߱����� 3�� ���� ���ϰ� �̿��� ������.</p>
							
					</div>
					<p class="btn_area_btm">
						<a href="/user2/eSign/v1/home/land?lang=ko_KR" class="btn_model" onclick="clickcr(this,'imn.signhis','','',event);"><b class="btn2">�� ������ Ȯ��</b></a>
						<a href="/user2/help/externalAuth.nhn?lang=ko_KR" class="btn_model" onclick="clickcr(this,'imn.signhis','','',event);"><b class="btn2">���� ���� ����</b></a>
					</p>
				</div>

				<!-- ����� ���� -->
					<div class="sh_group">
						<div class="sh_header">
							<h2>����� ����</h2>
						</div>
						<div class="sh_content">
							<p class="contxt">���� ������ ����� �� �ֱ� ����� �������<br> ������ �� �ֽ��ϴ�.</p>
						</div>
						<p class="btn_area_btm"><a href="https://pay.naver.com/shipping/list" class="btn_model" onclick="clickcr(this,'imn.addcheck','','',event);"><b class="btn2">��ȸ�ϱ�</b></a></p>
					</div>
			</div>
			<div class="column">
					<!-- �Ϲݾ��̵� ����ó -->
					<div class="sh_group ">
						<div class="sh_header">
							<h2>����ó �� �˸�</h2>
							<a href="javascript:toggle('userInfo');" onclick="clickcr(this,'imn.cnthelp','','',event);" class="link_help"><i id="i_userInfo" class="spico ico_arr3_dn">����</i></a>
							<p id="p_userInfo" class="contxt" style="display:none">
						     	  ���̹����� <em>�߿� ������ �˷��帱 �� ���</em>�ϴ� ����ó �����Դϴ�.
						      ���� ������ ���� ��ȣ�� ���� ��ϵ� ����ó�� �Ϻθ� �����帳�ϴ�.
						      �̸� �� ��Ȯ�� ����ó ������ ���� ȭ�鿡�� Ȯ�� �����մϴ�.
						     </p>
						</div>
						<div class="sh_content">
							<dl class="sh_lst2">
							<dt>����ó �̸���</dt>
							<dd> </dd>
							<dt>����Ȯ�� �̸���</dt>
							<dd> </dd>
							<dt>�޴���ȭ</dt>
							<dd> </dd>
							</dl>
							<dl class="sh_lst2 nudge" id="divNudge">
								<dt></dt>
								<dd>
									<div class="nudge_tooltip">
										<span class="banner_area">
										<span class="nudge_edge"></span>
										<span class="text">����ó�� �´��� <em class="yellow_point">Ȯ���ϼ���.</em></span>
										<a href="javascript:closeNudge();" role="button" aria-label="�ݱ�" class="nudge_close"></a>
									</span>
									</div>
								</dd>
							</dl>
						</div>
						<p class="btn_area_btm"><a href="/user2/help/changeUserInfo.nhn?menu=nid&lang=ko_KR" onclick="clickcr(this,'imn.cntmodify','','',event);" class="btn_model"><b class="btn2">����</b></a></p>
					</div>
				<!-- ���� ���� -->
				<div class="sh_group">
					<div class="sh_header">
						<h2>���� ����</h2>
						<a href="javascript:toggle('region');" onclick="clickcr(this,'imn.reghelp','','',event);" class="link_help"><i id="i_region" class="spico ico_arr3_dn">����</i></a>
						<p id="p_region" class="contxt" style="display:none">
						     	  ���̹� ���񽺿��� <em>�������� ���Ǵ� ���� ����</em>�Դϴ�.
						     <br>
							�����Ǿ� �ִ� ��� ������ ���ų� �����Ͻ÷��� �����ϱ⸦ Ŭ���ϼ���.</p>
					</div>
					<div class="sh_content">
							<p class="contxt">
						     	  ������ ������ �����ϴ�.<br>���� �� �ֺ��� ���������� �����ϼ���!
						     </p>
					</div>
					<p class="btn_area_btm"><a href="/user2/help/region.nhn?menu=nid&lang=ko_KR" onclick="clickcr(this,'imn.regmodify','','',event);" class="btn_model"><b class="btn2">�����ϱ�</b></a></p>
				</div>
			</div>

				<p class="desc_sub">������ �������� �̿볻���� �ñ��ϴٸ� <a href="/user2/help/privacyInfo.nhn" class="more" target="_blank" onclick="clickcr(this,'imn.privacychk','','',event);">�������� �̿볻�� ����</a></p>
			<p class="desc_sub">���̹��� �� �̻� �̿����� �ʴ´ٸ� <a href="/user2/help/leaveId.nhn?menu=nid&lang=ko_KR" onclick="clickcr(this,'imn.memberout','','',event);" class="more">ȸ��Ż�� �ٷΰ���</a></p>
		</div>
		<!-- //CONTENTS -->
<script type="text/javascript">
document.getElementById("mainBody").className = "skin_main";
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
