<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<script type="text/javascript"
	src="/resources/fullcalendar-6.1.8/dist/index.global.js"></script>
<script type="text/javascript"
	src="/resources/fullcalendar-6.1.8/packages/core/locales-all.global.js"></script>
<!-- BEGIN: Menu -->

<style>
.fc-day-sun a {
	color: red;
	text-decoration: none;
}
</style>
<!-- BEGIN: Menu -->
<div class="col-span-12 lg:col-span-3 2xl:col-span-2">
	<div class="intro-y box bg-primary p-5 mt-0 text-lg"
		style="height: 100%;">
		<nav class="side-nav">
		    <ul>
		       <li>
		            <a href="javascript:;" class="side-menu">
		                <div class="side-menu__icon"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="home" data-lucide="home" class="lucide lucide-home"><path d="M3 9l9-7 9 7v11a2 2 0 01-2 2H5a2 2 0 01-2-2z"></path></svg></div>
		                <div class="side-menu__title"> 관리비 조회
		                    <div class="side-menu__sub-icon"> <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="chevron-down" data-lucide="chevron-down" class="lucide lucide-chevron-down"></svg> </div>
		                </div>
		            </a>
		            <ul class="side-menu-ul" style="display: none;">
		                <li>
		                    <a href="/mem/mypg/managectbbs" class="side-menu">
		                        <div class="side-menu__icon"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="activity" data-lucide="activity" class="lucide lucide-activity"><polyline points="22 12 18 12 15 21 9 3 6 12 2 12"></polyline></svg></div>
		                        <div class="side-menu__title"> 나의 관리비</div>
		                    </a>
		                </li>
		                <li>
		                    <a href="/mem/mypg/managectbbs/comp" class="side-menu">
		                        <div class="side-menu__icon"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="activity" data-lucide="activity" class="lucide lucide-activity"><polyline points="22 12 18 12 15 21 9 3 6 12 2 12"></polyline></svg></div>
		                        <div class="side-menu__title"> 관리비 비교 </div>
		                    </a>
		                </li>
		            </ul>
		        </li>
		        <li>
		            <a href="/mem/mypg/personalInfo" class="side-menu">
		                <div class="side-menu__icon"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="box" data-lucide="box" class="lucide lucide-box"><path d="M21 16V8a2 2 0 00-1-1.73l-7-4a2 2 0 00-2 0l-7 4A2 2 0 003 8v8a2 2 0 001 1.73l7 4a2 2 0 002 0l7-4A2 2 0 0021 16z"></path><polyline points="3.27 6.96 12 12.01 20.73 6.96"></polyline><line x1="12" y1="22.08" x2="12" y2="12"></line></svg></div>
		                <div class="side-menu__title"> 개인정보 수정 </div>
		            </a>
		        </li>
		        <li>
		            <a href="/mem/mypg/myclub" class="side-menu">
		                <div class="side-menu__icon"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="box" data-lucide="box" class="lucide lucide-box"><path d="M21 16V8a2 2 0 00-1-1.73l-7-4a2 2 0 00-2 0l-7 4A2 2 0 003 8v8a2 2 0 001 1.73l7 4a2 2 0 002 0l7-4A2 2 0 0021 16z"></path><polyline points="3.27 6.96 12 12.01 20.73 6.96"></polyline><line x1="12" y1="22.08" x2="12" y2="12"></line></svg></div>
		                <div class="side-menu__title"> 나의 소모임 </div>
		            </a>
		        </li>
		        <li>
		            <a href="/mem/mypg/useInfo" class="side-menu">
		                <div class="side-menu__icon"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="box" data-lucide="box" class="lucide lucide-box"><path d="M21 16V8a2 2 0 00-1-1.73l-7-4a2 2 0 00-2 0l-7 4A2 2 0 003 8v8a2 2 0 001 1.73l7 4a2 2 0 002 0l7-4A2 2 0 0021 16z"></path><polyline points="3.27 6.96 12 12.01 20.73 6.96"></polyline><line x1="12" y1="22.08" x2="12" y2="12"></line></svg></div>
		                <div class="side-menu__title"> 공용시설 이용내역 </div>
		            </a>
		        </li>
		        <li>
		            <a href="/mem/mypg/visit" class="side-menu">
		                <div class="side-menu__icon"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="box" data-lucide="box" class="lucide lucide-box"><path d="M21 16V8a2 2 0 00-1-1.73l-7-4a2 2 0 00-2 0l-7 4A2 2 0 003 8v8a2 2 0 001 1.73l7 4a2 2 0 002 0l7-4A2 2 0 0021 16z"></path><polyline points="3.27 6.96 12 12.01 20.73 6.96"></polyline><line x1="12" y1="22.08" x2="12" y2="12"></line></svg></div>
		                <div class="side-menu__title"> 방문차량 예약내역 </div>
		            </a>
		        </li>
		        <li>
		            <a href="/mem/mypg/mypostmngbbs" class="side-menu">
		                <div class="side-menu__icon"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="box" data-lucide="box" class="lucide lucide-box"><path d="M21 16V8a2 2 0 00-1-1.73l-7-4a2 2 0 00-2 0l-7 4A2 2 0 003 8v8a2 2 0 001 1.73l7 4a2 2 0 002 0l7-4A2 2 0 0021 16z"></path><polyline points="3.27 6.96 12 12.01 20.73 6.96"></polyline><line x1="12" y1="22.08" x2="12" y2="12"></line></svg></div>
		                <div class="side-menu__title"> 게시글 관리 </div>
		            </a>
		        </li>
		        <li>
		            <a href="/mem/mypg/favoritebbs"" class="side-menu">
		                <div class="side-menu__icon"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="box" data-lucide="box" class="lucide lucide-box"><path d="M21 16V8a2 2 0 00-1-1.73l-7-4a2 2 0 00-2 0l-7 4A2 2 0 003 8v8a2 2 0 001 1.73l7 4a2 2 0 002 0l7-4A2 2 0 0021 16z"></path><polyline points="3.27 6.96 12 12.01 20.73 6.96"></polyline><line x1="12" y1="22.08" x2="12" y2="12"></line></svg></div>
		                <div class="side-menu__title"> 관심글 관리 </div>
		            </a>
		        </li>
		    </ul>
		</nav>
	</div>
</div>
<!-- END: Menu -->
<!-- BEGIN: Body -->
<div class="bdy col-span-12 lg:col-span-9 2xl:col-span-10">
	<div class="flex mb-3">
		<h5 class="text-lg font-medium leading-none mt-0 mr-auto"
			style="justify-content: flex-start;">마이페이지 &gt; 방문차량 예약 내역</h5>
		<h5 class="text-lg font-medium leading-none mt-0 "
			style="justify-content: flex-end;">이번달 방문차량 등록 횟수 :
			${visitVO.monthCnt} / 3</h5>
	</div>
	<div class="box p-5 mt-3">
		<div id="myCalendar" style="height: 450px;"></div>
	</div>
	<button id="modalShowBtn" class="btn btn-outline-primary ml-4"
		style="display: none;" data-tw-toggle="modal"
		data-tw-target="#modal_visit">자세히보기</button>
</div>
<!-- END: Body -->
<div id="modal_visit" class="modal" tabindex="-1" aria-hidden="true">
	<div class="modal-dialog modal-lg">
		<div class="intro-y col-span-12 md:col-span-6 xl:col-span-4 box">
			<div
				class="flex items-center border-b border-slate-200/60 dark:border-darkmode-400 px-5 py-4">
				<div class="ml-3 mr-auto">
					<a href="javascript:;" class="font-semibold text-xl">방문차량 예약</a>
				</div>
			</div>
			<div class="p-5">
				<input type="hidden" id="visitNo">
				<div>
					<label for="regular-form-1" class="form-label">방문 날짜</label> <input
						id="vistYmd" type="date" class="form-control" readonly="true"  />
				</div>
				<div>
					<label for="regular-form-1" class="form-label mt-1">차량번호</label> <input
						id="visitCarNo" type="text" class="form-control">
				</div>
			</div>
			<div class="flex items-center px-5 py-3 border-t border-slate-200/60">
				<div class="font-bold text-primary text-l mb-1" style="flex: 1;">※
					방문차량 등록은 한달에 총 3회까지 이용가능합니다.</div>
				<button class="btn btn-primary mt-1 mr-1" style="width: 120px;"
					id="visitRegist">등록하기</button>
				<button class="btn btn-outline-warning mt-1 mr-1" style="width: 100px; display: none;"
					id="visitUpdate">수정하기</button>
				<button class="btn btn-outline-danger mt-1" style="width: 100px; display: none;"
					id="visitDelete">삭제하기</button>
			</div>
		</div>
	</div>
</div>
<sec:authentication property="principal.userVO" var="userVO" />
<script type="text/javascript" src="/resources/js/jquery-3.6.4.min.js"></script>
<script type="text/javascript">
	var calendarEl = document.getElementById('myCalendar');
	var modalShowBtn = $("#modalShowBtn");
	$(function() {
		let loanData = new Array();
		let golfData = new Array();
		let readrmData = new Array();
		let gymData = new Array();
		let swmpData = new Array();
		$("#main_menu").html("마이페이지");
		$("#sub_menu").html("방문차량 예약내역");

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

		let selctVisitInfo = JSON.parse('${selctVisitInfo}');

		console.log(selctVisitInfo);
		let visitInfoData = [];
		for (let i = 0; i < selctVisitInfo.length; i++) {
			let data = new Object();
			data.id = selctVisitInfo[i]['visitNo'];
			data.title = selctVisitInfo[i]['visitCarNo'];
			data.start = selctVisitInfo[i]['visitYmd'];
			data.color = '#054232';

			visitInfoData.push(data);
		}

		function calendarRender(schedulData) {
			let calendar = new FullCalendar.Calendar(calendarEl, {
				headerToolbar : {
					left : 'prev,next today',
					center : 'title',
					right : 'dayGridMonth,timeGridWeek,timeGridDay,listMonth'
				},
				defaultDate : new Date(),
				locale : "ko",
				navLinks : true, // can click day/week names to navigate views
				businessHours : true, // display business hours
				editable : true,
				selectable : true,
				dayMaxEvents : true,
				dateClick : function(w) {
					console.log(w.dateStr);
					let today = new Date();
					let visitYmd = new Date(w.dateStr);
					if (today > visitYmd) {
						alert("방문차량을 등록할 수 없는 날짜입니다.");
						return;
					}
					$("#visitRegist").css("display","");
					$("#visitUpdate").css("display","none");
					$("#visitDelete").css("display","none");
					$("#vistYmd").val(w.dateStr);
					jQuery("#vistYmd").prop("readonly",true);
					$("#visitNo").val("");
					$("#visitCarNo").val("");
					modalShowBtn.click();
				},
				events : schedulData,
				eventClick : function(info) {
					console.log(info.event.title);
					console.log(info.event.start);
					console.log(info.event.id);
					let eventDate = new Date(info.event.start);
					eventDate = eventDate.toISOString().slice(0, 10);
					$("#visitRegist").css("display","none");
					$("#visitUpdate").css("display","");
					$("#visitDelete").css("display","");
					$("#vistYmd").val(eventDate);
					$("#visitCarNo").val(info.event.title);
					$("#visitNo").val(info.event.id);
					jQuery("#vistYmd").prop("readonly",false);
					jQuery("#vistYmd").attr("min", getToday());

					modalShowBtn.click();
				}
			});
			calendar.render();
		};




		function getToday() {
			let date = new Date();
			let year = date.getFullYear();
			let month = ("0" + (1 + date.getMonth())).slice(-2);
			let day = ("0" + date.getDate()).slice(-2);

			return year +"-"+month +"-"+ day;
		}
		calendarRender(visitInfoData);

		$("#visitRegist").on("click",function() {
			let answer = confirm("방문 차량을 등록하시겠습니까?");
			let visitYmd = $("#vistYmd").val();
			let visitCarNo = $("#visitCarNo").val();
			let frstWrterId = "${userVO.memberVO.memId}";
			console.log(frstWrterId);
			let visitData = {
				frstWrterId : frstWrterId,
				visitYmd : visitYmd,
				visitCarNo : visitCarNo
			}
			console.log(visitData);
			if (answer) {
				jQuery.ajax({
					url : "/mem/mypg/visit/regist",
					contentType : 'application/json; charset=utf-8',
					data : JSON.stringify(visitData),
					type : "post",
					dataType : "text",
					beforeSend : function(xhr) {
						xhr.setRequestHeader("${_csrf.headerName}",
								"${_csrf.token}");
					},
					success : function(result) {
						console.log(result);
						if (result == 'success') {
							alert("방문차량 등록이 완료되었습니다.");
							location.href = "/mem/mypg/visit";
						}
					},
					error : function(e) {
						console.log(e + "에러남");
					} //ajax 호출 에러 종료
				}); //ajax 호출 종료
			}

		});

		$("#visitUpdate").on("click",function(){
			let answer = confirm("차량등록 정보를 수정하시겠습니까?");
			console.log(answer);
			let visitYmd = $("#vistYmd").val();
			let visitCarNo = $("#visitCarNo").val();
			let lastUpdusrId = "${userVO.memberVO.memId}";
			let visitNo = $("#visitNo").val();
			let visitData = {
					visitNo : visitNo,
					lastUpdusrId : lastUpdusrId,
					visitYmd : visitYmd,
					visitCarNo : visitCarNo
				}


			if(!answer){
				return;
			}
			jQuery.ajax({
				url : "/mem/mypg/visit/update",
				contentType : 'application/json; charset=utf-8',
				data : JSON.stringify(visitData),
				type : "post",
				dataType : "text",
				beforeSend : function(xhr) {
					xhr.setRequestHeader("${_csrf.headerName}",	"${_csrf.token}");
				},
				success : function(result) {
					console.log(result);
					if (result == 'success') {
						alert("방문차량 등록 정보가 수정되었습니다.");
						location.href = "/mem/mypg/visit";
					}
				},
				error : function(e) {
					console.log(e + "에러남");
				} //ajax 호출 에러 종료
			}); //ajax 호출 종료
		});
		$("#visitDelete").on("click",function(){
			let answer = confirm("차량등록 정보를 삭제하시겠습니까?");
			console.log(answer);
			let visitNo = $("#visitNo").val();
			let lastUpdusrId = "${userVO.memberVO.memId}";
			let visitData = {
					visitNo : visitNo,
					lastUpdusrId : lastUpdusrId
				}
			if(!answer){
				return;
			}
			jQuery.ajax({
				url : "/mem/mypg/visit/delete",
				contentType : 'application/json; charset=utf-8',
				data : JSON.stringify(visitData),
				type : "post",
				dataType : "text",
				beforeSend : function(xhr) {
					xhr.setRequestHeader("${_csrf.headerName}","${_csrf.token}");
				},
				success : function(result) {
					console.log(result);
					if (result == 'success') {
						alert("방문차량 등록 정보가 삭제되었습니다.");
						location.href = "/mem/mypg/visit";
					}
				},
				error : function(e) {
					console.log(e + "에러남");
				} //ajax 호출 에러 종료
			}); //ajax 호출 종료
		});



	});


</script>


