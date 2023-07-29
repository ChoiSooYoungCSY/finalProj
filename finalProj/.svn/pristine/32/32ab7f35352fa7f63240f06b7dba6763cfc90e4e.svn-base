<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>

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

<form id="frm" action="/mem/life/library/registerPost?${_csrf.parameterName}=${_csrf.token}"
	method="post" enctype="multipart/form-data" onsubmit="return chk()">
<%-- <p>${bookdata}</p> --%>
	<div class="intro-y box p-5">
	    <div>
	        <label for="crud-form-1" class="form-label text-xl font-semibold">도서 번호</label>
	        <input id="crud-form-1" name="bookNo" value="${bookdata.bookNo}" type="text" class="form-control w-full text-lg font-semibold mt-1" readonly>
	    </div>
	    <div class="mt-3 selectBox">
	        <label for="crud-form-2" class="form-label text-xl font-semibold mt-3" id="crud-form-1">도서 장르</label>
	        <select name="bookSeCd" class="form-select w-full text-lg font-semibold mt-1 rewrite" id="crud-form-2" readonly required>
	        	<option class="opt" value="">${bookdata.bookSeCd}</option>
	        	<option class="opt" value="BOOK01">소설/시</option>
	        	<option class="opt" value="BOOK02">자기계발</option>
	        	<option class="opt" value="BOOK03">교육</option>
	        	<option class="opt" value="BOOK04">만화</option>
	        	<option class="opt" value="BOOK05">드라마</option>
	        </select>
	    </div>
	    <div>
	        <label for="crud-form-1" class="form-label text-xl font-semibold mt-3">도서 제목</label>
	        <input id="crud-form-1" name="bookSj" value="${bookdata.bookSj}" type="text" class="form-control w-full text-lg font-semibold mt-1 rewrite" readonly required>
	    </div>
	    <div>
	        <label for="crud-form-1" class="form-label text-xl font-semibold mt-3">저자</label>
	        <input id="crud-form-1" name="authr" value="${bookdata.authr}" type="text" class="form-control w-full text-lg font-semibold mt-1 rewrite" readonly required>
	    </div>
	    <div>
	        <label for="crud-form-1" class="form-label text-xl font-semibold mt-3">재고 수</label>
	        <input id="crud-form-1" name="invntry" value="${bookdata.invntry}" type="text" class="form-control w-full text-lg font-semibold mt-1 rewrite" readonly required>
	    </div>
		<div class="mt-3">
		    <label class="form-label text-xl font-semibold mt-3">도서 이미지</label>
		    <div class="border-2 border-dashed dark:border-darkmode-400 rounded-md pt-4">
		    	<!-- BEGIN: 이미지 업로드 -->
		    	<div class="px-4 pb-4 flex items-center relative">
		            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="image" data-lucide="image" class="lucide lucide-image w-4 h-4 mr-2"><rect x="3" y="3" width="18" height="18" rx="2" ry="2"></rect><circle cx="8.5" cy="8.5" r="1.5"></circle><polyline points="21 15 16 10 5 21"></polyline></svg> <span class="text-primary text-lg font-semibold mr-1">도서 이미지</span>
		            <input type="file" id="picture" name="picture" class="w-full h-full top-0 left-0 absolute opacity-0 cursor-pointer">
		        </div>
		        <!-- END: 이미지 업로드 -->
		        <!-- BEGIN: 이미지 미리보기 -->
		        <div class="flex flex-wrap px-4 mt-1">
		            <div id="imgShow" class="w-24 h-24 relative image-fit mb-5 mr-5" style="width: 400px; height: 600px;">
		            <c:if test="${bookdata.bookImg!=null}">
		            	<img class="rounded-md" alt="bookImg" src="/imageView?filename=${bookdata.bookImg}"/>
		            </c:if>
		            </div>
		        </div>
		        <!-- END: 이미지 미리보기 -->
		    </div>
		</div>
	</div>
		<div class="text-right mt-5 basic">
	        <a href="/mem/life/library" class="btn btn-primary w-24 mr-1">목록</a>
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
<script type="text/javascript">
$(function() {
	$("#main_menu").html("생활편의서비스");
	$("#sub_menu").html("도서관");

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
	                <img class="rounded-md" alt="bookImg" src="\${e.target.result}">
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
	// 이미지 미리보기 끝===================================================

});

// 이미지 미리보기 삭제
function fn_imgDel() {
	$("#imgShow").html("");
	$("#imgShow").removeClass("cursor-pointer zoom-in");
}
</script>


