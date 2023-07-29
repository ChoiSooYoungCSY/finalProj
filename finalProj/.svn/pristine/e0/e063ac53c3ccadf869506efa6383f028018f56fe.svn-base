<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<script type="text/javascript" src="/resources/ckeditor/ckeditor.js"></script>


<!-- BEGIN: Menu -->
<div class="col-span-12 lg:col-span-3 2xl:col-span-2">
	<div class="intro-y box bg-primary p-5 mt-0 text-lg" style="height: 100%;">
		<nav class="side-nav">
			<ul>
				<li><a href="/mem/cmnt/neighborbbs" class="side-menu">
						<div class="side-menu__icon">
							<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
								viewBox="0 0 24 24" fill="none" stroke="currentColor"
								stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
								icon-name="home" data-lucide="home" class="lucide lucide-home">
								<path d="M3 9l9-7 9 7v11a2 2 0 01-2 2H5a2 2 0 01-2-2z"></path></svg>
						</div>
						<div class="side-menu__title">우리동네</div>
				</a></li>
				<li><a href="/mem/cmnt/secondhandbbs" class="side-menu">
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
						<div class="side-menu__title">중고장터</div>
				</a></li>
				<li><a href="/mem/cmnt/clubbbs" class="side-menu">
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
						<div class="side-menu__title">소모임</div>
				</a></li>
				<li><a href="/mem/cmnt/freebbs" class="side-menu">
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
						<div class="side-menu__title">자유게시판</div>
				</a></li>
				<li><a href="/mem/cmnt/cvplbbs" class="side-menu">
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
						<div class="side-menu__title">민원게시판</div>
				</a></li>
			</ul>
		</nav>
	</div>
</div>
<!-- END: Menu -->
<!-- BEGIN: Body -->
<div class="bdy col-span-12 lg:col-span-9 2xl:col-span-10">

	<form id="frm" action="/mem/cmnt/freebbs/freeupdatePost?${_csrf.parameterName}=${_csrf.token}" method="post" enctype="multipart/form-data">
		<div class="intro-y box p-5">
			<sec:authentication property="principal.userVO" var="userVO" />
			<input type="hidden" name="frstWrterId"
				value="${userVO.memberVO.memId}"> <input type="hidden"
				name="lastUpdusrId" value="${userVO.memberVO.memId}"> <input
				type="hidden" name="pstId" value="${freeUpdate.pstId}">
			<div>
				<label for="crud-form-1" class="form-label text-xl font-semibold">제목</label>
				<input id="crud-form-1" name="pstSj" type="text"
					class="form-control w-full text-lg font-semibold mt-1"
					value="${freeUpdate.pstSj}">
			</div>

			<div class="mt-3">
				<label for="crud-form-3"
					class="form-label text-xl font-semibold mt-3 mb-3" id="crud-form-3">내용</label>
				<textarea name="editor" rows="3" cols="5">${freeUpdate.pstCn}</textarea>
				<input id="pstCn" name="pstCn" type="hidden" />
			</div>


			<div class="col-span-12 2xl:col-span-6">
						    <div class="border-2 border-dashed shadow-sm border-slate-200/60 dark:border-darkmode-400 rounded-md p-5">
						        <div class="flex justify-center items-center flex-col" id="imgUploadDiv">
						           <label class="form-label text-xl font-semibold mt-3">첨부 이미지</label>
					<label class="text-primary text-lg font-semibold mr-1 cursor-pointer" for="contentImages">
		            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="image" data-lucide="image" class="lucide lucide-image w-4 h-4 mr-2"><rect x="3" y="3" width="18" height="18" rx="2" ry="2"></rect><circle cx="8.5" cy="8.5" r="1.5"></circle><polyline points="21 15 16 10 5 21"></polyline></svg>
		            이미지 파일 업로드</label>
		            <input type="file" id="contentImages" name="contentImages" class="top-0 left-0 absolute opacity-0 cursor-pointer" multiple />
<%-- 		            <input type="file" id="productImage2_${atchmnflDetailVO.atchmnflNo}" data-no="${atchmnflDetailVO.atchmnflNo}" name="productImage2" class="hidden clsProductImage" multiple /> --%>
		        	<div id="previewContainer" class="image-preview"></div>
		    			<div class="px-4 pb-4 flex items-center relative" id="oldPreviewContainer">
						                <c:forEach var="atchmnflDetailVO" items="${freeUpdate.atchmnflDetailList}" varStatus="stat">
						                    <!-- BEGIN: 이미지 업로드 -->
				<!-- END: 이미지 업로드 -->
						                    <div style="display: inline-block; text-align: center;">
						                        <img alt="Midone - HTML Admin Template" style="max-width: 150px; max-height: 150px;" id="contentImages${atchmnflDetailVO.atchmnflNo}" class="rounded-md" src="/resources/upload${atchmnflDetailVO.flpth}/${atchmnflDetailVO.streFlNm}">
						                    </div>
						                </c:forEach>
		        		</div>

						        </div>
						    </div>
						</div>




			<div class="text-right mt-5">
				<button type="submit" id="btnReg"><span class="btn btn-primary w-24 mr-1">저장</span></button>
				<a href="/mem/cmnt/freebbs/freedetail?pstId=${freeBbsVO.pstId}" class="btn btn-primary mr-4">취소</a>
			</div>
		</div>
		<sec:csrfInput />
	</form>
</div>
<!-- END: Body -->

<script type="text/javascript" src="/resources/js/jquery-3.6.4.min.js"></script>
<script type="text/javascript">
	$(function() {
		$("#main_menu").html("커뮤니티");
		$("#sub_menu").html("자유게시판");

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
	});
</script>
<style type="text/css">
#btnReg {
	background-color: rgb(6, 78, 59);
	letter-spacing: 1px;
}

#btnReg, #btnCncl {
	font-size: 16px;
}
</style>
<script type="text/javascript" src="/resources/js/jquery-3.6.4.min.js"></script>
<script type="text/javascript" src="/resources/ckeditor/ckeditor.js"></script>
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
	$("#sub_menu").html("자유게시판");

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

// form submit


$("#btnReg").on("click", function(){
	let formObj = document.querySelector("#frm");
	let content = CKEDITOR.instances.editor.getData();
	$("#pstCn").val(content);

	formObj.submit();
});

//==================== 이미지 미리보기 ====================
let sel_file = [];

//<input type="file" name="productImage" class="form-control" />
$("input[id='contentImages']").on("change",handleImgFileSelect);

//e : onchange 이벤트 객체
function handleImgFileSelect(e) {
	console.log("handleImgFileSelect에 왔다");
	// e.target : <input type="file" name="productImage" class="form-control" />
	let files = e.target.files;

	// 이미지 오브젝트 배열
	let fileArr = Array.prototype.slice.call(files); // 이미지를 잘라서 콜하는 것

	// f : fileArr(이미지 오브젝트 배열)에서 이미지 오브젝트 1개
	fileArr.forEach(function(f){
		// f.type : 이미지 오브젝트의 MIME 타입
		if (!f.type.match("image.*")) {
			alert("이미지 확장자만 가능합니다.");
			return; // 함수 종료
		}

		// if문을 통과 (이미지라면..)
		// 이미지 하나를 배열에 넣음
		sel_file.push(f);

		// 이미지를 읽어보자
		let reader = new FileReader();
		// e : 리더가 이미지를 읽을 때 그 이벤트를 의미
		reader.onload = function(e){
			// e.target : 이미지 객체
// 			let img_html = "<img src='" + e.target.result + "' style='width:50%;' />";
			// 객체.append : 누적, .html : 새로고침, innerHTML : J/S
// 			$("#cardIamges").append(img_html);

			let img_html = "<img src='" + e.target.result + "' style='width:30%; margin-right:3px;' />";
			$("#previewContainer").append(img_html);
		}

		$("#oldPreviewContainer").hide();
		// 다음 이미지 파일(f)를 위해 reader를 초기화
		reader.readAsDataURL(f);

	}); // end forEach
}


//이미지 미리보기 끝    //////////////////
// 이미지 미리보기 삭제
function fn_imgDel() {
	$("#imgShow").html("");
	$("#imgShow").removeClass("cursor-pointer zoom-in");
}

</script>