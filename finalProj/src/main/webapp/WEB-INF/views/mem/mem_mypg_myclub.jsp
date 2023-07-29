<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!-- BEGIN: Menu -->
<div class="col-span-12 lg:col-span-3 2xl:col-span-2">
    <div class="intro-y box bg-primary p-5 mt-0 text-lg" >
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
<h5 class="text-lg font-medium leading-none mt-0 mb-5 mr-auto">마이페이지 &gt; 나의 소모임</h5>
<sec:authentication property="principal.userVO" var="userVO" />

<!-- 가입한 소모임이 없을 경우 표시 -->
<div id="no_club" class="intro-y mt-0 mb-2 box col-span-12 font-semibold hidden" style="width: 965.3px; height: 194px; font-size: 20px;">
	<div class="text-center" style="padding-top: 60px;">
		가입한 소모임이 없습니다.
	</div>
	<div class="text-center">
		<a href="/mem/cmnt/clubbbs" class="btn btn-rounded-primary w-36 mt-5" style="font-size: 15px;">소모임 가입하기</a>
	</div>
</div>
<!-- BEGIN: 소모임 목록 -->
<c:forEach var="clubVO" items="${data}" varStatus="stat">
	<div class="clubList intro-y mt-0 mb-2 box col-span-12">
		<div id="${clubVO.clbId}" class="py-4">
			<div class="flex px-5 border-t border-b border-slate-200/60">
	   			<div class="flex lg:flex-row items-center my-3" style="width: 65%;">
		        	<div class="flex flex-col sm:flex-row items-center pr-5" style="height: 80%">
		            	<div class="sm:mr-5">
							<div class="image-fit rounded-md" style="width: 220px;height: 130px;">
							    <img alt="clubImg" data-action="zoom" class="w-full rounded-md" src="/resources/upload${clubVO.clbImg}">
							</div>
	                   </div>
		               <div class="mr-auto text-center sm:text-left mt-3 sm:mt-0">
					       <a href="" class="font-bold text-xl font-bold">${clubVO.clbNm}</a>
					       <div class="text-slate-500 mt-2 font-semibold" style="font-size: 14px;">${clubVO.clbIntrcn}</div>
		               </div>
		            </div>
	            </div>
	            <div class="ml-8 items-center">
					<div class="w-full lg:w-auto mt-6 lg:mt-0 pt-4 lg:pt-0 flex-1 flex items-center justify-center px-5 border-t lg:border-t-0 border-slate-200/60">
					    <div class="text-center rounded-md w-20 pt-5 pb-3">
					        <div class="font-medium text-primary text-2xl mb-1">${clubVO.clbNowNmpr}</div>
					        <div class="text-slate-500 font-semibold" style="font-size: 15px;">회원수</div>
					    </div>
					    <div class="text-center rounded-md w-20 pt-5 pb-3">
					        <div class="font-medium text-primary text-2xl mb-1">${clubVO.clbAge}</div>
					        <div class="text-slate-500 font-semibold" style="font-size: 15px;">평균연령</div>
					    </div>
					    <div class="text-center rounded-md w-20 pt-5 pb-4 mt-1 ml-3">
					    	<fmt:parseDate var="parsedDate" value="${clubVO.sbscrbYmd}" pattern="yyyy-MM-dd" />
							<fmt:formatDate var="formattedDate" value="${parsedDate}" pattern="yy.MM.dd" />
					        <div class="font-semibold text-primary text-xl mb-1.5">${formattedDate}</div>
					        <div class="text-slate-500 font-semibold" style="font-size: 15px;">가입일</div>
					    </div>
					</div>
				    <div class="justify-center flex mt-5 mb-2">
				       	<a href="javascript: fn_out('${clubVO.clbId}', '${clubVO.clbNm}')" id="btnOut" class="btn btn-danger ">탈퇴하기</a>
				       	<a href="javascript:;" id="btnDet" class="btn btn-outline-primary ml-4"
				       		data-tw-toggle="modal" data-tw-target="#modal_${clubVO.clbId}">자세히보기</a>
				    </div>
	          	</div>
	      	</div>
	 	</div>
	</div>
</c:forEach>
<!-- END: 소모임 목록 -->

</div>
<!-- END: Body -->

<!-- BEGIN: 모달 -->
<c:forEach var="clubVO" items="${data}" varStatus="stat">
	<div id="modal_${clubVO.clbId}" class="modal" tabindex="-1" aria-hidden="true">
	    <div class="modal-dialog modal-lg">
			<div class="intro-y col-span-12 md:col-span-6 xl:col-span-4 box">
		        <div class="flex items-center border-b border-slate-200/60 dark:border-darkmode-400 px-5 py-4">
		            <div class="w-12 h-12 flex-none image-fit">
		                <img alt="profile" class="rounded-full" src="/resources/images/blank_profile.png">
		            </div>
		            <div class="ml-3 mr-auto">
		                <a href="javascript:;" class="font-semibold text-xl">${clubVO.clbNm}</a>
		                <div class="flex font-medium truncate mt-0.5"> <a class="text-primary inline-block truncate" href="javascript:;">모임장 : ${clubVO.frstWrterId}</a></div>
		            </div>
		        </div>
		        <div class="p-5">
		            <div class="h-40 h-80 image-fit">
		                <img alt="clbImg_Detail" class="rounded-md" src="/resources/upload${clubVO.clbImg}">
		            </div>
		            <a href="javascript:;" class="block font-semibold text-base mt-5 text-lg">${clubVO.clbNm}</a>
		            <div class="text-slate-500 font-semibold mt-2 text-lg">${clubVO.clbIntrcn}</div>
		        </div>
		        <div class="flex items-center px-5 py-3 border-t border-slate-200/60">
		            <a class="intro-x w-8 h-8 flex items-center justify-center rounded-full border border-slate-300 text-slate-500 mr-2"> <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="bookmark" data-lucide="bookmark" class="lucide lucide-bookmark w-3 h-3"><path d="M19 21l-7-4-7 4V5a2 2 0 012-2h10a2 2 0 012 2v16z"></path></svg> </a>
		            <a id="btnOut" href="javascript: fn_out('${clubVO.clbId}', '${clubVO.clbNm}')" style="height: 33px;"
		            	class="intro-x w-24 flex items-center justify-center btn btn-elevated-rounded-danger text-white ml-auto" >탈퇴하기</a>
		        </div>
		        <div class="px-5 pt-3 pb-5 border-t border-slate-200/60">
		            <div class="w-full flex text-slate-500 text-xs sm:text-sm items-center" style="font-size: 15px;">
		                <div class="mr-2"> 회원수 : <span class="font-medium">${clubVO.clbNowNmpr} 명</span></div>
		                <span>•</span><div class="ml-2"> 평균연령 : <span class="font-medium">${clubVO.clbAge} 세</span> </div>
		                <div class="ml-auto"> 개설일 : <span class="font-medium">${clubVO.fsrtWritingTm}</span></div>
		            </div>
		        </div>
		    </div>
	    </div>
	</div>
</c:forEach>
<!-- END: 모달 -->

<script type="text/javascript" src="/resources/js/jquery-3.6.4.min.js"></script>
<script type="text/javascript">
$(function(){
	$("#main_menu").html("마이페이지");
	$("#sub_menu").html("마이홈");

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

	// 가입한 소모임이 없을 경우 처리
	let arr_clb = $(".clubList").children();
	if (arr_clb.length == 0) {
		$("#no_club").removeClass("hidden");
	}
});

// 탈퇴버튼 이벤트 핸들러
function fn_out(clbId, clb_nm) {

	if (confirm("소모임을 탈퇴하시겠습니까?")) {
		alert("정상적으로 탈퇴되었습니다.");
		$("#" + clbId).remove();
		$("#modal_" + clbId).remove();
	}

	// 가입한 소모임 없음 표시
	let arr_clb = $(".clubList").children();
	if (arr_clb.length == 0) {
		$("#no_club").removeClass("hidden");
	}
}
</script>


