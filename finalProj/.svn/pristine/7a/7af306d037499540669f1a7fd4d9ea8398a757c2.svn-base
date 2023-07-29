<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<script type="text/javascript" src="/resources/js/jquery-3.6.4.min.js"></script>

<style>
  .seat {
    display: inline-block;
    width: 70px;
    height: 70px;
    margin: 5px;
    text-align: center;
    font-size: 18px;
    line-height: 70px;
    border: 2px solid #ccc;
    border-radius: 10px; /* 둥근 모서리를 원하는 값으로 설정 */
    cursor: pointer;
  }

  /* 미예약 좌석의 스타일 */
  .seat:not(.reserved) {
    background-color: white;
  }

  /* 예약된 좌석의 스타일 */
  .seat.reserved {
    background-color: rgb(6, 78, 59); /* primary 색상으로 변경 */
    color: white;
  }
  /* 왼쪽, 오른쪽 영역 스타일 */
  .left-area,
  .right-area {
    float: left;
    width: 300px;
  }

  /* 오른쪽 영역 스타일 */
  .right-area {
    margin-left: 5px;
  }

  /* 줄 간격 조정을 위해 추가한 스타일 */
  .row {
    margin-bottom: 5px;
  }
</style>

<!-- BEGIN: Menu -->
<div class="col-span-12 lg:col-span-3 2xl:col-span-2">
	<div class="intro-y box bg-primary p-5 mt-0 text-lg" style="height: 100%;">
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

	<h5 class="text-lg font-medium leading-none mt-0 mr-auto">생활편의서비스 &gt; 스크린 골프장</h5>
	<!-- BEGIN: 시설 소개카드 -->
	<div class="intro-y box mt-3" style="width: 980px;  float: center;">
		<div class="flex flex-col sm:flex-row items-center p-3 border-b border-slate-200/60">
		    <h3 class="font-large text-base ml-3 flex font-bold text-lg">시설 소개&nbsp;&nbsp;</h3>
		</div>
		<div id="center-mode-slider" class="p-3">
		    <div class="mx-8">
		        <div class="center-mode">
		            <div id="img_1" class="recom h-60 px-2">
		                <div class="h-full bg-primary rounded-md">
		                    <div class="w-40 h-full image-fit rounded-md" style="width: 100%; height: 100%;">
		                        <img id="img1" alt="img1" data-action="zoom" class="w-full h-full rounded-md" src="/resources/images/life/golf.jpg">
		                    </div>
		                </div>
		            </div>
		            <div id="img_2" class="recom h-60 px-2">
		                <div class="h-full bg-primary rounded-md">
		                    <div class="w-40 h-full image-fit rounded-md" style="width: 100%; height: 100%;">
		                        <img id="img2" alt="img2" data-action="zoom" class="w-full h-full rounded-md" src="/resources/images/life/golf3.jpg">
		                    </div>
		                </div>
		            </div>
		            <div id="img_3" class="recom h-60 px-2">
		                <div class="h-full bg-primary rounded-md">
		                    <div class="w-40 h-full image-fit rounded-md" style="width: 100%; height: 100%;">
		                        <img id="img3" alt="img3" data-action="zoom" class="w-full h-full rounded-md" src="/resources/images/life/golf2.jpg">
		                    </div>
		                </div>
		            </div>
		        </div>
		    </div>
			<div>
		</div>
	</div>
	<!-- END: 시설소개 카드 끝 -->
	<div class="alert alert-dismissible show box bg-primary text-white flex items-center mt-5" role="alert">
	    <span style="font-size: 17px; margin-left: 350px;" >
	    	&nbsp;실시간 이용인원&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	    	<span style="font-weight: bold;">6</span>명
	    </span>
	</div>
	<!-- 시설 유의사항 -->
	<div class="intro-y box" style="width: 980px; height: 370px; margin-top: 20px;">
	    <div class="" style="float: left; width:850px;">
	        <input class="font-large text-base ml-3 mt-3 pt-3 pl-3 flex font-bold text-lg" style="font-size: 20px;" value="안내사항" readonly />
	        <textarea class="borderless" style="border: none; font-size: 20px; line-height: 1.5; width: 780px; height: 300px; margin-right:10px;" readonly>
           ◆ 운영시간
              - 평일 : 오전 09시 ~ 오후 22시
              - 토요일 : 오전 9시 ~ 오후 18시
              - 공휴일 및 일요일 휴무

           ◆ 유의사항
              - 회원등록 및 강습은 카운터에 문의바랍니다.
              - 시설이용 예약은 아파트 홈페이지 마이페이지에서도 가능합니다.
              - 결제 금액은 세대 관리비에 부과되며, 홈페이지 마이페이지 세부내역에서 조회가능합니다.
	        </textarea>
	    </div>
	    <!-- 시설 유의사항 끝 -->
	</div>
	<!-- END: Body -->
	</div>

	<!-- 좌석창 모달에 띄우기 -->
	<div class="text-center">
		<!-- BEGIN: Large Modal Toggle -->
		<a href="javascript:;" data-tw-toggle="modal" data-tw-target="#large-modal-size-preview" class="btn btn-primary mr-1 mb-2 mt-3">시설 예약하기</a>
		<!-- END: Large Modal Toggle -->
	</div>
	 <!-- BEGIN: Large Modal Content -->
	<div id="large-modal-size-preview" class="modal" tabindex="-1" aria-hidden="true">
	 	<div class="modal-dialog modal-lg">
			<div class="modal-content" style="width:800px; height:450px; padding:25px;">
				<div class="flex flex-col sm:flex-row items-center p-3 border-b border-slate-200/60">
					<h2 class="font-large text-base ml-3 flex font-bold text-lg">스크린골프장 좌석예약</h2>
				</div>
				<!-- 첫 번째 줄 -->
				<div class="row mt-5" style="margin-left:40px; margin-top:50px;">
				  <span class="text-xs px-1 text-white mr-1 seat reserved">1</span>
				  <span class="text-xs px-1 mr-1 seat" onclick="reservModal(2)">2</span>
				  <span class="text-xs px-1 mr-1 seat" onclick="reservModal(3)">3</span>
				  <span class="text-xs px-1 text-white mr-1 seat reserved">4</span>
				  <span class="text-xs px-1 mr-1 seat" onclick="reservModal(5)">5</span>
				  <span class="text-xs px-1 mr-1 seat" onclick="reservModal(6)">6</span>
				  <span class="text-xs px-1 mr-1 seat" onclick="reservModal(7)">7</span>
				  <span class="text-xs px-1 mr-1 seat" onclick="reservModal(8)">8</span>
				</div>
				<!-- 두 번째 줄 -->
				<div class="row" style="margin-left: 40px; margin-top:50px;">
				  <span class="text-xs px-1 mr-1 seat" onclick="reservModal(9)">9</span>
				  <span class="text-xs px-1 mr-1 seat" onclick="reservModal(10)">10</span>
				  <span class="text-xs px-1 text-white mr-1 seat reserved">11</span>
				  <span class="text-xs px-1 mr-1 seat" onclick="reservModal(12)">12</span>
				  <span class="text-xs px-1 mr-1 seat" onclick="reservModal(13)">13</span>
				  <span class="text-xs px-1 mr-1 seat" onclick="reservModal(14)">14</span>
				  <span class="text-xs px-1 text-white mr-1 seat reserved">15</span>
				  <span class="text-xs px-1 mr-1 seat" onclick="reservModal(16)">16</span>
				</div>
			</div>
<!-- 				<button type="button" data-tw-dismiss="modal" id="modalCloseBtn"> -->
<!-- 					<span class="btn btn-outline-secondary w-20 mr-1">취소</span> -->
<!-- 				</button> -->
		</div>
	</div>
</div>
<!-- 좌석창 모달에 띄우기 끝 -->

<!-- 선택한 좌석 예약창 띄우기 -->
 <!-- BEGIN: Modal Content -->
 <div id="reservationModal" class="modal" tabindex="-1" aria-hidden="true">
     <div class="modal-dialog">
         <div class="modal-content"> <!-- BEGIN: Modal Header -->
             <div class="modal-header">
                 <h2 class="font-medium text-base mr-auto">예약하기</h2>
             </div> <!-- END: Modal Header --> <!-- BEGIN: Modal Body -->
             <div class="modal-body grid grid-cols-12 gap-4 gap-y-3">
                 <div class="col-span-12 sm:col-span-6">
	                 <label for="modal-form-3" class="form-label">공지</label>
	                 <input id="modal-form-3" type="text" class="form-control" placeholder="최대 예약시간은 5시간입니다." readonly>
                 </div>
                 <div class="col-span-12 sm:col-span-6">
	                  <label for="modal-form-2" class="form-label">날짜</label>
	                  <input type="date" class="form-control"  max="2023-07-25">
                 </div>
                 <div class="col-span-12 sm:col-span-6">
	                  <label for="modal-form-1" class="form-label">시작시간</label>
	                  <input id="bsnHour1" type="time" class="form-control" required>
                 </div>
                 <div class="col-span-12 sm:col-span-6">
	                  <label for="modal-form-1" class="form-label">종료시간</label>
	                  <input id="bsnHour1" type="time" class="form-control" required>
                 </div>
             </div>
             <!-- END: Modal Body -->
             <!-- BEGIN: Modal Footer -->
             <div class="modal-footer">
             	<button type="button"><span class="btn btn-primary w-20">예약하기</span></button>
             	<button type="button" data-tw-dismiss="modal" class="btn btn-outline-secondary w-20 mr-1">Cancel</button>
             </div>
             <!-- END: Modal Footer -->
         </div>
     </div>
 </div> <!-- END: Modal Content -->
<!-- END: Large Modal Content -->
<!-- 선택한 좌석 예약창 띄우기 끝 -->







<script type="text/javascript" src="/resources/js/jquery-3.6.4.min.js"></script>
<script type="text/javascript">
$(function() {
	$("#main_menu").html("생활편의서비스");
	$("#sub_menu").html("스크린골프장");

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

	//시설 예약하는 모달띄우기
	$("#regGolf").on("click",function(){
		 const myModal = tailwind.Modal.getInstance(document.querySelector("#myModal"));

		 updatmySlideOverefCmnt.show();
	});


});

function reservModal(seatNumber) {
    //document.getElementById('reservationModal').show();
    //reservModal.show();
    //.style.display = 'block';

     const reservModal = tailwind.Modal.getInstance(document.querySelector("#reservationModal"));

     reservModal.show();



    // 여기에서 seatNumber를 사용하여 예약하기 모달 내용을 설정할 수 있습니다.
    // 예를 들어, 선택한 좌석 번호를 모달에 표시하는 등의 작업이 가능합니다.
  }
</script>


