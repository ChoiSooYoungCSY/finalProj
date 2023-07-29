<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<style>
th {
 	text-align: center;
}
td {
 	text-align: center;
}
#lvCntModal .modal-dialog {
	width: 80%;
	max-width: 700px;
}
</style>
<div class="col-span-12 lg:col-span-3 2xl:col-span-2">
    <!-- BEGIN: Menu -->
    <div class="intro-y box bg-primary p-4 mt-0 text-lg">
    	<nav class="side-nav">
			<ul>
				<li><a href="javascript:;" class="side-menu">
						<div class="side-menu__icon">
							<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
								viewBox="0 0 24 24" fill="none" stroke="currentColor"
								stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
								icon-name="home" data-lucide="home" class="lucide lucide-home">
								<path d="M3 9l9-7 9 7v11a2 2 0 01-2 2H5a2 2 0 01-2-2z"></path></svg>
						</div>
						<div class="side-menu__title">
							계정 관리
							<div class="side-menu__sub-icon">
								<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
									viewBox="0 0 24 24" fill="none" stroke="currentColor"
									stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
									icon-name="chevron-down" data-lucide="chevron-down"
									class="lucide lucide-chevron-down"></svg>
							</div>
						</div>
				</a>
					<ul class="side-menu-ul" style="display: none;">
						<li><a href="/emp/pa/mngempacnt"
							class="side-menu side-menu--active">
								<div class="side-menu__icon">
									<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
										viewBox="0 0 24 24" fill="none" stroke="currentColor"
										stroke-width="2" stroke-linecap="round"
										stroke-linejoin="round" icon-name="activity"
										data-lucide="activity" class="lucide lucide-activity">
										<polyline points="22 12 18 12 15 21 9 3 6 12 2 12"></polyline></svg>
								</div>
								<div class="side-menu__title">직원계정 관리</div>
						</a></li>
						<li><a href="/emp/pa/mngmemacnt" class="side-menu">
								<div class="side-menu__icon">
									<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
										viewBox="0 0 24 24" fill="none" stroke="currentColor"
										stroke-width="2" stroke-linecap="round"
										stroke-linejoin="round" icon-name="activity"
										data-lucide="activity" class="lucide lucide-activity">
										<polyline points="22 12 18 12 15 21 9 3 6 12 2 12"></polyline></svg>
								</div>
								<div class="side-menu__title">입주민계정 관리</div>
						</a></li>
					</ul></li>
				<li><a href="javascript:;" class="side-menu">
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
						<div class="side-menu__title">
							인사 관리
							<div class="side-menu__sub-icon">
								<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
									viewBox="0 0 24 24" fill="none" stroke="currentColor"
									stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
									icon-name="chevron-down" data-lucide="chevron-down"
									class="lucide lucide-chevron-down">
									<polyline points="6 9 12 15 18 9"></polyline></svg>
							</div>
						</div>
				</a>
					<ul class="side-menu-ul" style="display: none;">
						<li><a href="/emp/pa/mngdclz" class="side-menu">
								<div class="side-menu__icon">
									<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
										viewBox="0 0 24 24" fill="none" stroke="currentColor"
										stroke-width="2" stroke-linecap="round"
										stroke-linejoin="round" icon-name="activity"
										data-lucide="activity" class="lucide lucide-activity">
										<polyline points="22 12 18 12 15 21 9 3 6 12 2 12"></polyline></svg>
								</div>
								<div class="side-menu__title">근태 관리</div>
						</a></li>
						<li><a href="/emp/pa/mngpaidlv" class="side-menu">
								<div class="side-menu__icon">
									<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
										viewBox="0 0 24 24" fill="none" stroke="currentColor"
										stroke-width="2" stroke-linecap="round"
										stroke-linejoin="round" icon-name="activity"
										data-lucide="activity" class="lucide lucide-activity">
										<polyline points="22 12 18 12 15 21 9 3 6 12 2 12"></polyline></svg>
								</div>
								<div class="side-menu__title">휴가 관리</div>
						</a></li>
						<li><a href="/emp/pa/mngsalary" class="side-menu">
								<div class="side-menu__icon">
									<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
										viewBox="0 0 24 24" fill="none" stroke="currentColor"
										stroke-width="2" stroke-linecap="round"
										stroke-linejoin="round" icon-name="activity"
										data-lucide="activity" class="lucide lucide-activity">
										<polyline points="22 12 18 12 15 21 9 3 6 12 2 12"></polyline></svg>
								</div>
								<div class="side-menu__title">급여 관리</div>
						</a></li>
					</ul></li>
				<li><a href="javascript:;" class="side-menu">
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
						<div class="side-menu__title">
							직원게시판 관리
							<div class="side-menu__sub-icon ">
								<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
									viewBox="0 0 24 24" fill="none" stroke="currentColor"
									stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
									icon-name="chevron-down" data-lucide="chevron-down"
									class="lucide lucide-chevron-down">
									<polyline points="6 9 12 15 18 9"></polyline></svg>
							</div>
						</div>
				</a>
					<ul class="side-menu-ul">
						<li><a href="/emp/pa/mngempntcbbs" class="side-menu">
								<div class="side-menu__icon">
									<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
										viewBox="0 0 24 24" fill="none" stroke="currentColor"
										stroke-width="2" stroke-linecap="round"
										stroke-linejoin="round" icon-name="activity"
										data-lucide="activity" class="lucide lucide-activity">
										<polyline points="22 12 18 12 15 21 9 3 6 12 2 12"></polyline></svg>
								</div>
								<div class="side-menu__title">공지사항</div>
						</a></li>
						<li><a href="/emp/pa/mngempfreebbs" class="side-menu">
								<div class="side-menu__icon">
									<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
										viewBox="0 0 24 24" fill="none" stroke="currentColor"
										stroke-width="2" stroke-linecap="round"
										stroke-linejoin="round" icon-name="activity"
										data-lucide="activity" class="lucide lucide-activity">
										<polyline points="22 12 18 12 15 21 9 3 6 12 2 12"></polyline></svg>
								</div>
								<div class="side-menu__title">자유게시판</div>
						</a></li>
					</ul></li>
				<li><a href="javascript:;" class="side-menu">
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
						<div class="side-menu__title">
							커뮤니티 관리
							<div class="side-menu__sub-icon ">
								<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
									viewBox="0 0 24 24" fill="none" stroke="currentColor"
									stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
									icon-name="chevron-down" data-lucide="chevron-down"
									class="lucide lucide-chevron-down">
									<polyline points="6 9 12 15 18 9"></polyline></svg>
							</div>
						</div>
				</a>
					<ul class="side-menu-ul">
						<li><a href="/emp/pa/mngmemntcbbs" class="side-menu">
								<div class="side-menu__icon">
									<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
										viewBox="0 0 24 24" fill="none" stroke="currentColor"
										stroke-width="2" stroke-linecap="round"
										stroke-linejoin="round" icon-name="activity"
										data-lucide="activity" class="lucide lucide-activity">
										<polyline points="22 12 18 12 15 21 9 3 6 12 2 12"></polyline></svg>
								</div>
								<div class="side-menu__title">공지사항</div>
						</a></li>
						<li><a href="/emp/pa/mngneighborbbs" class="side-menu">
								<div class="side-menu__icon">
									<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
										viewBox="0 0 24 24" fill="none" stroke="currentColor"
										stroke-width="2" stroke-linecap="round"
										stroke-linejoin="round" icon-name="activity"
										data-lucide="activity" class="lucide lucide-activity">
										<polyline points="22 12 18 12 15 21 9 3 6 12 2 12"></polyline></svg>
								</div>
								<div class="side-menu__title">우리동네 게시판</div>
						</a></li>
						<li><a href="/emp/pa/mngscndhandbbs" class="side-menu">
								<div class="side-menu__icon">
									<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
										viewBox="0 0 24 24" fill="none" stroke="currentColor"
										stroke-width="2" stroke-linecap="round"
										stroke-linejoin="round" icon-name="activity"
										data-lucide="activity" class="lucide lucide-activity">
										<polyline points="22 12 18 12 15 21 9 3 6 12 2 12"></polyline></svg>
								</div>
								<div class="side-menu__title">중고장터 게시판</div>
						</a></li>
						<li><a href="/emp/pa/mngclubbbs" class="side-menu">
								<div class="side-menu__icon">
									<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
										viewBox="0 0 24 24" fill="none" stroke="currentColor"
										stroke-width="2" stroke-linecap="round"
										stroke-linejoin="round" icon-name="activity"
										data-lucide="activity" class="lucide lucide-activity">
										<polyline points="22 12 18 12 15 21 9 3 6 12 2 12"></polyline></svg>
								</div>
								<div class="side-menu__title">소모임 게시판</div>
						</a></li>
						<li><a href="/emp/pa/mngmemfreebbs" class="side-menu">
								<div class="side-menu__icon">
									<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
										viewBox="0 0 24 24" fill="none" stroke="currentColor"
										stroke-width="2" stroke-linecap="round"
										stroke-linejoin="round" icon-name="activity"
										data-lucide="activity" class="lucide lucide-activity">
										<polyline points="22 12 18 12 15 21 9 3 6 12 2 12"></polyline></svg>
								</div>
								<div class="side-menu__title">자유게시판</div>
						</a></li>
						<li><a href="/emp/pa/mngcvplbbs" class="side-menu">
								<div class="side-menu__icon">
									<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
										viewBox="0 0 24 24" fill="none" stroke="currentColor"
										stroke-width="2" stroke-linecap="round"
										stroke-linejoin="round" icon-name="activity"
										data-lucide="activity" class="lucide lucide-activity">
										<polyline points="22 12 18 12 15 21 9 3 6 12 2 12"></polyline></svg>
								</div>
								<div class="side-menu__title">민원게시판</div>
						</a></li>
					</ul></li>
				<li><a href="javascript:;" class="side-menu">
						<div class="side-menu__icon">
							<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
								viewBox="0 0 24 24" fill="none" stroke="currentColor"
								stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
								icon-name="box" data-lucide="box" class="lucide lucide-box">
								<path d="M21 16V8a2 2 0 00-1-1.73l-7-4a2 2 0 00-2 0l-7 4A2 2 0 003 8v8a2 2 0 001 1.73l7 4a2 2 0 002 0l7-4A2 2 0 0021 16z"></path>
								<polyline points="3.27 6.96 12 12.01 20.73 6.96"></polyline>
								<line x1="12" y1="22.08" x2="12" y2="12"></line></svg>
						</div>
						<div class="side-menu__title">
							전자투표 관리
							<div class="side-menu__sub-icon">
								<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
									viewBox="0 0 24 24" fill="none" stroke="currentColor"
									stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
									icon-name="chevron-down" data-lucide="chevron-down"
									class="lucide lucide-chevron-down">
									<polyline points="6 9 12 15 18 9"></polyline></svg>
							</div>
						</div>
				</a>
					<ul class="side-menu-ul">
						<li><a href="/emp/pa/mnginprogrsvote" class="side-menu">
								<div class="side-menu__icon">
									<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
										viewBox="0 0 24 24" fill="none" stroke="currentColor"
										stroke-width="2" stroke-linecap="round"
										stroke-linejoin="round" icon-name="activity"
										data-lucide="activity" class="lucide lucide-activity">
										<polyline points="22 12 18 12 15 21 9 3 6 12 2 12"></polyline></svg>
								</div>
								<div class="side-menu__title">진행 중 투표</div>
						</a></li>
						<li><a href="/emp/pa/mngvotelist" class="side-menu">
								<div class="side-menu__icon">
									<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
										viewBox="0 0 24 24" fill="none" stroke="currentColor"
										stroke-width="2" stroke-linecap="round"
										stroke-linejoin="round" icon-name="activity"
										data-lucide="activity" class="lucide lucide-activity">
										<polyline points="22 12 18 12 15 21 9 3 6 12 2 12"></polyline></svg>
								</div>
								<div class="side-menu__title">투표 안건 목록</div>
						</a></li>
					</ul></li>
			</ul>
		</nav>
    </div>
    <!-- END: Menu -->
</div>
<!-- BEGIN: Body -->
<sec:authorize access="hasAnyRole('ROLE_PA', 'ROLE_PA_PM')">
<sec:authentication property="principal.userVO" var="userVO"/>
<div class="bdy col-span-12 lg:col-span-9 2xl:col-span-10">
	<div class="intro-y flex flex-col sm:flex-row items-center">
		<h5 class="text-lg font-medium leading-none mt-3 mr-auto">인사/행정 > 인사 관리 > 휴가 관리</h5>
	</div>
	<div class="intro-y box p-5 mt-5">
		<div class="flex flex-col sm:flex-row sm:items-end xl:items-start">
		    <button type="button" id="previous_button" class="button-previous-month mt-4" style="margin-left: 350px;"/>
		        <svg width="11" height="16" xmlns="http://www.w3.org/2000/svg">
		            <path d="M7.919 0l2.748 2.667L5.333 8l5.334 5.333L7.919 16 0 8z" fill-rule="nonzero"></path>
		        </svg>
		    </button>
		    <div class="relative w-40 mx-auto">
		        <input id="date" type="date" class="form-control text-lg border-none" style="margin-top: 3px;">
		    </div>
		    <button type="button" id="next_button" class="button-next-month mt-4" style="margin-right: 250px;">
		        <svg width="11" height="16" xmlns="http://www.w3.org/2000/svg">
		            <path d="M2.748 16L0 13.333 5.333 8 0 2.667 2.748 0l7.919 8z" fill-rule="nonzero"></path>
		        </svg>
		    </button>
		    <div class="w-full sm:w-auto flex mt-4 sm:mt-0">
				<button class="btn btn-primary shadow-md mr-2" onclick="insertLvCntModal()">휴가 등록</button>
			</div>
		</div>
	    <!-- BEGIN: HTML Table Data -->
		<div class="intro-y box p-5 mt-5">
			<div class="flex flex-col sm:flex-row sm:items-end xl:items-start">
				<form id="tabulator-html-filter-form" class="xl:flex sm:mr-auto">
					<div class="sm:flex items-center sm:mr-2">
						<select id="tabulator-html-filter-field"
							class="form-select w-full sm:w-24 2xl:w-full mt-2 sm:mt-0 sm:w-auto"
							style="height: 38.13px; font-size: 16px;">
							<option value="" disabled selected hidden>검색</option>
							<option value="empNm">이름</option>
							<option value="deptNm">부서</option>
							<option value="jbgdNm">직급</option>
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
						<input id="tabulator-html-filter-value" type="text"
							class="form-control sm:w-40 2xl:w-full mt-2 sm:mt-0"
							placeholder="검색어를 입력해 주세요">
					</div>
					<div class="mt-2 xl:mt-0">
						<button id="tabulator-html-filter-go" type="button"
							class="btn btn-primary w-full sm:w-16 font-medium"
							style="background-color: rgb(30, 58, 138);">검색</button>
						<button id="tabulator-html-filter-reset" type="button"
							class="btn btn-secondary w-full sm:w-16 mt-2 sm:mt-0 sm:ml-1">초기화</button>
					</div>
				</form>
				<div class="flex mt-5 sm:mt-0">
					<button id="tabulator-print"
						class="btn btn-outline-secondary w-1/2 sm:w-auto mr-2">
						<i data-lucide="printer" class="w-4 h-4 mr-2"></i> 인쇄
					</button>
					<div class="dropdown w-1/2 sm:w-auto">
						<button
							class="dropdown-toggle btn btn-outline-secondary w-full sm:w-auto"
							aria-expanded="false" data-tw-toggle="dropdown">
							<i data-lucide="file-text" class="w-4 h-4 mr-2"></i> 내보내기 <i
								data-lucide="chevron-down" class="w-4 h-4 ml-auto sm:ml-2"></i>
						</button>
						<div class="dropdown-menu w-40">
							<ul class="dropdown-content">
								<li><a id="tabulator-export-csv" href="javascript:;"
									class="dropdown-item"> <i data-lucide="file-text"
										class="w-3 h-4 mr-2"></i> CSV
								</a></li>
								<li><a id="tabulator-export-xlsx" href="javascript:;"
									class="dropdown-item"> <i data-lucide="file-text"
										class="w-3 h-4 mr-2"></i> XLSX
								</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
			<div class="overflow-x-auto scrollbar-hidden">
				<div id="test" class="mt-3 table-report table-report--tabulator"></div>
			</div>
		</div>
		<!-- END: HTML Table Data -->
	</div>
</div>
</sec:authorize>
<!-- END: Body -->
<!-- BEGIN: Modal Content -->
<!-- 휴가등록 모달 -->
<div id="insertLvCntModal" class="modal" tabindex="-1" aria-hidden="true">
    <div class="modal-dialog modal-xl">
        <div class="modal-content">
            <!-- BEGIN: Modal Header -->
            <div class="modal-header">
                <h2 class="font-medium text-base mr-auto">휴가 등록</h2>
                <div class="dropdown sm:hidden"> <a class="dropdown-toggle w-5 h-5 block" href="javascript:;" aria-expanded="false" data-tw-toggle="dropdown"> <i data-lucide="more-horizontal" class="w-5 h-5 text-slate-500"></i> </a></div>
            </div>
            <!-- BEGIN: Modal Body -->
            <div class="modal-body grid grid-cols-12 gap-4 gap-y-3">
	        	<table id="insertLvCntModalTable" class="table table-sm ml-5">
					<thead>
						<tr>
			            	<th class="whitespace-nowrap">사원번호</th>
			                <th class="whitespace-nowrap">사원이름</th>
			                <th class="whitespace-nowrap">휴가구분</th>
			            	<th class="whitespace-nowrap">지급번호</th>
			                <th class="whitespace-nowrap">지급일수</th>
			                <th class="whitespace-nowrap">휴가지급일</th>
			                <th class="whitespace-nowrap">소멸예정일</th>
			            	<th class="whitespace-nowrap">지급사유</th>
						</tr>
					</thead>
					<tbody id="insertLvCntModalTbody">
				    </tbody>
			 	</table>
             </div>
            <!-- BEGIN: Modal Footer -->
            <div class="modal-footer" id="insertLvCntModalFooter"><button id="withdrawalBtn" type="button" data-tw-dismiss="modal"><span class="btn btn-primary w-20 mr-1">확인</span></button></div>
            <!-- END: Modal Footer -->
        </div>
    </div>
</div>
<!-- 지급휴가 모달 -->
<div id="giveLvCntModal" class="modal" tabindex="-1" aria-hidden="true">
    <div class="modal-dialog modal-xl">
        <div class="modal-content">
            <!-- BEGIN: Modal Header -->
            <div class="modal-header">
                <h2 class="font-medium text-base mr-auto">지급휴가 조회</h2>
                <div class="dropdown sm:hidden"> <a class="dropdown-toggle w-5 h-5 block" href="javascript:;" aria-expanded="false" data-tw-toggle="dropdown"> <i data-lucide="more-horizontal" class="w-5 h-5 text-slate-500"></i> </a></div>
            </div>
            <!-- BEGIN: Modal Body -->
            <div class="modal-body grid grid-cols-12 gap-4 gap-y-3">
	        	<table id="giveLvCntTable" class="table table-sm ml-5">
					<thead>
						<tr>
			            	<th class="whitespace-nowrap" rowspan="2">&nbsp;사원번호&nbsp;</th>
			                <th class="whitespace-nowrap">휴가구분</th>
			            	<th class="whitespace-nowrap">지급번호</th>
			                <th class="whitespace-nowrap">지급일수</th>
			                <th class="whitespace-nowrap">휴가지급일</th>
			                <th class="whitespace-nowrap">소멸예정일</th>
			                <th class="whitespace-nowrap">&nbsp;수정&nbsp;</th>
			            </tr>
			            <tr>
			            	<th class="whitespace-nowrap">지급사유</th>
			                <th class="whitespace-nowrap">최초 작성자</th>
			                <th class="whitespace-nowrap">최초 작성일</th>
			                <th class="whitespace-nowrap">최종 수정자</th>
			                <th class="whitespace-nowrap">최종 수정일</th>
			                <th class="whitespace-nowrap">&nbsp;삭제&nbsp;</th>
						</tr>
					</thead>
					<tbody id="giveLvCntModalTbody">
				    </tbody>
			 	</table>
             </div>
            <!-- BEGIN: Modal Footer -->
            <div class="modal-footer" id="giveLvCntModalFooter"><button id="withdrawalBtn" type="button" data-tw-dismiss="modal"><span class="btn btn-primary w-20 mr-1">확인</span></button></div>
            <!-- END: Modal Footer -->
        </div>
    </div>
</div>
<!-- 사용휴가 모달 -->
<div id="lvCntModal" class="modal" tabindex="-1" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <!-- BEGIN: Modal Header -->
            <div class="modal-header">
                <h2 class="font-medium text-base mr-auto">사용휴가 조회</h2>
                <div class="dropdown sm:hidden"> <a class="dropdown-toggle w-5 h-5 block" href="javascript:;" aria-expanded="false" data-tw-toggle="dropdown"> <i data-lucide="more-horizontal" class="w-5 h-5 text-slate-500"></i> </a></div>
            </div>
            <!-- BEGIN: Modal Body -->
            <div class="modal-body grid grid-cols-12 gap-4 gap-y-3">
				<table id="lvCntTable" class="table table-sm">
					<thead>
						<tr>
			            	<th class="whitespace-nowrap" rowspan="2">&nbsp;사원번호&nbsp;</th>
			                <th class="whitespace-nowrap">사용번호</th>
			                <th class="whitespace-nowrap">휴가일수</th>
			                <th class="whitespace-nowrap">휴가시작일</th>
			                <th class="whitespace-nowrap">휴가종료일</th>
			                <th class="whitespace-nowrap">&nbsp;수정&nbsp;</th>
			            </tr>
			            <tr>
			                <th class="whitespace-nowrap">최초 작성자</th>
			                <th class="whitespace-nowrap">최초 작성일</th>
			                <th class="whitespace-nowrap">최종 수정자</th>
			                <th class="whitespace-nowrap">최종 수정일</th>
			                <th class="whitespace-nowrap">&nbsp;삭제&nbsp;</th>
						</tr>
					</thead>
					<tbody id="lvCntModalTbody">
				    </tbody>
			 	</table>
             </div>
            <!-- BEGIN: Modal Footer -->
            <div class="modal-footer" id=lvCntModalFooter"><button id="withdrawalBtn" type="button" data-tw-dismiss="modal"><span class="btn btn-primary w-20 mr-1">확인</span></button></div> <!-- END: Modal Footer -->
        </div>
    </div>
</div>
<!-- END: Modal Content -->
<script type="text/javascript" src="/resources/js/jquery-3.6.4.min.js"></script>
<script type="text/javascript">
$(function(){
	$("#main_menu").html("인사/행정");
	$("#sub_menu").html("인사 관리");

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

$(function(){
	let currentDate = new Date().toISOString().split('T')[0];
	let dbDate = currentDate.replace(/-/g, "");
	console.log("현재날짜 : " + currentDate);
	$("#date").val(currentDate);

	if ($("#test").length) {
		// Filter function
		let filterHTMLForm = function filterHTMLForm() {
			let field = $("#tabulator-html-filter-field").val();
			let type = $("#tabulator-html-filter-type").val();
			let value = $("#tabulator-html-filter-value").val();
			table.setFilter(field, type, value);
		}; // On submit filter form


		// Setup Tabulator
	    let table = new Tabulator("#test", {
			ajaxURL: "/emp/pa/mngpaidlv/date",
			ajaxParams: {
		       date : dbDate,
		    },
			ajaxFiltering: false,
			ajaxSorting: false,
			printAsHtml: true,
			printStyled: true,
			pagination: "local",
			paginationSize: 10,
			paginationSizeSelector: [10, 20, 30],
			layout: "fitData",
			//responsiveLayout: "collapse",
			placeholder: "데이터가 없습니다",
			columns: [{
				title: "부서",
				width: 139,
				minWidth: 50,
				field: "deptNm",
				headerHozAlign: "center",
				hozAlign: "center",
				vertAlign: "middle",
				headerSort: false,
				print: false,
				download: false
			},{
				title: "사원번호",
				width: 130,
				minWidth: 50,
				field: "empId",
				headerHozAlign: "center",
				hozAlign: "center",
				vertAlign: "middle",
				headerSort: false,
				print: false,
				download: false
			}, {
				title: "이름",
				width: 120,
				minWidth: 50,
				field: "empNm",
				headerHozAlign: "center",
				hozAlign: "center",
				vertAlign: "middle",
				headerSort: false,
				print: false,
				download: false,
				cssClass: "text-left"
			}, {
				title: "직급",
				width: 120,
				minWidth: 50,
				field: "jbgdNm",
				hozAlign: "center",
				vertAlign: "middle",
				headerSort: false,
				print: false,
				download: false
			}, {
				title: "지급휴가",
				width: 130,
				minWidth: 100,
				field: "giveLvCnt",
				headerHozAlign: "left",
				hozAlign: "center",
				vertAlign: "middle",
				print: false,
				download: false,
				cellClick: function(e, cell) {
	                console.log("지급휴가!");
	                const giveLvCntModal = tailwind.Modal.getInstance(document.querySelector("#giveLvCntModal"));
	                giveLvCntModal.show();
	    			let empId = cell._cell.row.data.empId;
	    			let date = cell._cell.row.data.date;
	    			let data = {
	    				"empId" : empId,
	    				"date" : $("#date").val().replace(/-/g, ""),
	    			};
	    			console.log(data);
	    			givePaidlvAjax(data);

	    		}
			}, {
				title: "사용휴가",
				width: 130,
				minWidth: 100,
				field: "lvCnt",
				headerHozAlign: "left",
				hozAlign: "center",
				vertAlign: "middle",
				print: false,
				download: false,
				cellClick: function(e, cell) {
	                console.log("사용휴가!");
	                const lvCntModal = tailwind.Modal.getInstance(document.querySelector("#lvCntModal"));
	                lvCntModal.show();
	    			let empId = cell._cell.row.data.empId;
	    			let date = cell._cell.row.data.date;
	    			let data = {
	    				"frstWrterId" : empId,
	    				"date" : $("#date").val().replace(/-/g, ""),
	    			};
	    			console.log(data);
	    			paidlyRcordAjax(data);

	    		}
			}, {
				title: "잔여휴가",
				width: 130,
				minWidth: 100,
			    field: "totalCnt",
			    hozAlign: "center",
			    vertAlign: "middle",
			    print: false,
			    download: false,
		     	mutator: function (value, data) {
		          return data.giveLvCnt - data.lvCnt;
		        },
			}, // For print format
			{
				title: "날짜",
				field: "dclzYmd",
				visible: false,
				print: true,
				download: true
			},{
				title: "부서",
				field: "deptNm",
				visible: false,
				print: true,
				download: true
			},{
				title: "사원번호",
				field: "empId",
				visible: false,
				print: true,
				download: true
			}, {
				title: "이름",
				field: "empNm",
				visible: false,
				print: true,
				download: true
			}, {
				title: "직급",
				field: "jbgdNm",
				visible: false,
				print: true,
				download: true
			}, {
				title: "지급휴가",
				field: "giveLvCnt",
				visible: false,
				print: true,
				download: true
			}, {
				title: "사용휴가",
				field: "lvCnt",
				visible: false,
				print: true,
				download: true
			}, {
				title: "잔여휴가",
				field: "totalCnt",
				visible: false,
				print: true,
				download: true
			}], initialSort: [
		        { column: "seq", dir: "desc" }
		    ]

	    });

		//달력에서 날짜 선택할때 데이터 가져오기
        $("#date").on("change", function() {
        	 let selectedDate = $("#date").val();
             let dbDate = selectedDate.replace(/-/g, "");
             dateAjax(dbDate);
        });

        // < 버튼 눌렀을때 데이터 가져오기
	    $("#previous_button").on("click", function() {
		    let selectedDate = new Date($("#date").val());
		    selectedDate.setDate(selectedDate.getDate() - 1);
		    selectedDate = selectedDate.toISOString().split('T')[0];
		    $("#date").val(selectedDate);
		    let dbDate = selectedDate.replace(/-/g, "");
		    console.log(dbDate);
		    dateAjax(dbDate);
		});

        // > 버튼 눌렀을때 데이터 가져오기
		$("#next_button").on("click", function() {
		    let selectedDate = new Date($("#date").val());
		    selectedDate.setDate(selectedDate.getDate() + 1);
		    selectedDate = selectedDate.toISOString().split('T')[0];
		    $("#date").val(selectedDate);
		    let dbDate = selectedDate.replace(/-/g, "");
		    console.log(dbDate);
		    dateAjax(dbDate);
		});

		//선택된 날짜의 DB 데이터 받아오기 Ajax
		function dateAjax(dbDate) {
			jQuery.ajax({
			    	url: '/emp/pa/mngpaidlv/date?date=' + dbDate,
			        success: function(newData) {
			        	console.log(newData);
			            table.setData(newData);
			        },
			        error: function(error) {
			            console.error("Error fetching data:", error);
			        }
			 });
		}

		//업데이트 시간 포맷
		function getCurrentFormattedDate() {
		    const currentDate = new Date();
		    console.log("currentDate" + currentDate);
		    const year = currentDate.getFullYear();
		    const month = String(currentDate.getMonth() + 1).padStart(2, '0');
		    const date = String(currentDate.getDate()).padStart(2, '0');

		    const formattedDate = year + month + date;
		    return formattedDate;
		}

		//특정 직원 지급 휴가 정보 보기 Ajax
		function givePaidlvAjax(data) {
			jQuery.ajax({
		        url: '/emp/pa/mngpaidlv/givePaidlv',
		        contentType : "application/json;charset=utf-8",
		        type: 'post',
		        data: JSON.stringify(data),
		        dataType : "json",
		        beforeSend:function(xhr){
					xhr.setRequestHeader("${_csrf.headerName}","${_csrf.token}");
				},
		        success: function(result) {
		        	console.log(result.length);
		        	console.log(result);
		        	let str = '';
		        	if (result.length == 0) {
		        		str += '<tr><td colspan="10" style="text-align: center;">휴가 지급 내역이 없습니다.</td></tr>'
		        		$('#giveLvCntModalTbody').html(str);
		        	} else {
		        		jQuery.each(result, function(i){
		                      console.log(i);
		                      str += '<tr class="lvSection'+ i +'">';
		                      str += '	<td id="empId" rowspan="2">' + result[i].empId  + '</td>';
		                      str += '	<td><select id="lvSeCd" name="lvSeCd" class="form-select" style="width: 130px;" aria-label="Default select example" required>';

		                      console.log("paidlvSectionList" , result[i].paidlvSectionList);
		                      jQuery.each(result[i].paidlvSectionList, function(index, paidlvSection){
		                    	  let selectedStr = "";
							       if (paidlvSection.lvSeCd === result[i].lvSeCd) {
							           selectedStr = "selected";
							       }
								  str += '<option value="' + paidlvSection.lvSeCd+ '" ' + selectedStr+ '>' + paidlvSection.lvSeNm + '</option>';
		                      });

		                      str += '  </select></td>';
		                      str += '	<td id="giveNo">' + result[i].giveNo  + '</td>';
		                      str += '	<td><input id="giveLvCnt" class="form-control" style="width: 100px;" type="text" value="' + result[i].giveLvCnt  + '" required></td>';
		                      str += '	<td><input id="giveYmd" class="form-control" style="width: 100px;" type="text" value="' + result[i].giveYmd  + '" required></td>';
		                      str += '	<td><input id="extshYmd" class="form-control" style="width: 100px;" type="text" value="' + result[i].extshYmd  + '" required></td>';
		                      str += '	<td><div style="display: flex; justify-content: center; align-items: center;"><button id="giveLvCntModalUpdateBtn" type="button"><svg class="text-success" xmlns="http://www.w3.org/2000/svg" width="19" height="19" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2.5" stroke-linecap="round" stroke-linejoin="round" icon-name="check-square" data-lucide="check-square"><polyline points="9 11 12 14 22 4"></polyline><path d="M21 12v7a2 2 0 01-2 2H5a2 2 0 01-2-2V5a2 2 0 012-2h11"></path></svg></button></div></td>';
		                      str += '</tr><tr class="lvSection'+ i +'">';
		                      str += '	<td><input id="giveRsn" class="form-control" style="width: 130px;" type="text" value="' + result[i].giveRsn  + '" required></td>';
		                      str += '	<td>' + result[i].frstWriterId  + '</td>';
		                      str += '	<td>' + result[i].fsrtWritingTm  + '</td>';
		                      str += '	<td id="lastUpdusrId">' + result[i].lastUpdusrId  + '</td>';
		                      str += '	<td id="lastUpdtTm">' + result[i].lastUpdtTm  + '</td>';
		                      str += '	<td><div style="display: flex; justify-content: center; align-items: center;"><button id="giveLvCntModalDeleteBtn" type="button"><svg class="text-danger" xmlns="http://www.w3.org/2000/svg" width="19" height="19" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="trash-2" data-lucide="trash-2"><polyline points="3 6 5 6 21 6"></polyline><path d="M19 6v14a2 2 0 01-2 2H7a2 2 0 01-2-2V6m3 0V4a2 2 0 012-2h4a2 2 0 012 2v2"></path><line x1="10" y1="11" x2="10" y2="17"></line><line x1="14" y1="11" x2="14" y2="17"></line></svg></button></div></td>';
		                      str += '</tr>';

		                 });
		                 $('#giveLvCntModalTbody').html(str);

		                 let selectedTrClass = jQuery(this).parents("tr").attr("class");
	                	 let lvSeCd = jQuery("." + selectedTrClass).find("#lvSeCd").val();
	                	 let giveNo = jQuery("." + selectedTrClass).find("#giveNo").text();
	                	 let giveLvCnt = jQuery("." + selectedTrClass).find("#giveLvCnt").val();
	                	 let giveYmd = jQuery("." + selectedTrClass).find("#giveYmd").val();
	                	 let extshYmd = jQuery("." + selectedTrClass).find("#extshYmd").val();
	                	 let giveRsn = jQuery("." + selectedTrClass).find("#giveRsn").val();
	                	 let lastUpdusrId = "${userVO.empVO.empId}";
	                	 let lastUpdtTm = getCurrentFormattedDate();

		                 //지급휴가 수정 버튼을 클릭했을 때
		                 $("#giveLvCntModalUpdateBtn").on("click", function() {
		                	 data = {
			    						"lvSeCd" : lvSeCd,
			    						"giveNo" : giveNo,
			    						"giveLvCnt" : giveLvCnt,
			    						"giveYmd" : giveYmd,
			    						"extshYmd" : extshYmd,
			    						"giveRsn" : giveRsn,
			    						"lastUpdusrId" : lastUpdusrId,
			    						"lastUpdtTm" : lastUpdtTm
			    			 };
		 	    		     console.log(data);
		 	    		     updateGivePaidlvAjax(data);

		                 });

		                 //지급휴가 삭제 버튼을 클릭했을떄
		                 $("#giveLvCntModalDeleteBtn").on("click", function() {
		                	 data = {
		                			 "giveNo" : giveNo,
			    			 };

		                	 deleteGivePaidlvAjax(data);


		                 });
		             }
		         }
			});

		}

		//특정 직원 지급 휴가 update Ajax
		function updateGivePaidlvAjax(data) {
			jQuery.ajax({
  		        url: '/emp/pa/mngpaidlv/updateGivePaidlv',
  		        contentType : "application/json;charset=utf-8",
  		        type: 'post',
  		        data: JSON.stringify(data),
  		        dataType : "json",
  		        beforeSend:function(xhr){
  					xhr.setRequestHeader("${_csrf.headerName}","${_csrf.token}");
  				},
  		        success: function(result) {
  		        	console.log(result);
  		        	if (result == 1){
  		        		alert("지급휴가 수정 완료!");
  		        	} else {
				    	alert("지급휴가 수정 실패");
				    }
  		        },
         	 });
		}

		//특정 직원 지급 휴가 delete Ajax
		function deleteGivePaidlvAjax(data) {
			jQuery.ajax({
  		        url: '/emp/pa/mngpaidlv/deleteGivePaidlv',
  		        contentType : "application/json;charset=utf-8",
  		        type: 'post',
  		        data: JSON.stringify(data),
  		        dataType : "json",
  		        beforeSend:function(xhr){
  					xhr.setRequestHeader("${_csrf.headerName}","${_csrf.token}");
  				},
  		        success: function(result) {
  		        	console.log(result);
  		        	if (result == 1){
  		        		alert("지급휴가 삭제 완료!");
  		        	} else {
				    	alert("지급휴가 삭제 실패");
				    }
  		        },
         	 });
		}

		//특정 직원 사용 휴가 정보 보기 Ajax
		function paidlyRcordAjax(data) {
			jQuery.ajax({
		        url: '/emp/pa/mngpaidlv/paidlyRcord',
		        contentType : "application/json;charset=utf-8",
		        type: 'post',
		        data: JSON.stringify(data),
		        dataType : "json",
		        beforeSend:function(xhr){
					xhr.setRequestHeader("${_csrf.headerName}","${_csrf.token}");
				},
		        success: function(result) {
		        	console.log(result.length);
		        	console.log(result);
		        	let str = '';
		        	if (result.length == 0) {
		        		str += '<tr><td colspan="6" rowspan="2" style="text-align: center;">휴가 사용 내역이 없습니다.</td></tr>'
		        		$('#lvCntModalTbody').html(str);
		        		$('#lvCntTable').addClass('ml-10');

		        	} else {
		        		jQuery.each(result, function(i){
		                      console.log(i);
		                      str += '<tr class="paidlyRcordSection'+ i +'">';
		                      str += '	<td id="empId" rowspan="2">' + result[i].frstWrterId  + '</td>';
		                      str += '	<td id="rcordNo">' + result[i].rcordNo  + '</td>'
		                      str += '	<td><input id="lvCnt" class="form-control" style="width: 100px;" type="text" value="' + result[i].lvCnt  + '" required></td>'
		                      str += '	<td><input id="rgngTm" class="form-control" style="width: 100px;" type="text" value="' + result[i].rgngTm  + '" required></td>'
		                      str += '	<td><input id="endTm" class="form-control" style="width: 100px;" type="text" value="' + result[i].endTm  + '" required></td>'
		                      str += '	<td><div style="display: flex; justify-content: center; align-items: center;"><button id="lvCntModalUpdateBtn" type="button"><svg class="text-success" xmlns="http://www.w3.org/2000/svg" width="19" height="19" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2.5" stroke-linecap="round" stroke-linejoin="round" icon-name="check-square" data-lucide="check-square"><polyline points="9 11 12 14 22 4"></polyline><path d="M21 12v7a2 2 0 01-2 2H5a2 2 0 01-2-2V5a2 2 0 012-2h11"></path></svg></button></div></td>';
		                      str += '</tr>';
		                      str += '</tr><tr class="paidlyRcordSection'+ i +'">';
		                      str += '	<td>' + result[i].frstWrterId  + '</td>';
		                      str += '	<td>' + result[i].fsrtWritingTm  + '</td>';
		                      str += '	<td id="lastUpdusrId">' + result[i].lastUpdusrId  + '</td>';
		                      str += '	<td id="lastUpdtTm">' + result[i].lastUpdtTm  + '</td>';
		                      str += '	<td><div style="display: flex; justify-content: center; align-items: center;"><button id="lvCntModalDeleteBtn" type="button"><svg class="text-danger" xmlns="http://www.w3.org/2000/svg" width="19" height="19" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="trash-2" data-lucide="trash-2"><polyline points="3 6 5 6 21 6"></polyline><path d="M19 6v14a2 2 0 01-2 2H7a2 2 0 01-2-2V6m3 0V4a2 2 0 012-2h4a2 2 0 012 2v2"></path><line x1="10" y1="11" x2="10" y2="17"></line><line x1="14" y1="11" x2="14" y2="17"></line></svg></button></div></td>';
		                      str += '</tr>';
		                 });
		                 $('#lvCntModalTbody').html(str);
		                 $('#lvCntTable').removeClass('ml-10');

		                 let selectedTrClass = jQuery(this).parents("tr").attr("class");
	                	 let rcordNo = jQuery("." + selectedTrClass).find("#rcordNo").text();
	                	 let lvCnt = jQuery("." + selectedTrClass).find("#lvCnt").val();
	                	 let rgngTm = jQuery("." + selectedTrClass).find("#rgngTm").val();
	                	 let endTm = jQuery("." + selectedTrClass).find("#endTm").val();
	                	 let lastUpdusrId = "${userVO.empVO.empId}";
	                	 let lastUpdtTm = getCurrentFormattedDate();


		                 //사용휴가 수정 버튼을 클릭했을 때
		                 $("#lvCntModalUpdateBtn").on("click", function() {
		                	 data = {
			    						"rcordNo" : rcordNo,
			    						"lvCnt" : lvCnt,
			    						"rgngTm" : rgngTm,
			    						"endTm" : endTm,
			    						"lastUpdusrId" : lastUpdusrId,
			    						"lastUpdtTm" : lastUpdtTm
			    			 };
		 	    		     console.log(data);
 		 	    		     updatePaidlyRcordAjax(data);
		                 });

		                 //사용휴가 삭제 버튼을 클릭했을 때
		                 $("#lvCntModalDeleteBtn").on("click", function() {
		                	 data = {
			    						"rcordNo" : rcordNo,

			    			 };
		                	 deletePaidlyRcordAjax(data);
		                 });


 		             }
		         }
			});
		}

		//특정 직원 사용 휴가 정보 update Ajax
		function updatePaidlyRcordAjax(data) {
			jQuery.ajax({
				 url: '/emp/pa/mngpaidlv/updatePaidlyRcord',
				 contentType : "application/json;charset=utf-8",
				 type: 'post',
				 data: JSON.stringify(data),
				 dataType : "json",
				 beforeSend:function(xhr){
					 xhr.setRequestHeader("${_csrf.headerName}","${_csrf.token}");
				 },
				 success: function(result) {
					 console.log(result);
					 if (result == 1){
						 alert("사용휴가 수정 완료!");
					 } else {
						 alert("사용휴가 수정 실패");
					 }
 		         },
        	});
		}

		//특정 직원 사용 휴가 delete Ajax
		function deletePaidlyRcordAjax(data) {
			jQuery.ajax({
  		        url: '/emp/pa/mngpaidlv/deletePaidlyRcordAjax',
  		        contentType : "application/json;charset=utf-8",
  		        type: 'post',
  		        data: JSON.stringify(data),
  		        dataType : "json",
  		        beforeSend:function(xhr){
  					xhr.setRequestHeader("${_csrf.headerName}","${_csrf.token}");
  				},
  		        success: function(result) {
  		        	console.log(result);
  		        	if (result == 1){
  		        		alert("사용휴가 삭제 완료!");
  		        	} else {
				    	alert("사용휴가 삭제 실패");
				    }
  		        },
         	 });
		}


		$("#tabulator-html-filter-form")[0].addEventListener("keypress", function (event) {
			let keycode = event.keyCode ? event.keyCode : event.which;

		    if (keycode == "13") {
				event.preventDefault();
				filterHTMLForm();
		    }
		});
		// On click go button
		$("#tabulator-html-filter-go").on("click", function (event) {
			filterHTMLForm();
		});
		// On reset filter form
		$("#tabulator-html-filter-reset").on("click", function (event) {
			$("#tabulator-html-filter-field").val("");
			$("#tabulator-html-filter-type").val("like");
			$("#tabulator-html-filter-value").val("");
			filterHTMLForm();
		});
		// Export - CSV
		$("#tabulator-export-csv").on("click", function (event) {
			table.download("csv", "data.csv");
		});
		// Export - Excel
		$("#tabulator-export-xlsx").on("click", function (event) {
			table.download("xlsx", "data.xlsx", {
				sheetName: "table"
			});
		});
		// Print
	    $("#tabulator-print").on("click", function (event) {
			table.print();
		});

		// Style
	    $("#test").css({
			"background-color": "white",
			"font-size": "15px",
			"border": "none"
	   	});
	    $(".tabulator-footer").css({
			"background-color": "white",
			"border": "none"
	   	});

		$(".tabulator-header").css({
			"background-color": "white",
			"border-bottom-color": "rgb(229, 231, 235)",
			"border-bottom-style": "solid",
			"border-bottom-width": "0px",
			"border-left-color": "rgb(229, 231, 235)",
			"border-left-style": "solid",
			"border-left-width": "0px",
			"border-right-color": "rgb(229, 231, 235)",
			"border-right-style": "solid",
			"border-right-width": "0px",
			"border-top-color": "rgb(229, 231, 235)",
			"border-top-style": "solid",
			"border-top-width": "0px",
			"box-sizing": "border-box",
			"display": "block",
			"font-family": "Pretendard",
			"font-feature-settings": "normal",
			"font-size": "16px",
			"font-variation-settings": "normal",
			"letter-spacing": "1px",
			"margin-left": "0px",
			"text-size-adjust": "100%",
			"text-wrap": "nowrap",
			"user-select": "none",
			"white-space-collapse": "collapse",
			"-webkit-font-smoothing": "antialiased"
		});
	}

});

//휴가 등록 모달 보기
function insertLvCntModal() {
	const insertLvCntModal = tailwind.Modal.getOrCreateInstance(document.querySelector("#insertLvCntModal"));
	insertLvCntModal.show();


}
</script>

