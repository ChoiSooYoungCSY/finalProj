<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>

<style>
  /* 적절한 값으로 수정해주세요. 예시로 5px로 설정합니다. */
  .btn-spacing {
    margin-right: 1px;
    margin-bottom: 1px;
    width: 10px;
</style>

<!-- BEGIN: Menu -->
<div class="col-span-12 lg:col-span-3 2xl:col-span-2">
	<div class="intro-y box bg-primary p-5 mt-0 text-lg"
		style="height: 100%;">
		<nav class="side-nav">
			<ul>
				<li><a href="/mem/life/library" class="side-menu">
						<div class="side-menu__icon">
							<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
								viewBox="0 0 24 24" fill="none" stroke="currentColor"
								stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
								icon-name="box" data-lucide="box" class="lucide lucide-box">
								<path
									d="M21 16V8a2 2 0 00-1-1.73l-7-4a2 2 0 00-2 0l-7 4A2 2 0 003 8v8a2 2 0 001 1.73l7 4a2 2 0 002 0l7-4A2 2 0 0021 16z"></path>
								<polyline points="3.27 6.96 12 12.01 20.73 6.96"></polyline>
								<line x1="12" y1="22.08" x2="12" y2="12"></line></svg>
						</div>
						<div class="side-menu__title">도서관</div>
				</a></li>
				<li><a href="/mem/life/glfpr" class="side-menu">
						<div class="side-menu__icon">
							<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
								viewBox="0 0 24 24" fill="none" stroke="currentColor"
								stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
								icon-name="box" data-lucide="box" class="lucide lucide-box">
								<path
									d="M21 16V8a2 2 0 00-1-1.73l-7-4a2 2 0 00-2 0l-7 4A2 2 0 003 8v8a2 2 0 001 1.73l7 4a2 2 0 002 0l7-4A2 2 0 0021 16z"></path>
								<polyline points="3.27 6.96 12 12.01 20.73 6.96"></polyline>
								<line x1="12" y1="22.08" x2="12" y2="12"></line></svg>
						</div>
						<div class="side-menu__title">스크린골프장</div>
				</a></li>
				<li><a href="/mem/life/gym" class="side-menu">
						<div class="side-menu__icon">
							<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
								viewBox="0 0 24 24" fill="none" stroke="currentColor"
								stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
								icon-name="home" data-lucide="home" class="lucide lucide-home">
								<path d="M3 9l9-7 9 7v11a2 2 0 01-2 2H5a2 2 0 01-2-2z"></path></svg>
						</div>
						<div class="side-menu__title">헬스장</div>
				</a></li>
				<li><a href="/mem/life/pool" class="side-menu">
						<div class="side-menu__icon">
							<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
								viewBox="0 0 24 24" fill="none" stroke="currentColor"
								stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
								icon-name="box" data-lucide="box" class="lucide lucide-box">
								<path
									d="M21 16V8a2 2 0 00-1-1.73l-7-4a2 2 0 00-2 0l-7 4A2 2 0 003 8v8a2 2 0 001 1.73l7 4a2 2 0 002 0l7-4A2 2 0 0021 16z"></path>
								<polyline points="3.27 6.96 12 12.01 20.73 6.96"></polyline>
								<line x1="12" y1="22.08" x2="12" y2="12"></line></svg>
						</div>
						<div class="side-menu__title">수영장</div>
				</a></li>
				<li><a href="/mem/life/readingroom" class="side-menu">
						<div class="side-menu__icon">
							<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
								viewBox="0 0 24 24" fill="none" stroke="currentColor"
								stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
								icon-name="box" data-lucide="box" class="lucide lucide-box">
								<path
									d="M21 16V8a2 2 0 00-1-1.73l-7-4a2 2 0 00-2 0l-7 4A2 2 0 003 8v8a2 2 0 001 1.73l7 4a2 2 0 002 0l7-4A2 2 0 0021 16z"></path>
								<polyline points="3.27 6.96 12 12.01 20.73 6.96"></polyline>
								<line x1="12" y1="22.08" x2="12" y2="12"></line></svg>
						</div>
						<div class="side-menu__title">독서실</div>
				</a></li>
			</ul>
		</nav>
	</div>
</div>
<!-- END: Menu -->
<!-- BEGIN: Body -->
<div class="bdy col-span-12 lg:col-span-9 2xl:col-span-10">
	<h5 class="text-lg font-medium leading-none mt-0 mr-auto">생활편의서비스
		&gt; 독서실</h5>
	<!-- BEGIN: 시설 소개카드 -->
	<div class="intro-y box mt-3" style="width: 950px; float: center;">
	${seatList}
		<div
			class="flex flex-col sm:flex-row items-center p-3 border-b border-slate-200/60">
			<h3 class="font-large text-base ml-3 flex font-bold text-lg">시설
				소개&nbsp;&nbsp;</h3>
		</div>
		<div id="center-mode-slider" class="p-3">
			<div class="mx-8">
				<div class="center-mode">
					<div id="img_1" class="recom h-60 px-2">
						<div class="h-full bg-primary rounded-md">
							<div class="w-40 h-full image-fit rounded-md"
								style="width: 100%; height: 100%;">
								<img id="img1" alt="img1" data-action="zoom"
									class="w-full h-full rounded-md"
									src="/resources/images/life/studyroom.jpg">
							</div>
						</div>
					</div>
					<div id="img_2" class="recom h-60 px-2">
						<div class="h-full bg-primary rounded-md">
							<div class="w-40 h-full image-fit rounded-md"
								style="width: 100%; height: 100%;">
								<img id="img2" alt="img2" data-action="zoom"
									class="w-full h-full rounded-md"
									src="/resources/images/life/studyroom2.jpg">
							</div>
						</div>
					</div>
					<div id="img_3" class="recom h-60 px-2">
						<div class="h-full bg-primary rounded-md">
							<div class="w-40 h-full image-fit rounded-md"
								style="width: 100%; height: 100%;">
								<img id="img3" alt="img3" data-action="zoom"
									class="w-full h-full rounded-md"
									src="/resources/images/life/studyroom3.jpg">
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- END: 시설소개 카드 끝 -->
	<div
		class="alert alert-dismissible show box bg-primary text-white flex items-center mt-5"
		role="alert">
		<span style="font-size: 17px; margin-left: 350px;"> &nbsp;실시간
			이용인원&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span
			style="font-weight: bold;">11</span>명
		</span>
	</div>
	<!-- 시설 유의사항 -->
	<div class="intro-y box"
		style="width: 950px; height: 430px; margin-top: 20px;">
		<div class="" style="float: left; width: 850px;">
			<input
				class="font-large text-base ml-3 mt-3 pt-3 pl-3 flex font-bold text-lg"
				style="font-size: 20px;" value="안내사항" readonly />
			<textarea class="borderless"
				style="border: none; font-size: 20px; line-height: 1.5; width: 850px; height: 350px;"
				readonly>
	           ◆ 운영시간
	              - 평일 : 오전 09시 ~ 오후 23시
	              - 토요일 : 오전 9시 ~ 오후 18시
	              - 공휴일 및 일요일 휴무

	           ◆ 유의사항
	              - 일일권 및 등록은 문의 또는 홈페이지에서 신청바랍니다.
	              - 결제금액은 세대 관리비에 부과되며, 세부내역은 홈페이지 마이페이지에서 조회가능합니다.
	              - 같은 세대여도 신청자만 이용이 가능합니다.
	              - 개인사물함 열쇠 분실 시 데스크에 신고하여 주시고 분실료 10,000원이 발생합니다.
	        </textarea>
		</div>
		<div class="text-center"> <a href="javascript:;" data-tw-toggle="modal" data-tw-target="#header-footer-modal-preview" class="btn btn-primary">Show Modal</a> </div> <!-- END: Modal Toggle --> <!-- BEGIN: Modal Content -->
			 <div id="header-footer-modal-preview" class="modal" tabindex="-1" aria-hidden="true">
			     <div class="modal-dialog">
			         <div class="modal-content"> <!-- BEGIN: Modal Header -->
			             <div class="modal-header">
			                 <h2 class="font-medium text-base mr-auto">독서실 좌석 예약</h2>
			             </div> <!-- END: Modal Header --> <!-- BEGIN: Modal Body -->
			             <div class="modal-body grid grid-cols-12 gap-4 gap-y-3">
		                 	<div class="col-span-12 sm:col-span-6"> <label for="modal-form-6" class="form-label">좌석선택</label>
				                 <select id="modal-form-6" class="form-select">
				                         <option>01</option>
				                         <option>02</option>
				                         <option>03</option>
				                         <option>04</option>
								</select>
							</div>
			                 <div class="col-span-12 sm:col-span-6"> <label for="modal-form-3" class="form-label">공지</label> <input id="modal-form-3" type="text" class="form-control" placeholder="최대 예약시간은 5시간입니다."> </div>
			                 <div class="col-span-12 sm:col-span-6"> <label for="modal-form-2" class="form-label">날짜</label><input type="date" class="form-control"  max="2023-07-25"> </div>
			                 <div class="col-span-12 sm:col-span-6"> <label for="modal-form-4" class="form-label">Has the Words</label> <input id="modal-form-4" type="text" class="form-control" placeholder="Job, Work, Documentation"> </div>
			                 <div class="col-span-12 sm:col-span-6"> <label for="modal-form-1" class="form-label">시작시간</label><input id="bsnHour1" type="time" class="form-control" required=""></div>
			                 <div class="col-span-12 sm:col-span-6"> <label for="modal-form-1" class="form-label">종료시간</label><input id="bsnHour1" type="time" class="form-control" required=""></div>
			             </div> <!-- END: Modal Body --> <!-- BEGIN: Modal Footer -->
			             <div class="modal-footer">
				             <button class="btn btn-outline-success w-24 inline-block mr-1 mb-2">예약</button>
				             <button data-tw-dismiss="modal" class="btn btn-outline-secondary w-24 inline-block mr-1 mb-2 ">취소</button>
				         </div>
			         </div>
			     </div>
			 </div> <!-- END: Modal Content -->
</div>
<!-- END: Body -->


<script type="text/javascript" src="/resources/js/jquery-3.6.4.min.js"></script>
<script type="text/javascript">
	$(function() {
		$("#main_menu").html("생활편의서비스");
		$("#sub_menu").html("독서실");

		var title = $("#sub_menu").text();
		var arr_menu = $(".side-menu__title");
		var cur_menu = null;
		for (var i = 0; i < arr_menu.length; i++) {
			if (arr_menu[i].innerText == title) {
				cur_menu = arr_menu[i];
			}
		}
		$(cur_menu).parent().addClass("side-menu--active");

		$(".side-nav > ul > li > .side-menu").on("click", function() {
			// 좌측 메뉴 선택 시 효과 적용
			$(".side-menu").removeClass("side-menu--active");
			$(this).addClass("side-menu--active");

			// 메뉴 경로 표시 (좌측 메뉴)
			var sub = $(this).find(".side-menu__title").text();
			console.log(sub.trim());
			$("#sub_menu").html(sub.trim());
		});

		// 좌석 예약 버튼 클릭 이벤트
		$("#setClick").on("click", function(){
			console.log("setclicK");
		});


		// 연차 기간, 일수 계산
		let startDate = "";
		let endDate = "";
		let usingPoint = "";  // 신청연차 (사용일수)
		let restPoint = $("#restPoint").val(); // 잔여연차

		// 시작일 선택 이벤트 핸들러
		$j("#startDate").datepicker({
			onSelect : function(dateText, inst) {
				startDate = dateText.replace(/[-()]/g, "").substring(0, 8);
				console.log("startDate : ", startDate);
				$(this).val(dateText);
				$(this).attr("value", dateText);
			}
		});

		// 종료일 선택 이벤트 핸들러
		$j("#endDate").datepicker({
			onSelect : function(dateText, inst) {
				endDate = dateText.replace(/[-()]/g, "").substring(0, 8);
				console.log("endDate : ", endDate);
				usingPoint = endDate - startDate + 1;
				$("#usingPoint_Comment").html("");
				$("#usingPoint").val(usingPoint);
				$("#applyPoint").val(usingPoint);
				$("#usingPoint").attr("value", usingPoint);
				$("#applyPoint").attr("value", usingPoint);

				if (endDate < startDate) {
					$("#usingPoint_Comment").html("종료일은 시작일 이후로 설정해주세요");
					$("#endDate").val("");
					$("#usingPoint").val("");
					$("#applyPoint").val("");
					return;
				}

				if (usingPoint > restPoint) {
					$("#usingPoint_Comment").html("신청가능일을 초과하였습니다");
					$("#usingPoint").val("");
					$("#applyPoint").val("");
					return;
				}
				$(this).val(dateText);
				$(this).attr("value", dateText);
			}
		});

	});
</script>
