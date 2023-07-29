<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>

<div class="col-span-12 lg:col-span-3 2xl:col-span-2">
    <!-- BEGIN: Menu -->
    <div class="intro-y box bg-primary p-4 mt-0 text-lg">
    	<nav class="side-nav">
		    <ul>
		        <li>
		            <a href="/emp/onair/annnc" class="side-menu">
		                <div class="side-menu__icon"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="home" data-lucide="home" class="lucide lucide-home"><path d="M3 9l9-7 9 7v11a2 2 0 01-2 2H5a2 2 0 01-2-2z"></path></svg></div>
		                <div class="side-menu__title"> 안내방송 </div>
		            </a>
		        </li>
		        <li>
		            <a href="/emp/onair/resveannnc" class="side-menu side-menu--active">
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
<div class="bdy col-span-10 lg:col-span-9 2xl:col-span-10">
	<h5 class="text-lg font-medium leading-none">ON AIR > 안내방송</h5>
	<%-- <sec:authentication property="principal.userVO" var="userVO" /> --%>
			<div class="intro-y box p-5 mt-5">
			<form id="tabulator-html-filter-form" class="xl:flex sm:mr-auto">
				<div class="sm:flex items-center sm:mr-4">
					<select name="cond" id="cond" aria-controls="dataTable"
						class="form-select w-full sm:w-24 2xl:w-full mt-2 sm:mt-0 sm:w-auto"
						style="height: 38.13px; font-size: 16px;">
						<option value="" disabled="" selected="" hidden="">게시글검색</option>
						<option value="annncNo"
							<c:if test="${param.cond=='annncNo'}">selected</c:if>>게시글번호</option>
						<option value="frstWrterId"
							<c:if test="${param.cond=='frstWrterId'}">selected</c:if>>작성자</option>
						<option value="annncCn"
							<c:if test="${param.cond=='annncCn'}">selected</c:if>>내용</option>
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
		<div class="overflow-x-auto scrollbar-hidden">
			<div id="test" class="table-report table-report--tabulator tabulator"
				role="grid" tabulator-layout="fitData"
				style="background-color: white; font-size: 15px; border: none;">
				<div class="tabulator-header" style="padding-right: 0px; background-color: white; border-color: rgb(229, 231, 235); border-style: solid; border-width: 0px; box-sizing: border-box; display: block; font-family: Pretendard; font-feature-settings: normal; font-size: 16px; font-variation-settings: normal; letter-spacing: 1px; margin-left: 0px; text-size-adjust: 100%; white-space: nowrap; user-select: none; -webkit-font-smoothing: antialiased;">
					<div class="tabulator-headers" style="margin-left: 0px;">
						<div class="tabulator-col tabulator-sortable" role="columnheader"
							aria-sort="none" tabulator-field="seq" title=""
							style="min-width: 50px; width: 96px; height: 44px;">
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
							title="" style="min-width: 50px; width: 120px; height: 44px;">
							<div class="tabulator-col-content">
								<div class="tabulator-col-title-holder">
									<div class="tabulator-col-title" style="text-align: center;">작성자</div>
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
							style="min-width: 50px; width: 120px; height: 44px;">
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
							aria-sort="none" tabulator-field="date" title=""
							style="min-width: 200px; width: 0px; height: 44px;">
							<div class="tabulator-col-content">
								<div class="tabulator-col-title-holder">
									<div class="tabulator-col-title">방송 내용</div>
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
							style="min-width: 200px; width: 0px; height: 44px;">
							<div class="tabulator-col-content">
								<div class="tabulator-col-title-holder">
									<div class="tabulator-col-title">예약시간</div>
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
							style="min-width: 50px; width: 150px; height: 44px;">
							<div class="tabulator-col-content">
								<div class="tabulator-col-title-holder" style="headerSort: false;">
									<div class="tabulator-col-title">삭제</div>
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
<%-- 					<p>${resData}</p> --%>
					<div class="tabulator-table" style="padding-top: 0px; padding-bottom: 0px;">
						<c:forEach var="resData" items="${resData.content}" varStatus="stat">
							<div class="tabulator-row tabulator-selectable tabulator-row-odd" role="row" style="padding-left: 0px;">
								<div id="annncNo" class="tabulator-cell" role="gridcell" tabulator-field="seq" title="" style="width: 96px; text-align: center; display: inline-flex; align-items: center; justify-content: center; height: 44px;">
									${resData.annncNo}
									<div class="tabulator-col-resize-handle"></div>
									<div class="tabulator-col-resize-handle prev"></div>
								</div>
								<div class="tabulator-cell text-left" role="gridcell" tabulator-field="writer" title="" style="width: 120px; text-align: left; display: inline-flex; align-items: center; justify-content: flex-center; height: 44px;">
									${resData.frstWrterId}
									<div class="tabulator-col-resize-handle"></div>
									<div class="tabulator-col-resize-handle prev"></div>
								</div>
								<div class="tabulator-cell" role="gridcell" tabulator-field="date" title="" style="width: 120px; text-align: center; display: inline-flex; align-items: center; justify-content: center; height: 44px;">
									${resData.fsrtWritingTm}
									<div class="tabulator-col-resize-handle"></div>
									<div class="tabulator-col-resize-handle prev"></div>
								</div>
								<div class="tabulator-cell" role="gridcell" tabulator-field="content" title="" style="width: 200px; text-align: center; display: inline-flex; align-items: center; justify-content: center; height: 44px;">
									${resData.annncCn}
									<div class="tabulator-col-resize-handle"></div>
									<div class="tabulator-col-resize-handle prev"></div>
								</div>
								<div class="tabulator-cell" role="gridcell" tabulator-field="content" title="" style="width: 200px; text-align: center; display: inline-flex; align-items: center; justify-content: center; height: 44px;">
									${resData.annncResveTm}
									<div class="tabulator-col-resize-handle"></div>
									<div class="tabulator-col-resize-handle prev"></div>
								</div>
								<div class="tabulator-cell btnDel" role="gridcell" tabulator-field="date" title="" style="width: 170px; text-align: center; display: inline-flex; align-items: center; justify-content: center; height: 44px;">
<!--    							        <a class="btnDelete" href="javascript:;" title="삭제"> -->
							          <svg class="text-danger" xmlns="http://www.w3.org/2000/svg" width="19" height="19" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="trash-2" data-lucide="trash-2" class="lucide lucide-trash-2 block mx-auto">
							            <polyline points="3 6 5 6 21 6"></polyline>
							            <path d="M19 6v14a2 2 0 01-2 2H7a2 2 0 01-2-2V6m3 0V4a2 2 0 012-2h4a2 2 0 012 2v2"></path>
							            <line x1="10" y1="11" x2="10" y2="17"></line>
							            <line x1="14" y1="11" x2="14" y2="17"></line>
							          </svg>
<!-- 							        </a> -->
					      		</div>
							</div>
						</c:forEach>
					</div>
				</div>

<!-- 				BEGIN: Pagination 페이징처리 -->
				<div class="intro-y flex flex-wrap sm:flex-row sm:flex-nowrap items-center mt-3">
					<nav class="w-full sm:w-auto sm:mr-auto">
						<ul class="pagination">
							<li class="page-item">
								<a class="page-link" href="/emp/onair/resveannnc?currentPage=1">
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
								<c:if test="${resData.startPage>=5}">
									href="/emp/onair/resveannnc?cond=${param.cond}&keyword=${param.keyword }&size=${param.size}&currentPage=${resData.startPage-5}"
								</c:if>
								<c:if test="${resData.startPage<6}">
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
							<c:forEach var="pNo" begin="${resData.startPage}" end="${resData.endPage}" step="1">
								<li class="page-item">
									<a class="page-link" href="/emp/onair/resveannnc?cond=${param.cond}&keyword=${param.keyword }&size=${param.size}&currentPage=${pNo}">${pNo}</a>
								</li>
							</c:forEach>
							<li class="page-item">
								<a class="page-link"
									<c:if test='${resData.endPage == resData.totalPages}'>
										href="#"
									</c:if>
									<c:if test='${resData.endPage < resData.totalPages}'>
										href="/emp/onair/resveannnc?cond=${param.cond}&keyword=${param.keyword }&size=${param.size}&currentPage=${resData.startPage+5}"
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
								<a class="page-link" href="/emp/onair/resveannnc?cond=${param.cond}&keyword=${param.keyword }&size=${param.size}&currentPage=${data.totalPages}">
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
<!-- 				END: Pagination -->
			</div>
		</div>
		<div class="mt-10" style="display: grid; justify-items: end;">
			<a href="/emp/onair/resveannnc/resvRegister" class="btn btn-primary btn-icon-split">
				<button class="btn btn-primary btn-sm">게시글등록</button>
			</a>
		</div>
	</div>
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
<script type="text/javascript">
$(function() {
	  $("#main_menu").html("인사/행정");
	  $("#sub_menu").html("방송 예약 설정");

	  $(".side-nav > ul > li > .side-menu").on("click", function() {
	    // 좌측 메뉴 선택 시 효과 적용
	    $(".side-menu").removeClass("side-menu--active");
	    $(this).addClass("side-menu--active");

	    // 메뉴 경로 표시 (좌측 메뉴)
	    var sub = $(this).find(".side-menu__title").text();
	    console.log(sub.trim());
	    $("#sub_menu").html(sub.trim());
	  });

	  $(".btnDel").on("click", function() {
		let annncNo = $(this).closest(".tabulator-row").find("#annncNo").text().trim();
	    // json 오브젝트
	    let data = { "annncNo": annncNo };
	    console.log("data : " + JSON.stringify(data));

	    if (confirm("삭제하시겠습니까?")) {
	      jQuery.ajax({
	        url: "/emp/onair/resveannnc/deleteResvPost",
	        contentType: "application/json;charset=utf-8",
	        data: JSON.stringify(data),
	        type: "post",
	        dataType: "text",
	        beforeSend: function(xhr) {
	          xhr.setRequestHeader("${_csrf.headerName}", "${_csrf.token}");
	        },
	        success: function(result) {
	          console.log("result : " + result);
	          if (result == "success") {
	            location.href = "/emp/onair/resveannnc";
	          } else {
	            alert("삭제에 실패하였습니다.");
	          }
	        }
	      });
	    }
	  });
	});
</script>

