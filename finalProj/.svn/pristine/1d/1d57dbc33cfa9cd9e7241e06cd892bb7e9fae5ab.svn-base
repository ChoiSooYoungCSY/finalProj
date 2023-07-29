<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>

<!-- BEGIN: Menu -->
<div class="col-span-12 lg:col-span-3 2xl:col-span-2">
    <div class="intro-y box bg-primary p-5 mt-0 text-lg" style="height: 100%;">
    	<nav class="side-nav">
		    <ul>
		        <li>
		            <a href="/mem/cmnt/neighborbbs" class="side-menu">
		                <div class="side-menu__icon"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="home" data-lucide="home" class="lucide lucide-home"><path d="M3 9l9-7 9 7v11a2 2 0 01-2 2H5a2 2 0 01-2-2z"></path></svg></div>
		                <div class="side-menu__title"> 우리동네 </div>
		            </a>
		        </li>
		        <li>
		            <a href="/mem/cmnt/secondhandbbs" class="side-menu">
		                <div class="side-menu__icon"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="box" data-lucide="box" class="lucide lucide-box"><path d="M21 16V8a2 2 0 00-1-1.73l-7-4a2 2 0 00-2 0l-7 4A2 2 0 003 8v8a2 2 0 001 1.73l7 4a2 2 0 002 0l7-4A2 2 0 0021 16z"></path><polyline points="3.27 6.96 12 12.01 20.73 6.96"></polyline><line x1="12" y1="22.08" x2="12" y2="12"></line></svg></div>
		                <div class="side-menu__title"> 중고장터 </div>
		            </a>
		        </li>
		        <li>
		            <a href="/mem/cmnt/clubbbs" class="side-menu">
		                <div class="side-menu__icon"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="box" data-lucide="box" class="lucide lucide-box"><path d="M21 16V8a2 2 0 00-1-1.73l-7-4a2 2 0 00-2 0l-7 4A2 2 0 003 8v8a2 2 0 001 1.73l7 4a2 2 0 002 0l7-4A2 2 0 0021 16z"></path><polyline points="3.27 6.96 12 12.01 20.73 6.96"></polyline><line x1="12" y1="22.08" x2="12" y2="12"></line></svg></div>
		                <div class="side-menu__title"> 소모임 </div>
		            </a>
		        </li>
		        <li>
		            <a href="/mem/cmnt/freebbs" class="side-menu">
		                <div class="side-menu__icon"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="box" data-lucide="box" class="lucide lucide-box"><path d="M21 16V8a2 2 0 00-1-1.73l-7-4a2 2 0 00-2 0l-7 4A2 2 0 003 8v8a2 2 0 001 1.73l7 4a2 2 0 002 0l7-4A2 2 0 0021 16z"></path><polyline points="3.27 6.96 12 12.01 20.73 6.96"></polyline><line x1="12" y1="22.08" x2="12" y2="12"></line></svg></div>
		                <div class="side-menu__title"> 자유게시판 </div>
		            </a>
		        </li>
		        <li>
		            <a href="/mem/cmnt/cvplbbs" class="side-menu">
		                <div class="side-menu__icon"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="box" data-lucide="box" class="lucide lucide-box"><path d="M21 16V8a2 2 0 00-1-1.73l-7-4a2 2 0 00-2 0l-7 4A2 2 0 003 8v8a2 2 0 001 1.73l7 4a2 2 0 002 0l7-4A2 2 0 0021 16z"></path><polyline points="3.27 6.96 12 12.01 20.73 6.96"></polyline><line x1="12" y1="22.08" x2="12" y2="12"></line></svg></div>
		                <div class="side-menu__title"> 민원게시판 </div>
		            </a>
		        </li>
		    </ul>
		</nav>
    </div>
</div>
<!-- END: Menu -->
<!-- BEGIN: Body -->
<div class="bdy col-span-12 lg:col-span-9 2xl:col-span-10">

<form id="frm" action="/mem/cmnt/clubbbs/registerPost?${_csrf.parameterName}=${_csrf.token}"
	method="post" enctype="multipart/form-data">
	<div class="intro-y box p-5">
		<sec:authentication property="principal.userVO" var="userVO" />
		<input type="hidden" name="frstWrterId" value="${userVO.memberVO.memId}">
		<input type="hidden" name="lastUpdusrId" value="${userVO.memberVO.memId}">
	    <div>
	        <label for="crud-form-1" class="form-label text-xl font-semibold">소모임 이름</label><a id="auto" class="btn btn-secondary p-1 font-bold h-6 ml-2" style="width: 65px;"> 자동완성 </a>
	        <input id="crud-form-1" name="clbNm" type="text" class="form-control w-full text-lg font-semibold mt-1">
	    </div>
	    <div class="mt-3">
	        <label for="crud-form-2" class="form-label text-xl font-semibold mt-3" id="crud-form-2">분류</label>
	        <select name="clbClCd" class="form-select w-full text-lg font-semibold mt-1" id="crud-form-2">
	        	<option class="opt" value="" hidden>선택해주세요.</option>
	        	<option class="opt" value="CLB01">자기계발</option>
	        	<option class="opt" value="CLB02">음악</option>
	        	<option class="opt" value="CLB03">공연</option>
	        	<option class="opt" value="CLB04">영화</option>
	        	<option class="opt" value="CLB05">독서</option>
	        	<option class="opt" value="CLB06">패션</option>
	        	<option class="opt" value="CLB07">게임</option>
	        	<option class="opt" value="CLB08">여행</option>
	        	<option class="opt" value="CLB09">요리</option>
	        	<option class="opt" value="CLB10">스포츠</option>
	        	<option class="opt" value="CLB11">등산</option>
	        	<option class="opt" value="CLB12">사회봉사</option>
	        	<option class="opt" value="CLB13">미술</option>
	        </select>
	    </div>
	    <div class="mt-3">
	        <label for="crud-form-3" class="form-label text-xl font-semibold mt-3 mb-3" id="crud-form-3">소모임 소개</label>
	        <textarea name="editor" rows="3" cols="5"></textarea>
	        <input id="clbIntrcn" name="clbIntrcn" type="hidden" />
	    </div>
		<div class="mt-3">
		    <label class="form-label text-xl font-semibold mt-3">소모임 대표이미지</label>
		    <div class="border-2 border-dashed dark:border-darkmode-400 rounded-md pt-4">
		    	<!-- BEGIN: 이미지 업로드 -->
		    	<div class="px-4 pb-4 flex items-center relative">
		            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="image" data-lucide="image" class="lucide lucide-image w-4 h-4 mr-2"><rect x="3" y="3" width="18" height="18" rx="2" ry="2"></rect><circle cx="8.5" cy="8.5" r="1.5"></circle><polyline points="21 15 16 10 5 21"></polyline></svg> <span class="text-primary text-lg font-semibold mr-1">이미지 파일 업로드</span>
		            <input type="file" id="picture" name="picture" class="w-full h-full top-0 left-0 absolute opacity-0 cursor-pointer">
		        </div>
		        <!-- END: 이미지 업로드 -->
		        <!-- BEGIN: 이미지 미리보기 -->
		        <div class="flex flex-wrap px-4 mt-1">
		            <div id="imgShow" class="w-24 h-24 relative image-fit mb-5 mr-5" style="width: 200px; height: 130px;"></div>
		        </div>
		        <!-- END: 이미지 미리보기 -->
		    </div>
		</div>
		<div class="text-right mt-5">
	        <button type="button" id="btnReg" class="btn btn-primary w-24 mr-1">등록신청</button>
	        <button type="button" id="btnCncl" class="btn btn-outline-secondary w-24 mr-1">취소</button>
	    </div>
	</div>
	<sec:csrfInput/>
</form>
</div>
<!-- END: Body -->

<style type="text/css">
#btnReg {
	background-color: rgb(6,78,59);
	letter-spacing: 1px;
}
#btnReg, #btnCncl {
	font-size: 16px;
}
</style>
<script type="text/javascript" src="/resources/js/jquery-3.6.4.min.js"></script>
<script type="text/javascript" src="/resources/ckeditor/ckeditor.js" ></script>
<script>
	// CKEDITOR 설정
	CKEDITOR.replace("editor");  // textarea의 name 값 입력
	// html 태그 사라지는 오류 해결
	CKEDITOR.config.allowedContent = true;
	// 입력란 활성화
	CKEDITOR.instances["editor"].setReadOnly(false);
</script>
<script type="text/javascript">
$(function(){
	$("#main_menu").html("커뮤니티");
	$("#sub_menu").html("소모임");

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

	//==================== 이미지 미리보기 ====================
	$("#picture").on("change", handleImg);

	// 이미지 미리보기 처리
	function handleImg(e) {

		let files = e.target.files;
		let fileArr = Array.prototype.slice.call(files);

		fileArr.forEach(function(f) {

			if ( !f.type.match("image.*") ) {
				alert("이미지 파일만 업로드 할 수 있습니다.");
				return;
			}

			let reader = new FileReader();

			reader.onload = function(e) {

				let img_html = `
	                <img class="rounded-md" alt="clubImg" src="\${e.target.result}">
				`;
				let div_html = `
					<div id="imgDel" onclick="fn_imgDel()" class="w-5 h-5 flex items-center justify-center absolute rounded-full text-white bg-danger right-0 top-0 -mr-2 -mt-2"> <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="x" data-lucide="x" class="lucide lucide-x w-4 h-4"><line x1="18" y1="6" x2="6" y2="18"></line><line x1="6" y1="6" x2="18" y2="18"></line></svg> </div>
				`;
				$("#imgShow").append(img_html);
				$("#imgShow").append(div_html);
				$("#imgShow").addClass("cursor-pointer zoom-in");
			}
			reader.readAsDataURL(f);
		});
	}
	//===================================================
	// form submit
	let formObj = document.querySelector("#frm");

	// 등록버튼 이벤트 핸들러
	$("#btnReg").on("click", function(){
		let content = CKEDITOR.instances.editor.getData();
		$("#clbIntrcn").val(content);

		formObj.submit();
	});

	// 취소 버튼 이벤트 핸들러 함수
	$("#btnCncl").on("click", function(){
		location.href = "/mem/cmnt/clubbbs";
	});

	// 자동완성 버튼 이벤트 핸들러 함수
	$("#auto").on("click", function(){
		$("#crud-form-1").val("블링블링");
		$("#crud-form-2").val("CLB10");
		CKEDITOR.instances.editor.setData("볼링 소모임 '블링블링' 에서 회원을 모집합니다.<br />오픈카톡 URL : https://open.kakao.com/c/bAwL15G");
	});
});

// 이미지 미리보기 삭제
function fn_imgDel() {
	$("#imgShow").html("");
	$("#imgShow").removeClass("cursor-pointer zoom-in");
}
</script>


