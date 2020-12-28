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

<title>네이버 내정보</title>

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
	//120919 win8 이슈 대응 : capslock 자동설정해제
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
	<!-- 스킵네비게이션 : 웹접근성대응-->
	<div id="u_skip">
<!-- [D] 주메뉴가 존재하는 페이지에 적용 -->
<a href="#lnb" onclick="document.getElementById('lnb_area').tabIndex=-1;document.getElementById('lnb_area').focus();return false;"><span>주메뉴로 바로가기</span></a>
<a href="#content" onclick="document.getElementById('content').tabIndex=-1;document.getElementById('content').focus();return false;"><span>본문으로 바로가기</span></a>
	</div>
	<!-- //스킵네비게이션 -->
	<div id="header">
		<div class="top">
			<h1>
				<a href="http://www.naver.com" target="_top" onclick="clickcr(this,'STA.naver','','',event);" class="link_logo"><span class="sptxt">NAVER</span><em></em></a>
				<a href="/user2/help/myInfo.nhn?lang=ko_KR" onclick="clickcr(this,'STA.my','','',event);" class="link_subtit "><span class="sptxt">내정보</span><em></em></a>
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
					<li id="nid"><a href="/user2/help/myInfo.nhn?lang=ko_KR" onclick="clickcr(this,'LNB.myinfo','','',event);">회원정보<em></em></a></li>
					<li id="security"><a href="/user2/help/myInfo.nhn?m=viewSecurity&lang=ko_KR" onclick="clickcr(this,'LNB.protect','','',event);">보안설정<em></em></a></li>
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

				<!-- 프로필 설정 -->
				<div class="sh_group">
					<div class="sh_header">
						<h2>네이버 프로필</h2>
						<a href="javascript:toggle('profile');" onclick="clickcr(this,'imn.prfhelp','','',event);" class="link_help"><i id="i_profile" class="spico ico_arr3_dn">도움말</i></a>
						<!-- [D] 감추기 보이기 dislay:none/block -->
						<p id="p_profile" class="contxt" style="display:none">
						     	  네이버에서의 <em>&#39;나&#39;를 표현하는 프로필</em> 정보입니다.
						     <br>
						수정 화면에서 프로필 사진과 별명을 변경하세요.</p>
					</div>
					<div class="sh_content">
						<dl class="sh_lst">
						<dt class="blind">프로필 사진</dt>
						<dd class="pic_desc">
							<a href="#" onclick="changeImage();clickcr(this,'imn.prfmodify','','',event);">
								<img src= width="80" height="80" alt="">
								<span class="spimg img_frame"></span>
							</a>
						</dd>
						<dt class="blind">&nbsp;</dt>
						<dd class="intro_desc">&nbsp;</dd>
						<dt class="nic_tit">별명</dt>
						<dd class="nic_desc"></dd>
						</dl>
					</div>
					<p class="btn_area_btm"><a href="#" onclick="changeImage();clickcr(this,'imn.prfmodify','','',event);" class="btn_model"><b class="btn2">수정</b></a></p>
				</div>

				<!-- 네이버Sign 설정 -->
				<div class="sh_group">
					<div class="sh_header">
						<h2>네이버 인증서 <i class="spico ico_new">NEW</i></h2>
					</div>
					<div class="sh_content">
						
								<p class="contxt">인증과 서명을 안전하게!<br>한번 발급으로 3년 동안 편하게 이용해 보세요.</p>
							
					</div>
					<p class="btn_area_btm">
						<a href="/user2/eSign/v1/home/land?lang=ko_KR" class="btn_model" onclick="clickcr(this,'imn.signhis','','',event);"><b class="btn2">내 인증서 확인</b></a>
						<a href="/user2/help/externalAuth.nhn?lang=ko_KR" class="btn_model" onclick="clickcr(this,'imn.signhis','','',event);"><b class="btn2">제공 정보 관리</b></a>
					</p>
				</div>

				<!-- 배송지 관리 -->
					<div class="sh_group">
						<div class="sh_header">
							<h2>배송지 관리</h2>
						</div>
						<div class="sh_content">
							<p class="contxt">내가 저장한 배송지 및 최근 사용한 배송지를<br> 관리할 수 있습니다.</p>
						</div>
						<p class="btn_area_btm"><a href="https://pay.naver.com/shipping/list" class="btn_model" onclick="clickcr(this,'imn.addcheck','','',event);"><b class="btn2">조회하기</b></a></p>
					</div>
			</div>
			<div class="column">
					<!-- 일반아이디 연락처 -->
					<div class="sh_group ">
						<div class="sh_header">
							<h2>연락처 및 알림</h2>
							<a href="javascript:toggle('userInfo');" onclick="clickcr(this,'imn.cnthelp','','',event);" class="link_help"><i id="i_userInfo" class="spico ico_arr3_dn">도움말</i></a>
							<p id="p_userInfo" class="contxt" style="display:none">
						     	  네이버에서 <em>중요 내용을 알려드릴 때 사용</em>하는 연락처 정보입니다.
						      보다 안전한 정보 보호를 위해 등록된 연락처의 일부만 보여드립니다.
						      이름 및 정확한 연락처 정보는 수정 화면에서 확인 가능합니다.
						     </p>
						</div>
						<div class="sh_content">
							<dl class="sh_lst2">
							<dt>연락처 이메일</dt>
							<dd> </dd>
							<dt>본인확인 이메일</dt>
							<dd> </dd>
							<dt>휴대전화</dt>
							<dd> </dd>
							</dl>
							<dl class="sh_lst2 nudge" id="divNudge">
								<dt></dt>
								<dd>
									<div class="nudge_tooltip">
										<span class="banner_area">
										<span class="nudge_edge"></span>
										<span class="text">연락처가 맞는지 <em class="yellow_point">확인하세요.</em></span>
										<a href="javascript:closeNudge();" role="button" aria-label="닫기" class="nudge_close"></a>
									</span>
									</div>
								</dd>
							</dl>
						</div>
						<p class="btn_area_btm"><a href="/user2/help/changeUserInfo.nhn?menu=nid&lang=ko_KR" onclick="clickcr(this,'imn.cntmodify','','',event);" class="btn_model"><b class="btn2">수정</b></a></p>
					</div>
				<!-- 지역 설정 -->
				<div class="sh_group">
					<div class="sh_header">
						<h2>지역 설정</h2>
						<a href="javascript:toggle('region');" onclick="clickcr(this,'imn.reghelp','','',event);" class="link_help"><i id="i_region" class="spico ico_arr3_dn">도움말</i></a>
						<p id="p_region" class="contxt" style="display:none">
						     	  네이버 서비스에서 <em>공통으로 사용되는 지역 정보</em>입니다.
						     <br>
							설정되어 있는 모든 지역을 보거나 수정하시려면 설정하기를 클릭하세요.</p>
					</div>
					<div class="sh_content">
							<p class="contxt">
						     	  설정된 지역이 없습니다.<br>지금 내 주변의 관심지역을 설정하세요!
						     </p>
					</div>
					<p class="btn_area_btm"><a href="/user2/help/region.nhn?menu=nid&lang=ko_KR" onclick="clickcr(this,'imn.regmodify','','',event);" class="btn_model"><b class="btn2">설정하기</b></a></p>
				</div>
			</div>

				<p class="desc_sub">소중한 개인정보 이용내역이 궁금하다면 <a href="/user2/help/privacyInfo.nhn" class="more" target="_blank" onclick="clickcr(this,'imn.privacychk','','',event);">개인정보 이용내역 보기</a></p>
			<p class="desc_sub">네이버를 더 이상 이용하지 않는다면 <a href="/user2/help/leaveId.nhn?menu=nid&lang=ko_KR" onclick="clickcr(this,'imn.memberout','','',event);" class="more">회원탈퇴 바로가기</a></p>
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

window.onload = changeContentSize; // Window 창 로드시
window.onresize = changeContentSize; // Window 창 크기를 조정할때마다
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
	
    if (navigator.appName == 'Netscape' && navigator.userAgent.search('Trident') != -1) { // ie11 추가
        document.getElementById("container").style.height = container_height + "px";
    }else if (window.navigator.userAgent.indexOf("MSIE") == -1 || (document.all && window.XMLHttpRequest)) { // ie6 제외
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
	
	if(height == -9 || height == 0 || height == "undefined"){ //공지사항 예외처리 //ie7대응
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
