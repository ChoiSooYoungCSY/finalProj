<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
 <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>


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
<h5 class="text-lg font-medium leading-none mt-0 mr-auto">커뮤니티
         &gt; 자유게시판</h5>
	<div class="intro-y box p-5 mt-5">
		<div class="flex flex-col sm:flex-row sm:items-end xl:items-start">
			<form id="tabulator-html-filter-form" class="xl:flex sm:mr-auto">
				<div class="sm:flex items-center sm:mr-4">
					<select name="cond" id="cond" aria-controls="dataTable"
						class="form-select w-full sm:w-24 2xl:w-full mt-2 sm:mt-0 sm:w-auto"
						style="height: 38.13px; font-size: 16px;">
						<option value="" disabled="" selected="" hidden="">게시글검색</option>
						<option value="pstId"
							<c:if test="${param.cond=='pstId'}">selected</c:if>>게시글번호</option>
						<option value="pstSj"
							<c:if test="${param.cond=='pstSj'}">selected</c:if>>제목</option>
						<option value="frstWrterId"
							<c:if test="${param.cond=='frstWrterId'}">selected</c:if>>작성자</option>
					</select>
				</div>
				<div class="sm:flex items-center sm:mr-4 mt-2 xl:mt-0">
					<input id="keyword" type="text" name="keyword" type="text"
						class="form-control sm:w-40 2xl:w-full mt-2 sm:mt-0"
						placeholder="검색어를 입력해주세요" aria-controls="dataTable" value="${param.keyword}" />
				</div>
				<div class="mt-2 xl:mt-0">
					<button id="tabulator-html-filter-go" type="button">
						<span class="btn btn-primary w-full sm:w-16 font-medium">검색</span>
					</button>
					<button id="tabulator-html-filter-reset" type="button"
						class="btn btn-secondary w-full sm:w-16 mt-2 sm:mt-0 sm:ml-1">초기화</button>
				</div>
			</form>
		</div>
		<div class="overflow-x-auto scrollbar-hidden">
			<div id="test"
				class="mt-3 table-report table-report--tabulator tabulator"
				role="grid" tabulator-layout="fitData"
				style="background-color: white; font-size: 15px; border: none;">
				<div class="tabulator-header" style="padding-right: 0px; background-color: white; border-color: rgb(229, 231, 235); border-style: solid; border-width: 0px; box-sizing: border-box; display: block; font-family: Pretendard; font-feature-settings: normal; font-size: 16px; font-variation-settings: normal; letter-spacing: 1px; margin-left: 0px; text-size-adjust: 100%; white-space: nowrap; user-select: none; -webkit-font-smoothing: antialiased;">
					<div class="tabulator-headers" style="margin-left: 0px;">
						<div class="tabulator-col tabulator-sortable" role="columnheader"
							aria-sort="none" tabulator-field="seq" title=""
							style="min-width: 50px; width: 110px; height: 44px;">
							<div class="tabulator-col-content">
								<div class="tabulator-col-title-holder">
									<div class="tabulator-col-title">번호</div>
									<div class="tabulator-col-sorter">
										<div class="tabulator-arrow"></div>
									</div>
								</div>
							</div>
							<div class="tabulator-col-resize-handle"></div>
							<div class="tabulator-col-resize-handle prev"></div>
						</div>
						<div class="tabulator-col tabulator-sortable text-left"
							role="columnheader" aria-sort="none" tabulator-field="title"
							title="" style="min-width: 380px; width: 390px; height: 44px;">
							<div class="tabulator-col-content">
								<div class="tabulator-col-title-holder">
									<div class="tabulator-col-title" style="text-align: center;">제목</div>
									<div class="tabulator-col-sorter">
										<div class="tabulator-arrow"></div>
									</div>
								</div>
							</div>
							<div class="tabulator-col-resize-handle"></div>
							<div class="tabulator-col-resize-handle prev"></div>
						</div>
						<div class="tabulator-col tabulator-sortable" role="columnheader"
							aria-sort="none" tabulator-field="writer" title=""
							style="min-width: 50px; width: 135px; height: 44px;">
							<div class="tabulator-col-content">
								<div class="tabulator-col-title-holder">
									<div class="tabulator-col-title">작성자</div>
									<div class="tabulator-col-sorter">
										<div class="tabulator-arrow"></div>
									</div>
								</div>
							</div>
							<div class="tabulator-col-resize-handle"></div>
							<div class="tabulator-col-resize-handle prev"></div>
						</div>
						<div class="tabulator-col tabulator-sortable" role="columnheader"
							aria-sort="none" tabulator-field="date" title=""
							style="min-width: 50px; width: 140px; height: 44px;">
							<div class="tabulator-col-content">
								<div class="tabulator-col-title-holder">
									<div class="tabulator-col-title">작성일</div>
									<div class="tabulator-col-sorter">
										<div class="tabulator-arrow"></div>
									</div>
								</div>
							</div>
							<div class="tabulator-col-resize-handle"></div>
							<div class="tabulator-col-resize-handle prev"></div>
						</div>
						<div class="tabulator-col tabulator-sortable" role="columnheader"
							aria-sort="none" tabulator-field="hits" title=""
							style="min-width: 50px; width: 140px; height: 44px;">
							<div class="tabulator-col-content">
								<div class="tabulator-col-title-holder">
									<div class="tabulator-col-title">조회수</div>
									<div class="tabulator-col-sorter">
										<div class="tabulator-arrow"></div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="tabulator-frozen-rows-holder"></div>
				</div>
				<div class="tabulator-tableHolder" tabindex="0" style="height: 479px;">
<%-- 					<p>${data}</p> --%>
					<div class="tabulator-table" style="padding-top: 0px; padding-bottom: 0px;">
						<c:forEach var="freeBbsVO" items="${data.content}" varStatus="stat">
							<div class="tabulator-row tabulator-selectable tabulator-row-odd" role="row" style="padding-left: 0px;">
								<div class="tabulator-cell" role="gridcell" tabulator-field="seq" title="" style="width: 110px; text-align: center; display: inline-flex; align-items: center; justify-content: center; height: 44px;">
				                    <c:set var="trimmedPstId" value="${fn:substringAfter(freeBbsVO.pstId, 'FRE')}" />
				                    ${trimmedPstId}
				                    <div class="tabulator-col-resize-handle"></div>
				                    <div class="tabulator-col-resize-handle prev"></div>
				                </div>
								<div class="tabulator-cell text-left" role="gridcell" tabulator-field="title" title="" style="width: 390px; text-align: left; display: inline-flex; align-items: center; justify-content: flex-center; height: 44px;">
									<a href="/mem/cmnt/freebbs/freedetail?pstId=${freeBbsVO.pstId}">${freeBbsVO.pstSj}</a>
									<div class="tabulator-col-resize-handle"></div>
									<div class="tabulator-col-resize-handle prev"></div>
								</div>
								<div class="tabulator-cell" role="gridcell" tabulator-field="writer" title="" style="width: 135px; text-align: center; display: inline-flex; align-items: center; justify-content: center; height: 44px;">
									${freeBbsVO.frstWrterId}
									<div class="tabulator-col-resize-handle"></div>
									<div class="tabulator-col-resize-handle prev"></div>
								</div>
								<div class="tabulator-cell" role="gridcell" tabulator-field="date" title="" style="width: 140px; text-align: center; display: inline-flex; align-items: center; justify-content: center; height: 44px;">
									${freeBbsVO.frstWrterTm}
									<div class="tabulator-col-resize-handle"></div>
									<div class="tabulator-col-resize-handle prev"></div>
								</div>
								<div class="tabulator-cell" role="gridcell" tabulator-field="hits" title="" style="width: 140px; text-align: center; display: inline-flex; align-items: center; justify-content: center; height: 44px;">
									${freeBbsVO.rdcnt}
									<div class="tabulator-col-resize-handle"></div>
									<div class="tabulator-col-resize-handle prev"></div>
								</div>
							</div>
						</c:forEach>
					</div>
				</div>

				<!-- BEGIN: Pagination 페이징처리 -->
				<div class="intro-y flex flex-wrap sm:flex-row sm:flex-nowrap items-center mt-3">
					<nav class="w-full sm:w-auto sm:mr-auto">
						<ul class="pagination">
							<li class="page-item">
								<a class="page-link" href="/mem/cmnt/freebbs?currentPage=1">
									<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
										viewBox="0 0 24 24" fill="none" stroke="currentColor"
										stroke-width="2" stroke-linecap="round"
										stroke-linejoin="round" icon-name="chevrons-left"
										class="lucide lucide-chevrons-left w-4 h-4"
										data-lucide="chevrons-left">
										<polyline points="11 17 6 12 11 7"></polyline>
										<polyline points="18 17 13 12 18 7"></polyline>
									</svg>
								</a>
							</li>
							<li class="page-item">
								<a class="page-link"
								<c:if test="${data.startPage>=3}">
									href="/mem/cmnt/freebbs?cond=${param.cond}&keyword=${param.keyword }&size=${param.size}&currentPage=${data.startPage-3}"
								</c:if>
								<c:if test="${data.startPage<4}">
									href="#"
								</c:if>
								>
									<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
										viewBox="0 0 24 24" fill="none" stroke="currentColor"
										stroke-width="2" stroke-linecap="round"
										stroke-linejoin="round" icon-name="chevron-left"
										class="lucide lucide-chevron-left w-4 h-4"
										data-lucide="chevron-left">
										<polyline points="15 18 9 12 15 6"></polyline>
									</svg>
								</a>
							</li>
							<c:forEach var="pNo" begin="${data.startPage}" end="${data.endPage}" step="1">
								<li class="page-item">
									<a class="page-link" href="/mem/cmnt/freebbs?cond=${param.cond}&keyword=${param.keyword }&size=${param.size}&currentPage=${pNo}">${pNo}</a>
								</li>
							</c:forEach>
							<li class="page-item">
								<a class="page-link"
									<c:if test='${data.endPage == data.totalPages}'>
										href="#"
									</c:if>
									<c:if test='${data.endPage < data.totalPages}'>
										href="/mem/cmnt/freebbs?cond=${param.cond}&keyword=${param.keyword }&size=${param.size}&currentPage=${data.startPage+3}"
									</c:if>
									>
									<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
										viewBox="0 0 24 24" fill="none" stroke="currentColor"
										stroke-width="2" stroke-linecap="round"
										stroke-linejoin="round" icon-name="chevron-right"
										class="lucide lucide-chevron-right w-4 h-4"
										data-lucide="chevron-right">
										<polyline points="9 18 15 12 9 6"></polyline>
									</svg>
								</a>
							</li>
							<li class="page-item">
								<a class="page-link" href="/mem/cmnt/freebbs?cond=${param.cond}&keyword=${param.keyword }&size=${param.size}&currentPage=${data.totalPages}">
									<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
										viewBox="0 0 24 24" fill="none" stroke="currentColor"
										stroke-width="2" stroke-linecap="round"
										stroke-linejoin="round" icon-name="chevrons-right"
										class="lucide lucide-chevrons-right w-4 h-4"
										data-lucide="chevrons-right">
										<polyline points="13 17 18 12 13 7"></polyline>
										<polyline points="6 17 11 12 6 7"></polyline>
									</svg>
								</a>
							</li>
						</ul>
					</nav>
					<select class="w-20 form-select box mt-3 sm:mt-0" id="sel">
						<option value="10"
							<c:if test="${param.size=='10'}">selected</c:if>>10</option>
						<option value="25"
							<c:if test="${param.size=='25'}">selected</c:if>>25</option>
						<option value="35"
							<c:if test="${param.size=='35'}">selected</c:if>>35</option>
						<option value="50"
							<c:if test="${param.size=='50'}">selected</c:if>>50</option>
					</select>
				</div>
				<!-- END: Pagination -->


			</div>
		</div>

		<div class="mt-3" style="display: grid; justify-items: end;">
			<a href="/mem/cmnt/freebbs/register" class="btn btn-primary btn-icon-split">
				<button class="btn btn-primary btn-sm">게시글등록</button>
			</a>
		</div>
	</div>
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