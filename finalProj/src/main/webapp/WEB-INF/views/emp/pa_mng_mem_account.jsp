<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>

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
<div class="bdy col-span-12 lg:col-span-9 2xl:col-span-10">
	<div class="intro-y flex flex-col sm:flex-row items-center mt-0">
		<h5 class="text-lg font-medium leading-none mt-0 mr-auto">인사/행정 > 계정 관리 > 입주민계정 관리</h5>
		<div class="w-full sm:w-auto flex mt-4 sm:mt-0">
			<button class="btn btn-primary shadow-md mr-2" onclick="location.href='/emp/pa/mngmemacnt/awaitingApproval'">승인 대기&nbsp;${awaitingApprovalNum}</button>
		</div>
		<div class="w-full sm:w-auto flex mt-4 sm:mt-0">
			<button class="btn btn-danger shadow-md mr-2" onclick="location.href='/emp/pa/mngmemacnt/blacklist'">블랙리스트&nbsp;${blacklistNum}</button>
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
						<option value="memId">아이디</option>
						<option value="memNm">이름</option>
						<option value="hshldInfoNo">동/호수</option>
						<option value="acntSttsNm">상태</option>
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
<!-- END: Body -->
<!-- BEGIN: Modal Content -->
<div id="sttemnt" class="modal" tabindex="-1" aria-hidden="true">
    <div class="modal-dialog" >
        <div class="modal-content">
            <!-- BEGIN: Modal Header -->
            <div class="modal-header">
                <h2 class="font-medium text-base mr-auto">신고 내역</h2>
                <div class="dropdown sm:hidden"> <a class="dropdown-toggle w-5 h-5 block" href="javascript:;" aria-expanded="false" data-tw-toggle="dropdown"> <i data-lucide="more-horizontal" class="w-5 h-5 text-slate-500"></i> </a></div>
            </div>
            <!-- BEGIN: Modal Body -->
            <div class="modal-body grid grid-cols-6 gap-4 gap-y-3" style="margin-left: 1px; margin-right: 1px;">
<!--                  <div class="col-span-6 sm:col-span-6"> <label id="modalResult" for="modal-form-1" class="form-label ml-1" style="white-space: nowrap;">여기에떠야함</label></div> -->
				<div class="col-span-6 sm:col-span-6">
				     <table id="mytable" class="table table-sm">
				         <thead>
				         	<tr>
				         		<th class="whitespace-nowrap">게시물ID</th>
				                <th class="whitespace-nowrap">신고내용</th>
				                <th class="whitespace-nowrap">신고자</th>
				            </tr>
				         </thead>
				         <tbody id="mytbody">
				         </tbody>
				     </table>
				</div>
            </div>
            <!-- BEGIN: Modal Footer -->
            <div class="modal-footer" id="sttemntFooter"> <button id="sttemntBtn" type="button" data-tw-dismiss="modal"><span class="btn btn-primary w-35 mr-1">블랙리스트 추가</span></button> <button type="button" data-tw-dismiss="modal" class="btn btn-outline-secondary w-20">취소</button> </div>
            <!-- END: Modal Footer -->
        </div>
    </div>
</div>
<div id="withdrawal" class="modal" tabindex="-1" aria-hidden="true">
    <div class="modal-dialog" >
        <div class="modal-content">
            <!-- BEGIN: Modal Header -->
            <div class="modal-header">
                <h2 class="font-medium text-base mr-auto">회원 상태 변경</h2>
                <div class="dropdown sm:hidden"> <a class="dropdown-toggle w-5 h-5 block" href="javascript:;" aria-expanded="false" data-tw-toggle="dropdown"> <i data-lucide="more-horizontal" class="w-5 h-5 text-slate-500"></i> </a></div>
            </div>
            <!-- BEGIN: Modal Body -->
            <div class="modal-body grid grid-cols-6 gap-4 gap-y-3" style="margin-left: 100px; margin-right: 100px;">
                <div class="col-span-6 sm:col-span-6"> <label for="modal-form-1" class="form-label ml-1" style="white-space: nowrap;">탈퇴 처리 하시겠습니까?</label></div>
            </div>
            <!-- BEGIN: Modal Footer -->
            <div class="modal-footer" id="withdrawalFooter"> <button id="withdrawalBtn" type="button" data-tw-dismiss="modal"><span class="btn btn-primary w-20 mr-1">확인</span></button> <button type="button" data-tw-dismiss="modal" class="btn btn-outline-secondary w-20">취소</button> </div> <!-- END: Modal Footer -->
        </div>
    </div>
</div>
<!-- END: Modal Content -->
<script src="https://unpkg.com/xlsx/dist/xlsx.full.min.js"></script>
<!-- <script type="text/javascript" src="/resources/js/jquery-3.6.4.min.js"></script> -->
<script type="text/javascript">
$(function(){
	$("#main_menu").html("인사/행정");
	$("#sub_menu").html("계정 관리");

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
	if ($("#test").length) {
		// Filter function
		var filterHTMLForm = function filterHTMLForm() {
			var field = $("#tabulator-html-filter-field").val();
			var type = $("#tabulator-html-filter-type").val();
			var value = $("#tabulator-html-filter-value").val();
			table.setFilter(field, type, value);
		}; // On submit filter form


		// Setup Tabulator
	    var table = new Tabulator("#test", {
			//ajaxURL: "https://dummy-data.left4code.com",
			ajaxURL: "/emp/pa/mngmemacnt/memAccount",
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
				title: "아이디",
				width: 140,
				minWidth: 100,
				field: "memId",
				headerHozAlign: "center",
				hozAlign: "center",
				vertAlign: "middle",
				print: false,
				download: false
			}, {
				title: "이름",
				width: 120,
				minWidth: 100,
				field: "memNm",
				headerHozAlign: "center",
				hozAlign: "center",
				vertAlign: "middle",
				print: false,
				download: false,
				cssClass: "text-left"
			}, {
				title: "동/호수",
				width: 180,
				minWidth: 100,
				field: "hshldInfoNo",
				hozAlign: "center",
				vertAlign: "middle",
				print: false,
				download: false
			}, {
				title: "신고횟수",
				width: 140,
				minWidth: 100,
				field: "sttemnt",
				hozAlign: "center",
				vertAlign: "middle",
				print: false,
				download: false,
				cellClick: function(e, cell) {
	                console.log("셀 클릭됨!");
	                const myModal = tailwind.Modal.getInstance(document.querySelector("#sttemnt"));
					myModal.show();
	    			let memId = cell._cell.row.data.memId;
	    			let data = {
	    				"memId" : memId,
	    			};
	    			console.log(data);
	    			jQuery.ajax({
	    		        url: '/emp/pa/mngmemacnt/sttemnt',
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
	    		        		str += '<tr><td colspan="3" style="text-align: center;">신고 내역이 없습니다.</td></tr>'
	    		        		$('#mytbody').html(str);
	    		        		$('#sttemntFooter').html('<button id="withdrawalBtn" type="button" data-tw-dismiss="modal"><span class="btn btn-primary w-20 mr-1">확인</span></button>');
	    		        	} else {
	    		        		jQuery.each(result, function(i){
	    		                      console.log(i);
	    		                      str += '<tr>';
	    		                      str += '<td>' + result[i].sttemntId  + '</td>'
	    		                      str += '<td>' + result[i].sttemntRsn  + '</td>'
	    		                      str += '<td>' + result[i].aplcntId  + '</td>'
	    		                      str += '</tr>';
	    		                 });
	    		                 $('#mytbody').html(str);
	    		                 $('#sttemntFooter').html('<button id="sttemntBtn" type="button" data-tw-dismiss="modal"><span class="btn btn-primary w-35 mr-1">블랙리스트 추가</span></button> <button type="button" data-tw-dismiss="modal" class="btn btn-outline-secondary w-20">취소</button>');


	    		                 //블랙리스트 추가 버튼을 클릭했을 때
	    		                 $("#sttemntBtn").on("click", function() {
	    		                	 console.log("클릭");
	    		                	 let memId = cell._cell.row.data.memId;
	    		                	 let memNm = cell._cell.row.data.memNm;
	    		                	 let data = {
	    		                			 "memId" : memId,
	    		                			 "memNm" : memNm,
	    		                			 "list" : result
	    		                	 };
	    		                	 console.log(data);
	    		                	 addBlackList(data);
	    		                 });
	    		             }
	    		         }
	    			});
	    		}
			}, {
				title: "상태",
				width: 129,
				minWidth: 50,
				field: "acntSttsNm",
				hozAlign: "center",
				vertAlign: "middle",
				print: false,
				download: false,
			}, {
				title: "상세정보",
				width: 130,
				minWidth: 50,
				responsive: 0,
				hozAlign: "center",
				vertAlign: "middle",
				headerSort: false,
				print: false,
				download: false,
				cssClass: "font-bold",
			    formatter: function(cell, formatterParams) {

			    	var icons = $(`
			    	<div class="flex lg:justify-center items-center">
			    		<a class="mod" href="javascript:;" title=${txt}><svg class="text-primary" xmlns="http://www.w3.org/2000/svg" width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="edit" data-lucide="edit" class="lucide lucide-edit block mx-auto"><path d="M11 4H4a2 2 0 00-2 2v14a2 2 0 002 2h14a2 2 0 002-2v-7"></path><path d="M18.5 2.5a2.121 2.121 0 013 3L12 15l-4 1 1-4 9.5-9.5z"></path></svg></a>
			    	</div>
				    `);

			    	$(icons).find(".mod").on("click", function() {
			    		var memId = cell._cell.row.data.memId;
			    		var url = "/emp/pa/mngmemacnt/detail?memId=" + memId;
			    		window.location.href = url;
			    	});

			    	return icons[0];
			    }
			}, {
				title: "삭제",
				width: 80,
				minWidth: 50,
				responsive: 0,
				hozAlign: "center",
				vertAlign: "middle",
				headerHozAlign: "center",
				headerSort: false,
				print: false,
				download: false,
				cssClass: "font-bold",
			    formatter: function(cell, formatterParams) {

			    	var icons = $(`
			    	<div class="flex lg:justify-center items-center">
			    		<a class="del" href="javascript:;" title=${txt}><svg class="text-danger" xmlns="http://www.w3.org/2000/svg" width="19" height="19" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="trash-2" data-lucide="trash-2" class="lucide lucide-trash-2 block mx-auto"><polyline points="3 6 5 6 21 6"></polyline><path d="M19 6v14a2 2 0 01-2 2H7a2 2 0 01-2-2V6m3 0V4a2 2 0 012-2h4a2 2 0 012 2v2"></path><line x1="10" y1="11" x2="10" y2="17"></line><line x1="14" y1="11" x2="14" y2="17"></line></svg></a>
			    	</div>
			    	`);

					$(icons).find(".del").on("click", function() {
						const myModal = tailwind.Modal.getInstance(document.querySelector("#withdrawal"));
						myModal.show();
						$("#withdrawalBtn").on("click", function() {
							console.log("클릭");
			    			let memId = cell._cell.row.data.memId;
			    			let data = {
			    				"memId" : memId,
			    			};
			    			console.log(data);
			    			deleteMember(data);
			    		});
					});

			        return icons[0];
			    }
			}, // For print format
			{
				title: "아이디",
				field: "memId",
				visible: false,
				print: true,
				download: true
			}, {
				title: "이름",
				field: "memNm",
				visible: false,
				print: true,
				download: true
			}, {
				title: "동/호수",
				field: "hshldInfoNo",
				visible: false,
				print: true,
				download: true
			}, {
				title: "신고횟수",
				field: "sttemnt",
				visible: false,
				print: true,
				download: true
			}, {
				title: "상태",
				field: "status",
				visible: false,
				print: true,
				download: true
			}], initialSort: [
		        { column: "seq", dir: "desc" }
		    ]
	    });

		$("#tabulator-html-filter-form")[0].addEventListener("keypress", function (event) {
		    var keycode = event.keyCode ? event.keyCode : event.which;

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

//탈퇴 처리
function deleteMember(data) {
	jQuery.ajax({
        url: '/emp/pa/mngmemacnt/delete',
        contentType : "application/json;charset=utf-8",
        type: 'post',
        data: JSON.stringify(data),
        dataType : "json",
        beforeSend:function(xhr){
			xhr.setRequestHeader("${_csrf.headerName}","${_csrf.token}");
		},
        success: function(result) {
        	console.log(result);
        	if (result == 1) {
        		alert("탈퇴 처리 완료!");
	        	} else {
	        		alert("탈퇴 처리 실패");
	        	}
        }
    });
}

//블랙리스트 추가
function addBlackList(data) {
	jQuery.ajax({
		url: '/emp/pa/mngmemacnt/blacklist',
		contentType : "application/json;charset=utf-8",
		type: 'post',
		data: JSON.stringify(data),
		dataType : "text",
		beforeSend:function(xhr){
			xhr.setRequestHeader("${_csrf.headerName}","${_csrf.token}");
		},
		success: function(result) {
			console.log(result);
			if (result == 1) {
				alert("블랙리스트 변경 완료!");
				window.location.href = '/emp/pa/mngmemacnt/blacklist';

			} else {
				alert("블랙리스트 변경 실패");
			}
		}
    });
}
</script>


