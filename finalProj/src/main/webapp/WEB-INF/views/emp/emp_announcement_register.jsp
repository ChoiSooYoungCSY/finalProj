<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>

<div class="col-span-12 lg:col-span-3 2xl:col-span-2">
    <!-- BEGIN: Menu -->
    <div class="intro-y box bg-primary p-4 mt-0 text-lg">
    	<nav class="side-nav">
		    <ul>
		        <li>
		            <a href="/emp/onair/annnc" class="side-menu side-menu--active">
		                <div class="side-menu__icon"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="home" data-lucide="home" class="lucide lucide-home"><path d="M3 9l9-7 9 7v11a2 2 0 01-2 2H5a2 2 0 01-2-2z"></path></svg></div>
		                <div class="side-menu__title"> 안내방송 </div>
		            </a>
		        </li>
		        <li>
		            <a href="/emp/onair/resveannnc" class="side-menu">
		                <div class="side-menu__icon"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="box" data-lucide="box" class="lucide lucide-box"><path d="M21 16V8a2 2 0 00-1-1.73l-7-4a2 2 0 00-2 0l-7 4A2 2 0 003 8v8a2 2 0 001 1.73l7 4a2 2 0 002 0l7-4A2 2 0 0021 16z"></path><polyline points="3.27 6.96 12 12.01 20.73 6.96"></polyline><line x1="12" y1="22.08" x2="12" y2="12"></line></svg></div>
		                <div class="side-menu__title"> 방송 예약 설정 </div>
		            </a>
		        </li>
		    </ul>
		</nav>
    </div>
    <!-- END: Menu -->
</div>
<!-- BEGIN: Body -->
<div class="bdy col-span-12 lg:col-span-9 2xl:col-span-10">

<form id="frm" name="frm" action="/emp/onair/annnc/registerPost" method="post">
	<div class="intro-y box p-5">
		<sec:authentication property="principal.userVO" var="userVO" />
		<input type="hidden" name="frstWrterId" value="${userVO.empVO.empId}">
		<input type="hidden" name="lastUpdusrId" value="${userVO.empVO.empId}">
	    <div class="mt-3">
	        <label for="crud-form-3" class="form-label text-xl font-semibold mt-3 mb-3" id="crud-form-3">내용</label>
	        <textarea name="editor" rows="3" cols="5"></textarea>
	        <input id="annncCn" name="annncCn" type="hidden" />
	    </div>
		<div class="text-right mt-5">
	        <button type="button" id="btnReg" class="btn btn-primary" style="background-color:rgb(30,58,138);">등록하기</button>
	        <a href="/emp/onair/annnc" class="btn btn-primary mr-4">취소</a>
	    </div>
	</div>
	<sec:csrfInput/>
</form>
</div>
<!-- END: Body -->

<script type="text/javascript" src="/resources/js/jquery-3.6.4.min.js"></script>
<script type="text/javascript">
$(function(){
	$("#main_menu").html("ON AIR");
	$("#sub_menu").html("안내방송");

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

	// form submit
	let formObj = document.querySelector("#frm");

	$("#btnReg").on("click", function(){
		let content = CKEDITOR.instances.editor.getData();
		$("#annncCn").val(content);

		formObj.submit();
	});


	// 취소 버튼 이벤트 핸들러 함수
	$("#btnCncl").on("click", function(){
		location.href = "/emp/onair/annnc";
	});
// });

</script>

