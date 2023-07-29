<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<script type="text/javascript" src="/resources/js/jquery-3.6.4.min.js"></script>
<style>
.sidebar {
	position: fixed;
	margin-top: 80px;
	top: 45%;
	right: 70px;
	transform: translateY(-50%);
	width: 200px;
	background-color: #f1f1f1;
	padding: 20px;
	border-radius: 20px;
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
<h5 class="text-lg font-medium leading-none mt-0 mr-auto">생활편의서비스 &gt; 도서관</h5>
<sec:authentication property="principal.userVO" var="userVO" />
	<div class="intro-y box p-5 mt-5">
    <!-- AI 도서 추천 시작 -->
    <%-- <p>${recomData}</p> --%>
	    <div class="flex flex-col sm:flex-row items-center p-3 border-b border-slate-200/60">
	        <h2 class="font-bold text-base ml-3 flex text-lg">${userVO.memberVO.memNm}님을 위한 AI 추천 도서&nbsp;&nbsp;
	            <i class="bi bi-info-circle tooltip" title="도서 대출기록을 기반으로한 장르 추천 중 세권을 추천하는 AI 시스템입니다."></i></h2>
	    </div>
			<div class="grid grid-cols-12 gap-5">
				<c:forEach var="map" items="${recomData}" varStatus="stat">
					<div class="intro-y col-span-12 sm:col-span-6 2xl:col-span-4">
						<div class="box">
							<div class="p-5">
								<div class="h-40 2xl:h-56 image-fit rounded-md overflow-hidden">
									<img alt="추천도서 이미지" class="rounded-md"	src="/imageView?filename=${map.BOOK_IMG}">
									<span class="absolute top-0 bg-red-500/80 text-white text-xs m-5 px-2 py-1 rounded z-10">추천도서</span>
									<div class="absolute bottom-0 text-white px-5 pb-6 z-10">
										<span class="block font-medium text-base">
											제목 : ${map.BOOK_SJ}
										</span>
									</div>
								</div>
								<div class="text-slate-600 dark:text-slate-500 mt-5">
									<div class="flex items-center">
										<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
											viewBox="0 0 24 24" fill="none" stroke="currentColor"
											stroke-width="2" stroke-linecap="round"
											stroke-linejoin="round" icon-name="link" data-lucide="link"
											class="lucide lucide-link w-4 h-4 mr-2">
										<path
												d="M10 13a5 5 0 007.54.54l3-3a5 5 0 00-7.07-7.07l-1.72 1.71"></path>
										<path
												d="M14 11a5 5 0 00-7.54-.54l-3 3a5 5 0 007.07 7.07l1.71-1.71"></path></svg>
										번호 : ${map.BOOK_NO}
									</div>
									<div class="flex items-center mt-2">
										<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
											viewBox="0 0 24 24" fill="none" stroke="currentColor"
											stroke-width="2" stroke-linecap="round"
											stroke-linejoin="round" icon-name="pen-tool"
											data-lucide="pen-tool"
											class="lucide lucide-pen-tool w-4 h-4 mr-2">
									<path d="M12 19l7-7 3 3-7 7-3-3z"></path>
										<path d="M18 13l-1.5-7.5L2 2l3.5 14.5L13 18l5-5z"></path>
										<path d="M2 2l7.586 7.586"></path>
											<circle cx="11" cy="11" r="2"></circle></svg>
										저자 : ${map.AUTHR}
									</div>
									<div class="flex items-center mt-2">
										<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
											viewBox="0 0 24 24" fill="none" stroke="currentColor"
											stroke-width="2" stroke-linecap="round"
											stroke-linejoin="round" icon-name="award" data-lucide="award"
											class="lucide lucide-award w-4 h-4 mr-2">
										<polyline points="9 11 12 14 22 4"></polyline>
										<path
												d="M21 12v7a2 2 0 01-2 2H5a2 2 0 01-2-2V5a2 2 0 012-2h11"></path></svg>
										재고 : ${map.INVNTRY}
									</div>
								</div>
							</div>
						</div>
					</div>
				</c:forEach>
			</div>
		</div>
		<!-- AI 도서 추천 끝 -->
		<div class="intro-y box p-5 mt-3">
		<!-- 검색하기 시작 -->
		<div class="flex flex-col sm:flex-row sm:items-end xl:items-end" style="display:flex; justify-content:flex-end;">
			<h2 class="font-bold text-base ml-3 flex text-lg" style="margin-right:400px;">도서 목록&nbsp;&nbsp;</h2>
			<form id="tabulator-html-filter-form" class="xl:flex sm:justify-right" style="text-align: right; margin: 0;" action="/mem/life/library">
				<div class="sm:flex items-center sm:mr-4">
					<select name="cond" id="cond" aria-controls="dataTable"
						class="form-select w-full sm:w-24 2xl:w-full mt-2 sm:mt-0 sm:w-auto"
						style="height: 38.13px; font-size: 16px;">
						<option value="" disabled="" selected="" hidden="">도서검색</option>
						<option value="bookNo"
							<c:if test="${param.cond=='bookNo'}">selected</c:if>>번호</option>
						<option value="bookSj"
							<c:if test="${param.cond=='bookSj'}">selected</c:if>>제목</option>
						<option value="authr"
							<c:if test="${param.cond=='authr'}">selected</c:if>>저자</option>
					</select>
				</div>
				<div class="sm:flex items-center sm:mr-4 mt-2 xl:mt-0"
					style="display: none;">
					<select id="tabulator-html-filter-type"
						class="form-select w-full mt-2 sm:mt-0 sm:w-auto">
						<option value="like" selected="selected">like</option>
					</select>
				</div>
				<div class="sm:flex items-center sm:mr-4 mt-2 xl:mt-0">
					<input id="keyword" type="text" name="keyword"
						class="form-control sm:w-40 2xl:w-full mt-2 sm:mt-0"
						placeholder="검색어를 입력해주세요" aria-controls="dataTable" value="${param.keyword}" />
				</div>
				<div class="mt-2 xl:mt-0">
					<button id="tabulator-html-filter-go"
						class="btn btn-primary w-full sm:w-16 font-medium"
						>검색</button>
				</div>
			</form>
		</div>
		<!-- 검색하기 끝 -->
		<div class="col-span-12 lg:col-span-7 2xl:col-span-8 mt-3">
<%-- 			<p>${data.content}</p> --%>
			<div class="grid grid-cols-12 gap-5">
				<c:forEach var="bookVO" items="${data.content}" varStatus="stat">
					<div class="intro-y col-span-12 sm:col-span-6 2xl:col-span-4">
						<div class="box">
							<div class="p-5">
								<div class="h-40 2xl:h-56 image-fit rounded-md overflow-hidden">
									<a href="/mem/life/library/bookdetail?bookNo=${bookVO.bookNo}" class="block font-medium text-base">
									<img alt="도서 이미지를 등록해주세요" class="rounded-md"	src="/imageView?filename=${bookVO.bookImg}">
										<c:choose>
											<c:when test="${bookVO.loanmem==1}">
												<span class="absolute top-0 bg-red-500 bg-opacity-80 text-white text-xs m-5 px-2 py-1 rounded z-10 loanbtn">대출중</span>
											</c:when>
											<c:when test="${bookVO.invntry le bookVO.loanflag}">
												<span class="absolute top-0 bg-orange-500 bg-opacity-80 text-white text-xs m-5 px-2 py-1 rounded z-10 loanbtn">대출불가</span>
											</c:when>
											<c:otherwise>
												<span class="absolute top-0 bg-green-500 bg-opacity-80 text-white text-xs m-5 px-2 py-1 rounded z-10 loanbtn">대출가능</span>
											</c:otherwise>
										</c:choose>


									<div class="absolute bottom-0 text-white px-5 pb-6 z-10">

										도서번호 : ${bookVO.bookNo}</a>
									</div>
								</div>
								<div class="text-slate-600 dark:text-slate-500 mt-5">
									<div class="flex items-center">
										<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
											viewBox="0 0 24 24" fill="none" stroke="currentColor"
											stroke-width="2" stroke-linecap="round"
											stroke-linejoin="round" icon-name="link" data-lucide="link"
											class="lucide lucide-link w-4 h-4 mr-2">
										<path
												d="M10 13a5 5 0 007.54.54l3-3a5 5 0 00-7.07-7.07l-1.72 1.71"></path>
										<path
												d="M14 11a5 5 0 00-7.54-.54l-3 3a5 5 0 007.07 7.07l1.71-1.71"></path></svg>
										제목 : ${bookVO.bookSj}
									</div>
									<div class="flex items-center mt-2">
										<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
											viewBox="0 0 24 24" fill="none" stroke="currentColor"
											stroke-width="2" stroke-linecap="round"
											stroke-linejoin="round" icon-name="pen-tool"
											data-lucide="pen-tool"
											class="lucide lucide-pen-tool w-4 h-4 mr-2">
									<path d="M12 19l7-7 3 3-7 7-3-3z"></path>
										<path d="M18 13l-1.5-7.5L2 2l3.5 14.5L13 18l5-5z"></path>
										<path d="M2 2l7.586 7.586"></path>
											<circle cx="11" cy="11" r="2"></circle></svg>
										저자 : ${bookVO.authr}
									</div>
									<div class="flex items-center mt-2">
										<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
											viewBox="0 0 24 24" fill="none" stroke="currentColor"
											stroke-width="2" stroke-linecap="round"
											stroke-linejoin="round" icon-name="award" data-lucide="award"
											class="lucide lucide-award w-4 h-4 mr-2">
										<polyline points="9 11 12 14 22 4"></polyline>
										<path
												d="M21 12v7a2 2 0 01-2 2H5a2 2 0 01-2-2V5a2 2 0 012-2h11"></path></svg>
										재고 : ${bookVO.invntry-bookVO.loanflag}
									</div>
								</div>
							</div>

						</div>
					</div>
				</c:forEach>
			</div>

			<!-- BEGIN: Pagination 페이징처리 -->
			<div class="intro-y flex flex-wrap sm:flex-row sm:flex-nowrap items-center mt-6">
				<nav class="w-full sm:w-auto sm:mr-auto">
					<ul class="pagination">
						<li class="page-item"><a class="page-link"
							href="/mem/life/library?currentPage=1"> <svg
									xmlns="http://www.w3.org/2000/svg" width="24" height="24"
									viewBox="0 0 24 24" fill="none" stroke="currentColor"
									stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
									icon-name="chevrons-left"
									class="lucide lucide-chevrons-left w-4 h-4"
									data-lucide="chevrons-left">
									<polyline points="11 17 6 12 11 7"></polyline>
									<polyline points="18 17 13 12 18 7"></polyline></svg>
						</a></li>
						<li class="page-item"><a class="page-link"
										<c:if test="${data.startPage>=5}">
										href="/mem/life/library?cond=${param.cond}&keyword=${param.keyword }&size=${param.size}&currentPage=${data.startPage-5}"
										</c:if>
										<c:if test="${data.startPage<6}">
										href="#"
										</c:if>
									> <svg
									xmlns="http://www.w3.org/2000/svg" width="24" height="24"
									viewBox="0 0 24 24" fill="none" stroke="currentColor"
									stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
									icon-name="chevron-left"
									class="lucide lucide-chevron-left w-4 h-4"
									data-lucide="chevron-left">
									<polyline points="15 18 9 12 15 6"></polyline></svg>
						</a></li>
						<c:forEach var="pNo" begin="${data.startPage}" end="${data.endPage}" step="1">
						<li class="page-item">
							<a class="page-link" href="/mem/life/library?cond=${param.cond}&keyword=${param.keyword }&size=${param.size}&currentPage=${pNo}">${pNo}</a>
						</li>
						</c:forEach>
						<li class="page-item"><a class="page-link"
								<c:if test='${data.endPage == data.totalPages}'>
								href="#"
								</c:if>
								<c:if test='${data.endPage < data.totalPages}'>
								href="/mem/life/library?cond=${param.cond}&keyword=${param.keyword }&size=${param.size}&currentPage=${data.startPage+5}"
								</c:if>
								>
						<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
									viewBox="0 0 24 24" fill="none" stroke="currentColor"
									stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
									icon-name="chevron-right"
									class="lucide lucide-chevron-right w-4 h-4"
									data-lucide="chevron-right">
									<polyline points="9 18 15 12 9 6"></polyline></svg>
						</a></li>
						<li class="page-item"><a class="page-link" href="/mem/life/library?cond=${param.cond}&keyword=${param.keyword }&size=${param.size}&currentPage=${data.totalPages}"> <svg
									xmlns="http://www.w3.org/2000/svg" width="24" height="24"
									viewBox="0 0 24 24" fill="none" stroke="currentColor"
									stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
									icon-name="chevrons-right"
									class="lucide lucide-chevrons-right w-4 h-4"
									data-lucide="chevrons-right">
									<polyline points="13 17 18 12 13 7"></polyline>
									<polyline points="6 17 11 12 6 7"></polyline></svg>
						</a></li>
					</ul>
				</nav>
				<select class="w-20 form-select box mt-3 sm:mt-0" id="sel">
					<option value="10"
						<c:if test="${param.size=='10'}">selected</c:if>
					>10</option>
					<option value="25"
						<c:if test="${param.size=='25'}">selected</c:if>
					>25</option>
					<option value="35"
						<c:if test="${param.size=='35'}">selected</c:if>
					>35</option>
					<option value="50"
						<c:if test="${param.size=='50'}">selected</c:if>
					>50</option>
				</select>
			</div>
			<!-- END: Pagination -->

			</div>
		</div>
<script>
//대출하기 실행
function loanbook(bookNo){
	$("#loanbookNo").val(bookNo);
}

function loanbookOk(){
	location.href = "/mem/life/library/loanbook?loanBookNo=" + $("#loanbookNo").val();
}

//반납하기 실행
function returnbook(bookNo){
	$("#returnbookNo").val(bookNo);
}

function returnbookOk(){
	location.href = "/mem/life/library/returnbook?returnBookNo=" + $("#returnbookNo").val();
}

</script>


	<!--  ///////////////////// body 끝 ///////////////////////////////////// -->


</div>
<!-- END: Body -->

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

		//size 처리
		$("#sel").on("change",function(){
			location.href="/mem/life/library?cond=${param.cond}&keyword=${param.keyword }&currentPage=${param.currentPage}&size="+$(this).val();
		});
	});


	$("#keyword").on("click",function(){


	   });
</script>


