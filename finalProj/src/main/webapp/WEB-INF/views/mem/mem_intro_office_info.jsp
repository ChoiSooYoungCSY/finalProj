<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<style>
.whitespace-nowrap1 {
	 font-weight: bold;
}
</style>
<!-- BEGIN: Menu -->
<div class="col-span-12 lg:col-span-3 2xl:col-span-2" >
    <div class="intro-y box bg-primary p-5 mt-0 text-lg" style="height: 100%;">
    	<nav class="side-nav">
		    <ul>
		        <li>
		            <a href="/mem/intro/aptinfo" class="side-menu">
		                <div class="side-menu__icon"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="home" data-lucide="home" class="lucide lucide-home"><path d="M3 9l9-7 9 7v11a2 2 0 01-2 2H5a2 2 0 01-2-2z"></path></svg></div>
		                <div class="side-menu__title"> 단지정보 </div>
		            </a>
		        </li>
		        <li>
		            <a href="/mem/intro/hpprinfo" class="side-menu">
		                <div class="side-menu__icon"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="box" data-lucide="box" class="lucide lucide-box"><path d="M21 16V8a2 2 0 00-1-1.73l-7-4a2 2 0 00-2 0l-7 4A2 2 0 003 8v8a2 2 0 001 1.73l7 4a2 2 0 002 0l7-4A2 2 0 0021 16z"></path><polyline points="3.27 6.96 12 12.01 20.73 6.96"></polyline><line x1="12" y1="22.08" x2="12" y2="12"></line></svg></div>
		                <div class="side-menu__title"> 평형정보 </div>
		            </a>
		        </li>
		        <li>
		            <a href="/mem/intro/officeinfo" class="side-menu">
		                <div class="side-menu__icon"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="box" data-lucide="box" class="lucide lucide-box"><path d="M21 16V8a2 2 0 00-1-1.73l-7-4a2 2 0 00-2 0l-7 4A2 2 0 003 8v8a2 2 0 001 1.73l7 4a2 2 0 002 0l7-4A2 2 0 0021 16z"></path><polyline points="3.27 6.96 12 12.01 20.73 6.96"></polyline><line x1="12" y1="22.08" x2="12" y2="12"></line></svg></div>
		                <div class="side-menu__title"> 연락처 </div>
		            </a>
		        </li>
		        <li>
		            <a href="/mem/intro/estateinfo" class="side-menu">
		                <div class="side-menu__icon"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="box" data-lucide="box" class="lucide lucide-box"><path d="M21 16V8a2 2 0 00-1-1.73l-7-4a2 2 0 00-2 0l-7 4A2 2 0 003 8v8a2 2 0 001 1.73l7 4a2 2 0 002 0l7-4A2 2 0 0021 16z"></path><polyline points="3.27 6.96 12 12.01 20.73 6.96"></polyline><line x1="12" y1="22.08" x2="12" y2="12"></line></svg></div>
		                <div class="side-menu__title"> 부동산정보 </div>
		            </a>
		        </li>
		    </ul>
		</nav>
    </div>
</div>
<!-- END: Menu -->
<!-- BEGIN: Body -->
<div class="bdy col-span-12 lg:col-span-9 2xl:col-span-10">
	<h5 class="text-lg font-medium leading-none mt-3">아파트소개 > 연락처</h5>
	<div class="alert alert-dismissible show box bg-primary text-white flex items-center mt-5" role="alert">
	    <span style="font-size: 17px;">시설/제품 관련 연락처</span>
	</div>
	<div class="introy box mt-2">
		<div style="display: flex; justify-content: center;align-items: center;  padding-top:80px; padding-bottom: 100px;">
			<div class="overflow-x-auto">
				<table class="table" style="font-size: 17px;">
			        <thead>
			            <tr>
			                <th class="whitespace-nowrap1" style="font-weight: bold; font-size: 18px;">관리사무소</th>
			                <th class="whitespace-nowrap">042-222-8202</th>
			            </tr>
			        </thead>
			        <tbody>
			            <tr>
			                <td class="whitespace-nowrap1">생활지원센터</td>
			                <td class="whitespace-nowrap">042-223-6542</td>

			            </tr>
			            <tr>
			                <td class="whitespace-nowrap1">금고</td>
			                <td class="whitespace-nowrap">1644-8711</td>

			            </tr>
			            <tr>
			                <td class="whitespace-nowrap1">메보밸브</td>
			                <td class="whitespace-nowrap">02-466-4022</td>
			            </tr>
			            <tr>
			                <td class="whitespace-nowrap1">변기</td>
			                <td class="whitespace-nowrap">080-462-0945</td>
			            </tr>
			            <tr>
			                <td class="whitespace-nowrap1">비데-DB-5001</td>
			                <td class="whitespace-nowrap">1588-8209</td>
			            </tr>
			            <tr>
			                <td class="whitespace-nowrap1">빨래건조대-H4000F</td>
			                <td class="whitespace-nowrap">1600-5470</td>
			            </tr>
			            <tr>
			                <td class="whitespace-nowrap1">비데(일체형-DST-700)</td>
			                <td class="whitespace-nowrap">1588-1952</td>
			            </tr>
			            <tr>
			                <td class="whitespace-nowrap1">빌트인쌀통</td>
			                <td class="whitespace-nowrap">1644-0806</td>
			            </tr>
			            <tr>
			                <td class="whitespace-nowrap1">세차(유진오토)</td>
			                <td class="whitespace-nowrap">042-2057-6645</td>
			            </tr>
			            <tr>
			                <td class="whitespace-nowrap1">소독</td>
			                <td class="whitespace-nowrap">042-2663-5310~1</td>
			            </tr>
			            <tr>
			                <td class="whitespace-nowrap1">시스템에어컨 LM-V402TSJF(천정형)	</td>
			                <td class="whitespace-nowrap">1588-7777</td>
			            </tr>
			            <tr>
			                <td class="whitespace-nowrap1">싱크대세제통</td>
			                <td class="whitespace-nowrap">042-512-6800</td>
			            </tr>
			            <tr>
			                <td class="whitespace-nowrap1">안방스위치(리모컨)</td>
			                <td class="whitespace-nowrap">031-2275-2088</td>
			            </tr>
			            <tr>
			                <td class="whitespace-nowrap1">에어컨배관시공업체</td>
			                <td class="whitespace-nowrap">042-515-3300</td>
			            </tr>
			            <tr>
			                <td class="whitespace-nowrap1">우리집보수</td>
			                <td class="whitespace-nowrap">042-595-04040</td>
			            </tr>
			            <tr>
			                <td class="whitespace-nowrap1">월풀욕조</td>
			                <td class="whitespace-nowrap">031-726-5900</td>
			            </tr>
			            <tr>
			                <td class="whitespace-nowrap1">음식물탈수기</td>
			                <td class="whitespace-nowrap">031-433-1073~4</td>
			            </tr>
			            <tr>
			                <td class="whitespace-nowrap1">음식물건조기</td>
			                <td class="whitespace-nowrap">1588-5100</td>
			            </tr>
			            <tr>
			                <td class="whitespace-nowrap1">주방액정TV/욕실폰-주방TV CVK-700/욕실폰 CTP-160E</td>
			                <td class="whitespace-nowrap">1577-7737</td>
			            </tr>
			            <tr>
			                <td class="whitespace-nowrap1">전등커버</td>
			                <td class="whitespace-nowrap">02-2176-1636</td>
			            </tr>
			            <tr>
			                <td class="whitespace-nowrap1">청소기</td>
			                <td class="whitespace-nowrap">042-538-5767</td>
			            </tr>
			            <tr>
			                <td class="whitespace-nowrap1">폐기물</td>
			                <td class="whitespace-nowrap">042-3461-1613</td>
			            </tr>
			            <tr>
			                <td class="whitespace-nowrap1">풋밸브-JATA-910B</td>
			                <td class="whitespace-nowrap">042-346-5201</td>
			            </tr>
			            <tr>
			                <td class="whitespace-nowrap1">환기시스템( CLOSSIA KNVT-600)</td>
			                <td class="whitespace-nowrap">010-7101-3946</td>
			            </tr>
			            <tr>
			                <td class="whitespace-nowrap1">행주도마살균기-CSB-150E</td>
			                <td class="whitespace-nowrap">1688-1911</td>
			            </tr>
			            <tr>
			                <td class="whitespace-nowrap1">현관 도어록 ( TDS 5000 )</td>
			                <td class="whitespace-nowrap">1544-3232</td>
			            </tr>
			            <tr>
			                <td class="whitespace-nowrap1">홈오토메이션( GHS-300)</td>
			                <td class="whitespace-nowrap">1588-9770</td>
			            </tr>
			            <tr>
			                <td class="whitespace-nowrap1">GS건설 콜센터</td>
			                <td class="whitespace-nowrap">1577-4254</td>
			            </tr>
			            <tr>
			                <td class="whitespace-nowrap1">LG전자빌트인가구</td>
			                <td class="whitespace-nowrap">1544-7777</td>
			            </tr>
			        </tbody>
		    	</table>
		    </div>
		</div>
	</div>
</div>
<!-- END: Body -->

<script type="text/javascript" src="/resources/js/jquery-3.6.4.min.js"></script>
<script type="text/javascript">
$(function(){
	$("#main_menu").html("아파트 소개");
	$("#sub_menu").html("관리사무소");

	var title = $("#sub_menu").text();
	var arr_menu = $(".side-menu__title");
	var cur_menu = null;
	for (var i = 0; i < arr_menu.length; i++) {
		if ( arr_menu[i].innerText == title ) {
			cur_menu = arr_menu[i];
		}
	}
	$(cur_menu).parent().addClass("side-menu--active");

	$(".side-nav > ul > li > .side-menu").on("click", function(){
		// 좌측 메뉴 선택 시 효과 적용
		$(".side-menu").removeClass("side-menu--active");
		$(this).addClass("side-menu--active");

		// 메뉴 경로 표시 (좌측 메뉴)
		var sub = $(this).find(".side-menu__title").text();
		console.log(sub.trim());
		$("#sub_menu").html(sub.trim());
	});
});
</script>


