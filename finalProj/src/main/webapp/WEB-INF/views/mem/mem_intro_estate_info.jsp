<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<style>
thead th {
  text-align: center;
}

td {
  text-align: right;
}

.title1 {
  background-color: #f2f2f2;
}

.title2 {
  background-color: hsl(350, 100%, 95%);
}

.title3 {
  background-color: lightyellow;
}

.title4 {
  background-color: hsl(90, 100%, 90%);
}
.span1 {
  display: flex;
  justify-content: space-between;
}
</style>
<!-- BEGIN: Menu -->
<div class="col-span-12 lg:col-span-3 2xl:col-span-2">
    <div class="intro-y box bg-primary p-5 mt-0 text-lg">
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
		                <div class="side-menu__title"> 관리사무소 </div>
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
	<h5 class="text-lg font-medium leading-none mt-3">아파트 소개 > 부동산정보</h5>
	<div class="alert alert-dismissible show box bg-primary text-white flex items-center mt-5" role="alert">
	    <span style="font-size: 17px;">부동산 시세</span>
	</div>
	<div class="introy box mt-2">
		<div style="display: flex; justify-content: center;align-items: center;  padding-top:30px; padding-bottom: 100px;">
			<div class="overflow-x-auto">
			    <table class="table table-bordered table-hover">
			        <thead>
			            <tr>
 							<th rowspan="2" class="title1">면적<br>(㎡)</th>
			                <th colspan="3" class="title2">매매가</th>
			                <th colspan="3" class="title3">전세가</th>
			                <th colspan="2" class="title4">월세</th>
			            </tr>
			             <tr>
			                <th class="title2">하위평균가</th>
			                <th class="title2">일반평균가</th>
			                <th class="title2">상위평균가</th>
			                <th class="title3">하위평균가</th>
			                <th class="title3">일반평균가</th>
			                <th class="title3">상위평균가</th>
			                <th class="title4">보증금</th>
			                <th class="title4">월세</th>
			            </tr>
			        </thead>
			        <tbody>
			            <tr>
			                <td>75㎡</td>
			                <td>5억</td>
			                <td>5억 4,500</td>
			                <td>5억 8,000</td>
			                <td>3억 4,000</td>
			                <td>3억 6,000d</td>
			                <td>3억 7,500</td>
			                <td>3,000</td>
			                <td>150</td>
			            </tr>
			            <tr>
			                <td>84㎡A</td>
			                <td>5억 6,000</td>
			                <td>6억 1,000</td>
			                <td>6억 8,500</td>
			                <td>3억 6,500</td>
			                <td>3억 9,000</td>
			                <td>4억 500</td>
			                <td>3,000</td>
			                <td>170</td>
			            </tr>
			            <tr>
			                <td>84㎡B</td>
			                <td>6억 5,750</td>
			                <td>7억 2,500</td>
			                <td>7억 9,000</td>
			                <td>4억</td>
			                <td>4억 1,500</td>
			                <td>4억 3,500</td>
			                <td>3,000</td>
			                <td>185</td>
			            </tr>
			        </tbody>
			    </table>
			    <div class="mt-2 span1">
				    <span>▣ 최종 정보갱신일 : 2023-07-16 10:30:38  (단위:만원)</span><span class="align-right">출처) 국민은행 부동산 시세표</span>
				</div>
				<div><span>※ 부동산 시세는 한달에 한번 갱신됩니다.</span></div>

			</div>
		</div>
	</div>
</div>
<!-- END: Body -->

<script type="text/javascript" src="/resources/js/jquery-3.6.4.min.js"></script>
<script type="text/javascript">
$(function(){
	$("#main_menu").html("아파트 소개");
	$("#sub_menu").html("부동산정보");

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


