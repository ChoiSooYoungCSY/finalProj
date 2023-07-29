<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>

<!-- BEGIN: Menu -->
<div class="col-span-12 lg:col-span-3 2xl:col-span-2">
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
	<h5 class="text-lg font-medium leading-none mt-3">아파트소개 > 단지정보</h5>
	<div class="alert alert-dismissible show box bg-primary text-white flex items-center mt-5" role="alert">
	    <span style="font-size: 17px;">단지 전경</span>
	</div>
	<div class="introy box mt-2">
		<div style="display: flex; justify-content: center; align-items: center; padding-top:50px; padding-bottom: 50px;">
		  <img src="/resources/images/aptinfo/intro.jpg" alt="단지전경">
		</div>
	</div>
	<div class="alert alert-dismissible show box bg-primary text-white flex items-center mt-2" role="alert">
	    <span style="font-size: 17px;">단지 정보</span>
	</div>
	<div class="introy box mt-2">
		<div style="display: flex; justify-content: center;align-items: center;  padding-top:50px; padding-bottom: 100px;">
			<div class="overflow-x-auto">
				<table class="table" style="width: 600px; font-size: 17px;">
			        <thead>
			            <tr>
			                <th class="whitespace-nowrap">세대수</th>
			                <th class="whitespace-nowrap">3600세대(총20개동)</th>

			            </tr>
			        </thead>
			        <tbody>
			            <tr>
			                <td class="whitespace-nowrap">최고층</td>
			                <td class="whitespace-nowrap">30층</td>

			            </tr>
			            <tr>
			                <td class="whitespace-nowrap">사용승인일</td>
			                <td class="whitespace-nowrap">2018년 02월 22일</td>

			            </tr>
			            <tr>
			                <td class="whitespace-nowrap">총 주차대수</td>
			                <td class="whitespace-nowrap">총 주차대수 5500대(세대당 1.53대)
			                </td>
			            </tr>
			            <tr>
			                <td class="whitespace-nowrap">용적률</td>
			                <td class="whitespace-nowrap">230%</td>
			            </tr>
			            <tr>
			                <td class="whitespace-nowrap">건폐율</td>
			                <td class="whitespace-nowrap">17%</td>
			            </tr>
			            <tr>
			                <td class="whitespace-nowrap">난방</td>
			                <td class="whitespace-nowrap">개별난방, 도시가스</td>
			            </tr>
			            <tr>
			                <td class="whitespace-nowrap">건설사</td>
			                <td class="whitespace-nowrap">(주)대우건설</td>
			            </tr>
			            <tr>
			                <td class="whitespace-nowrap">관리사무소</td>
			                <td class="whitespace-nowrap">042-222-8202</td>
			            </tr>
			            <tr>
			                <td class="whitespace-nowrap">주소</td>
			                <td class="whitespace-nowrap">대전 중구 계룡로 846</td>
			            </tr>
			            <tr>
			                <td class="whitespace-nowrap">면적</td>
			                <td class="whitespace-nowrap">99㎡, 112A㎡, 113B㎡</td>
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
	$("#sub_menu").html("단지정보");

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


