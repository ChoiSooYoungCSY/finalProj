<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<script type="text/javascript"
	src="//dapi.kakao.com/v2/maps/sdk.js?appkey=7f39a9d3172470ac2d0a3e650dbb6986"></script>

<style>
label {
	font-size: 18px;
}
.file label{

	margin-left:5px;
	display: inline-block;
	width: 50px;
    background-color: #4a4a4a;
	color: #fff;
    cursor: pointer;
    line-height: 45px;
	border-radius: 5px;
    text-align: center;
 }


.file input[type="file"]{
    position: absolute;
    width: 0;
    height: 0;
    padding: 0;
    overflow: hidden;
    border: 0;
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
<div class="bdy col-span-12 lg:col-span-9 2xl:col-span-10">
	<div
		class="flex flex-col sm:flex-row items-center p-5 border-b border-slate-200/60 dark:border-darkmode-400">
		<h2 class="font-medium text-base mr-auto">우리동네 게시판 관리</h2>
		<div
			class="form-check form-switch w-full sm:w-auto sm:ml-auto mt-3 sm:mt-0">
			<label class="form-check-label ml-0" for="show-example-3">마커
				등록/ 마커 전체 보기</label> <input id="markerChagneBtn" data-target="#link-button"
				class="show-code form-check-input mr-0 ml-3" type="checkbox" />
		</div>
	</div>
	<div id="map" style="width: 100%; height: 350px;"></div>
	<form
		action="/emp/pa/mngneighborbbs/registPlace?${_csrf.parameterName}=${_csrf.token}"
		method="post" enctype="multipart/form-data" id="registPlaceForm">
		<div class="box mt-5" id="registPlaceDiv">
			<div style="display: flex; justify-content: center; height: 400;">
				<div class="mt-5 mr-3 mb-5" style="margin: 1 auto;">
					<div class="mt-3 center" style="width: 470px;">
						<label for="rstrntName" class="form-label">상호명</label> <input
							id="rstrntNm" name="rstrntNm" type="text" class="form-control"
							placeholder="상호명을 입력해주세요." required />
					</div>
					<!-- BEGIN: Basic Select -->
					<div class="flex center mt-3">
						<div class="mr-3" style="width: 230px;">
							<label>식당 종류</label>
							<div class="mt-2 mr-3">
								<select data-placeholder="등록하는 식당 종류를 검색할 수 있습니다."
									class="tom-select w-full" id="rstrntSeCd" name="rstrntSeCd"
									required>
									<option value="REST01">고기</option>
									<option value="REST12">양념 고기</option>
									<option value="REST11">차가운 음식(한식)</option>
									<option value="REST08">따듯한 음식(한식)</option>
									<option value="REST10">매운음식(한식)</option>
									<option value="REST09">치킨</option>
									<option value="REST02">양식</option>
									<option value="REST03">일식</option>
									<option value="REST04">중식</option>
									<option value="REST05">분식</option>
									<option value="REST07">술집</option>
									<option value="REST06">동남아</option>
								</select>
							</div>
						</div>
						<div class="mr-3" style="width: 220px;">
							<label for="rstrntTel" class="form-label">전화번호</label> <input id="rstrntTel"
								name="rstrntTel" type="text" class="form-control"  required
								placeholder="000-0000-0000" />
						</div>
					</div>
					<div class="flex center mt-3">
						<div class="mr-3" style="width: 220px;">
							<label for="la" class="form-label">위도</label> <input id="la"
								name="la" type="text" class="form-control" readonly required
								placeholder="지도에 마커를 찍어보세요" />
						</div>
						<div class="ml-3 mr-3 center" style="width: 220px;">
							<label for="lo" class="form-label">경도</label> <input id="lo"
								name="lo" type="text" class="form-control" readonly required />
						</div>
					</div>
					<div class="flex center mt-3">
						<input type="hidden" id="bsnHour" name="bsnHour" required />
						<div class="mr-3" style="width: 220px;">
							<label for="bsnHour1" class="form-label">영엽 시작시간</label> <input
								id="bsnHour1" type="time" class="form-control" required />
						</div>
						<div class="ml-3 mr-3 center" style="width: 220px;">
							<label for="bsnHour2" class="form-label">영업 종료시간</label> <input
								id="bsnHour2" type="time" class="form-control" required />
						</div>
					</div>
					<div class="flex center mt-3">
						<div class="mr-3" style="width: 220px;">
							<div class="mt-3">
                                    <label for="restde" class="form-label">휴무일 정보</label>
                                    <input type="hidden" id="restde" name="restde">
                                    <div class="flex flex-col sm:flex-row mt-2">
                                        <div class="form-check mr-2">
                                            <input id="radio-switch-4" class="form-check-input" type="radio" name="restdeWeek" value="매주">
                                            <label class="form-check-label" for="radio-switch-4">매주</label>
                                        </div>
                                        <div class="form-check mr-2 mt-2 sm:mt-0">
                                            <input id="radio-switch-5" class="form-check-input" type="radio" name="restdeWeek" value="격주">
                                            <label class="form-check-label" for="radio-switch-5">격주</label>
                                        </div>
                                    </div>
                                </div>
						</div>
						<div class="ml-3 mr-3 mt-2 mb-3center" style="width: 220px;">
							<label for="restde" class="form-label">휴무일 정보</label>
							<div class="flex">
                            <div class="form-check mt-2 mr-2">
                                <input id="checkbox-switch-1" name="restdeDay"  class="form-check-input" type="checkbox" value="일">
                                <label class="form-check-label" for="checkbox-switch-1">일</label>
                            </div>
                            <div class="form-check mt-2 mr-2">
                                <input id="checkbox-switch-2" name="restdeDay"  class="form-check-input" type="checkbox" value="월">
                                <label class="form-check-label" for="checkbox-switch-2">월</label>
                            </div>
                            <div class="form-check mt-2  mr-2">
                                <input id="checkbox-switch-3" name="restdeDay"  class="form-check-input" type="checkbox" value="화">
                                <label class="form-check-label" for="checkbox-switch-3">화</label>
                            </div>
                            <div class="form-check mt-2">
                                <input id=checkbox-switch-4 name="restdeDay"  class="form-check-input" type="checkbox" value="수">
                                <label class="form-check-label" for="checkbox-switch-4">수</label>
                            </div>
                            </div>
                             <div class="flex">
                            <div class="form-check mt-2 mr-2">
                                <input id="checkbox-switch-5" name="restdeDay"  class="form-check-input" type="checkbox" value="목">
                                <label class="form-check-label" for="checkbox-switch-5">목</label>
                            </div>
                            <div class="form-check mt-2 mr-2">
                                <input id="checkbox-switch-6" name="restdeDay"  class="form-check-input" type="checkbox" value="금">
                                <label class="form-check-label" for="checkbox-switch-6">금</label>
                            </div>
                            <div class="form-check mt-2">
                                <input id="checkbox-switch-7" name="restdeDay" class="form-check-input" type="checkbox" value="토">
                                <label class="form-check-label" for="checkbox-switch-7">토</label>
                            </div>
                            </div>
						</div>
					</div>
				</div>
				<div class="mt-7  mb-5"
					style="width: 300px; height: 400px; margin: 1 auto;">
					<label class="form-label mb-1">식당 대표이미지</label>
					<div class="file flex">
						<input class ="form-control mt-2" style="height: 39px;" type="text"  id="fileId" readonly placeholder="선택된 첨부파일 없음"/>
						<label for="multipartfile" class="btn btn-dark mr-1 mt-2" style="margin-left: 3px;">
						<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="image" data-lucide="image" class="lucide lucide-image w-5 h-5">
						<rect x="3" y="3" width="18" height="18" rx="2" ry="2"></rect>
						<circle cx="8.5" cy="8.5" r="1.5"></circle>
						<polyline points="21 15 16 10 5 21"></polyline>
						</svg>
						</label>
						<input class="file" type="file" id="multipartfile" name="multipartfile">
					</div>
					<div class="rounded mt-3" id="cardImages" style="border:1px; gray; border-style: dotted; width: 300px; height: 240px"></div>
					<div style="float: right;">
						<a
							class="btn btn-rounded-primary w-24"
							style="margin-top: 20px; height: 50px;" id="registRstrntBtn">장소
							등록</a>
						<a class="btn btn-rounded btn-secondary-soft w-24 mr-1 mb-2"
							style="margin-top: 20px; height: 50px;" onclick="">취소</a>
					</div>
				</div>
			</div>
		</div>
		<sec:csrfInput />
	</form>

	<div class="intro-y col-span-12 overflow-auto lg:overflow-visible mt-3"  style="display:none;" id="reviewsTable">
		<div class="intro-y col-span-12 flex flex-wrap sm:flex-nowrap items-center mb-3">
		<div class="hidden md:block mx-auto text-slate-500">
		<!-- Showing 시작행 to 종료행 of 전체행수 entries
				종료행  : currentPage * size
				시작행  : 종료행 - (size - 1)
				전체행수 : total
			-->
		</div>
		<!-- BEGIN: 검색 -->
		<div class="flex w-full sm:w-auto mt-2 mr-10">
			<select name="cond" id="cond" class="w-20 form-select box mt-0 mr-2 font-semibold" style="width: 120px; font-size: 16px;">
				<option value="">전체</option>
				<option value="memName" >작성자</option>
				<option value="rstrntNm">식당 이름</option>
				<option value="reviewCn">리뷰 내용</option>
			</select>
			<div class="w-56 relative text-slate-500 mr-2">
				<input type="text" name="keyword" id="keyword" class="form-control w-56 box pr-10" placeholder="Search...">
				<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
						viewBox="0 0 24 24" fill="none" stroke="currentColor"
						stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
						icon-name="search"
						class="lucide lucide-search w-4 h-4 absolute my-auto inset-y-0 mr-3 right-0"
						data-lucide="search">
						<circle cx="11" cy="11" r="8"></circle>
						<line x1="21" y1="21" x2="16.65" y2="16.65"></line></svg>
			</div>
			<a id="search" class="btn btn-primary shadow-md" style="letter-spacing: 1px; font-size: 16px;">검색</a>
		</div>
		<!--  END: 검색 -->
	</div>
	<table class="table table-report -mt-2 ml-8">
       	<thead>
           	<tr>
	               <th class="text-left whitespace-nowrap" style="font-size: 20px;">작성자</th>
	               <th class="whitespace-nowrap" colspan=2 id="placeNameSpace" style="font-size: 22px;">&nbsp;</th>
	               <th class="text-center whitespace-nowrap" style="font-size: 20px;">최초 작성/최종 수정</th>
	               <th class="text-left whitespace-nowrap" style="font-size: 20px;">&nbsp;</th>
	               <th class="text-left whitespace-nowrap" style="font-size: 20px;">&nbsp;</th>
               </tr>
           </thead>
       	<tbody id=mytbody style="margin:0 auto;">

       	</tbody>
       </table>
	<!-- BEGIN: 페이징 처리 -->
	<div class='intro-y col-span-12 flex flex-wrap sm:flex-row sm:flex-nowrap items-center mt-3' id="reviewPagination">

	</div>
	<!-- END: 페이징 처리 -->
	</div>
</div>

<!-- END: Body -->


<script type="text/javascript" src="/resources/js/jquery-3.6.4.min.js"></script>
<script type="text/javascript">
let nowSize = "";
let nowCurrentPage = "";
let nowCond = "";
let nowKeyword = "";
let nowPlaceId = "";

function deleteReview(data){
	console.log(data);
	if (!confirm("리뷰를 삭제하시겠습니까?")) {
		alert("취소(아니오)를 누르셨습니다.");
		return;
	}
	jQuery.ajax({
		url : "/emp/pa/mngneighborbbs/deleteReview",
		type : 'POST',
		data : JSON.stringify(data),
		contentType: 'application/json',
		beforeSend:function(xhr){
			xhr.setRequestHeader("${_csrf.headerName}","${_csrf.token}");
		},
		success : function(data) {
			if(data == '1'){
				alert("리뷰가 삭제 되었습니다.");
				pagingCallback(nowSize, nowCurrentPage, nowCond, nowKeyword, nowPlaceId);
			}else{
				pagingCallback(nowSize, nowCurrentPage, nowCond, nowKeyword, nowPlaceId);
			}

		}
	});
}

$("#search").on("click", function(){
	nowCond = $("#cond").val();
	nowKeyword = $("#keyword").val();
	pagingCallback(nowSize, nowCurrentPage, nowCond, nowKeyword, nowPlaceId);
})
function handleImgFileSelect(e) {
	let sel_file = [];
	let files = e.target.files;
	let fileName = files[0].name;
	$("#fileId").val(fileName);
	let fileArr = Array.prototype.slice.call(files);

	fileArr.forEach(function(f) {
		if (!f.type.match("image.*")) {
			alert("이미지 확장자만 가능합니다.");
			return;
		}

		sel_file.push(f);

		let reader = new FileReader();

		reader.onload = function(e) {
			let img_html = "<img src='" + e.target.result
					+ "'style='width:90%; height:90%; margin:auto auto;' />";
			$("#cardImages").html(img_html);
		}
		reader.readAsDataURL(f);
	});
};
$("#multipartfile").on("change", handleImgFileSelect);
	$(function() {
		$("#main_menu").html("인사/행정");
		$("#sub_menu").html("커뮤니티 관리");

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

	let mapContainer = document.getElementById('map'), // 지도를 표시할 div
	mapOption = {
		center : new kakao.maps.LatLng(36.325039040959226, 127.40890399307372), // 지도의 중심좌표
		level : 3
	// 지도의 확대 레벨
	};

	let map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
	let imageSrc = '/resources/tinker/src/images/map-marker.png' // 마커이미지의 주소입니다
	imageSize = new kakao.maps.Size(32, 32), // 마커이미지의 크기입니다
	imageOption = {
		offset : new kakao.maps.Point(16, 46)
	}; // 마커이미지의 옵션입니다. 마커의 좌표와 일치시킬 이미지 안에서의 좌표를 설정합니다
	// 지도를 클릭한 위치에 표출할 마커입니다
	let marker = new kakao.maps.Marker({
		// 지도 중심좌표에 마커를 생성합니다
		position : map.getCenter()
	});
	// 지도에 마커를 표시합니다
	marker.setMap(map);

	// 지도에 클릭 이벤트를 등록합니다
	// 지도를 클릭하면 마지막 파라미터로 넘어온 함수를 호출합니다
	kakao.maps.event.addListener(map, 'click', function(mouseEvent) {

		// 클릭한 위도, 경도 정보를 가져옵니다
		let latlng = mouseEvent.latLng;

		// 마커 위치를 클릭한 위치로 옮깁니다
		marker.setPosition(latlng);
		$("#la").val(latlng.getLat());
		$("#lo").val(latlng.getLng());
	});

	$("#registRstrntBtn").on("click",function() {

		if (!confirm("장소를 등록하시겠습니까?")) {
			alert("취소(아니오)를 누르셨습니다.");
			return;
		}
		let rstrntNm = $("#rstrntNm").val();
		let rstrntSeCd = $("#rstrntSeCd").val();
		let la = $("#la").val();
		let lo = $("#lo").val();
		let bsnHour1 = $("#bsnHour1").val();
		let bsnHour2 = $("#bsnHour2").val();

		let restdeDay = [];
		$("input[type=checkbox][name=restdeDay]").each(function(i,v){
			if($(v).is(":checked")==true){
				restdeDay.push($(v).val());

			}
		});
		restdeDay = restdeDay.toString();

		let restdeWeek = $("input[name=restdeWeek]:checked").val();
		let restde = restdeWeek +" "+restdeDay;
		$("#restde").val(restde);

		let bsnHour = bsnHour1 + "-" + bsnHour2;
		$("#bsnHour").val(bsnHour);



		let url = $("#registPlaceForm").attr("action");
		let form = $('#registPlaceForm')[0];
		let formData = new FormData(form);

		jQuery.ajax({
			url : url,
			type : 'POST',
			data : formData,
			success : function(data) {
				console.log(data);

				if (data == '1') {
					alert("장소가 등록되었습니다.");
					allMarkerShow

				} else {
					alert("등록에 실패하였습니다.");
					location.href = "http://localhost:9090/emp/pa/mngneighborbbs";
				}
			},
			error : function(data) {
				alert(data);
			},
			cache : false,
			contentType : false,
			processData : false
			});

	});

	let markerFlag = false;
	$("#markerChagneBtn").on("change",allMarkerShow);
	function allMarkerShow(){
		markerFlag = !markerFlag;

		if(markerFlag){
			$("#registPlaceForm").css("display","none");
			jQuery.ajax({
				url : "/emp/pa/mngneighborbbs/allRstrnt",
				type : 'GET',
				success : function(data) {
					console.log(data);
					let rstrntVOList = data;

					let mapContainer = document.getElementById('map'), // 지도를 표시할 div
					mapOption = {
						center : new kakao.maps.LatLng(36.325039040959226, 127.40890399307372), // 지도의 중심좌표
						level : 3
					// 지도의 확대 레벨
					};

					let map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
					let imageSrc = '/resources/tinker/src/images/map-marker.png', // 마커이미지의 주소입니다
					imageSize = new kakao.maps.Size(32, 32), // 마커이미지의 크기입니다
					imageOption = {
						offset : new kakao.maps.Point(16, 46)
					}; // 마커이미지의 옵션입니다. 마커의 좌표와 일치시킬 이미지 안에서의 좌표를 설정합니다

					for (let i = 0; i<rstrntVOList.length; i++){
						let obj = {
								latlng: new kakao.maps.LatLng(rstrntVOList[i]['la'], rstrntVOList[i]['lo'])
							}

						// 마커를 표시할 위치와 내용을 가지고 있는 객체 배열입니다
						let position = obj;
						let markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize, imageOption);

						let marker = new kakao.maps.Marker({ //2
							map: map, // 마커를 표시할 지도
							position: position.latlng, // 마커의 위치
							image: markerImage // 마커 이미지
						}); // 마커 생성문 종료

						//마커를 클릭했을 때 커스텀 오버레이를 표시합니다
						kakao.maps.event.addListener(marker, 'click', function (){
							$("#reviewsTable").css("display","");
							let rstrntId = rstrntVOList[i]['rstrntId'];

							nowSize ="";
							nowCurrentPage ="";
							nowCond ="";
							nowKeyword ="";
							nowPlaceId = rstrntId;
							pagingCallback(nowSize, nowCurrentPage, nowCond, nowKeyword, nowPlaceId);
						});
					}
				}
			});
		}else{
			location.href = "http://localhost:9090/emp/pa/mngneighborbbs";
		}
	}

	function pagingCallback(size, currentPage, cond, keyword, placeId){
		let promise = pagingAjax(size,currentPage,cond,keyword,placeId);
		promise.then(function(result){
			console.log(result);
			setReviewTable(result);
		});
	}

	function pagingAjax(size, currentPage, cond, keyword, placeId){

		let urlStr = "/emp/pa/mngneighborbbs/reviews?placeId=" + placeId;

		if(size !=null && size !=""){
			urlStr += "&size="+size;
		}
		if(currentPage !=null  && currentPage !=""){
			urlStr += "&currentPage="+currentPage;
		}
		if(cond !=null && cond !=""){
			urlStr += "&cond="+cond;
		}
		if(keyword !=null && keyword !=""){
			urlStr += "&keyword="+keyword;
		}
		console.log(urlStr);
		return new Promise(function(resolve, reject){
			jQuery.ajax({
				url: urlStr,
				type: "get",
				contentType: 'application/json; charset=utf-8',
				dataType: "json",
				success: function(data){
					resolve(data);
				},
				error: function (e) {
					reject(new Error('아작스 요청 에러'));
					console.log(e + "에러남");
				} //ajax 호출 에러 종료
			}); //ajax 호출 종료
		});
	}

	function setReviewTable(data){
		console.log(data);
		let reviewList = data.content;
		$("#placeNameSpace").html(reviewList[0]['rstrntNm']);
		let str = "";

		for (let i = 0; i<reviewList.length; i++){
			let reviewNo = reviewList[i]['reviewNo'];
			let rstrntNm = reviewList[i]['rstrntNm'];
			let writer = reviewList[i]['memNm'];
			let writeTm = reviewList[i]['lastUpdtTm'];
			let reviewCn = reviewList[i]['reviewCn'];
			let frstWrterTm = reviewList[i]['frstWrterTm'];
			let lastUpdtTm = reviewList[i]['lastUpdtTm'];
			let year = frstWrterTm.slice(0, 4);
			let month = frstWrterTm.slice(4, 6);
			let day = frstWrterTm.slice(6, 8);
			let hour = frstWrterTm.slice(8,10);
			let minute = frstWrterTm.slice(10,12);
			let sec = frstWrterTm.slice(12,14);
			frstWrterTm = `\${year}-\${month}-\${day} \${hour}:\${minute}:\${sec}`;
			year = lastUpdtTm.slice(0, 4);
			month = lastUpdtTm.slice(4, 6);
			day = lastUpdtTm.slice(6, 8);
			hour = lastUpdtTm.slice(8,10);
			minute = lastUpdtTm.slice(10,12);
			sec = lastUpdtTm.slice(12,14);
			lastUpdtTm = `\${year}-\${month}-\${day} \${hour}:\${minute}:\${sec}`;

			str += "<tr class='intro-x'>";
			str += "<td class='w-40'>";
			str += "<div class='flex' style='font-size:18px;'>";
			str +=  writer;
			str += "</div>";
			str += "</td>";
			str += "<td colspan='2' style='font-size:18px;'>";
			str += "<a href='' class='font-medium whitespace-nowrap'>"+reviewCn+"</a> ";
			str += "</td>";
			str += "<td class='w-40'>";
			str += "<div style='font-size:15px;'>";
			str += "<div class='flex items-center justify-center text-success'>"+frstWrterTm+"</div>";
			str += "<div class='flex items-center justify-center text-danger'>"+lastUpdtTm+"</div>";
			str += "</div>";
			str += "</td>";
			str += "<td class='table-report__action w-56'>";
			str += "<div class='flex justify-center items-center'>";
			str += "<a class='flex items-center mr-3' href='javascript:;'> <svg xmlns='http://www.w3.org/2000/svg' width='24' height='24' viewBox='0 0 24 24' fill='none' stroke='currentColor' stroke-width='2' stroke-linecap='round' stroke-linejoin='round' icon-name='check-square' data-lucide='check-square' class='lucide lucide-check-square w-4 h-4 mr-1'><polyline points='9 11 12 14 22 4'></polyline><path d='M21 12v7a2 2 0 01-2 2H5a2 2 0 01-2-2V5a2 2 0 012-2h11'></path></svg> Edit </a>";
			str += "<a class='flex items-center text-danger' href='javascript:deleteReview("+reviewNo+");' data-tw-toggle='modal' data-tw-target='#delete-confirmation-modal'> <svg xmlns='http://www.w3.org/2000/svg' width='24' height='24' viewBox='0 0 24 24' fill='none' stroke='currentColor' stroke-width='2' stroke-linecap='round' stroke-linejoin='round' icon-name='trash-2' data-lucide='trash-2' class='lucide lucide-trash-2 w-4 h-4 mr-1'><polyline points='3 6 5 6 21 6'></polyline><path d='M19 6v14a2 2 0 01-2 2H7a2 2 0 01-2-2V6m3 0V4a2 2 0 012-2h4a2 2 0 012 2v2'></path><line x1='10' y1='11' x2='10' y2='17'></line><line x1='14' y1='11' x2='14' y2='17'></line></svg> Delete </a>";
			str += "</div>";
			str += "</td>";
			str += "</tr>";
		};
		$("#mytbody").html(str);



		let pageStr = "";
		pageStr += "<nav class='w-full sm:w-auto sm:mr-auto'>";
		pageStr += "<ul class='pagination ml-5'>";
		pageStr += "<li class='page-item'>";
		pageStr += "<a class='page-link' href='#' onclick='pagingCallback(nowSize, 1, nowCond, nowKeyword, nowPlaceId)'> <svg xmlns='http://www.w3.org/2000/svg' width='24' height='24' viewBox='0 0 24 24' fill='none' stroke='currentColor' stroke-width='2' stroke-linecap='round' stroke-linejoin='round' icon-name='chevrons-left' class='lucide lucide-chevrons-left w-4 h-4' data-lucide='chevrons-left'><polyline points='11 17 6 12 11 7'></polyline><polyline points='18 17 13 12 18 7'></polyline></svg> </a>";
		pageStr += "</li>";
		pageStr += "<li class='page-item'>";
		pageStr += "<a class='page-link'";
		if(data.startPage < 6){
			pageStr += "style='pointer-events: none;'";

		}
		pageStr += "href='#' onclick='pagingCallback(nowSize, "+(data.startPage - 5)+", nowCond, nowKeyword, nowPlaceId)'>";
		pageStr += "<svg xmlns='http://www.w3.org/2000/svg' width='24' height='24' viewBox='0 0 24 24' fill='none' stroke='currentColor' stroke-width='2' stroke-linecap='round' stroke-linejoin='round' icon-name='chevron-left' class='lucide lucide-chevron-left w-4 h-4' data-lucide='chevron-left'><polyline points='15 18 9 12 15 6'></polyline></svg> </a>";
		pageStr += "</li>";
		for (let i = data.startPage; i<= data.endPage; i++){
			pageStr += "<li class='page-item ";
			if(i == data.currentPage || (i == "" && data.currentPage == 1) ){
				pageStr += "active";
			}
			pageStr += "'>";
			pageStr += "<a href='#' onclick ='pagingCallback(nowSize, "+i+", nowCond, nowKeyword, nowPlaceId)'";
			pageStr += "class='page-link'>"+i+"</a>";
			pageStr += "</li>";

		}
		pageStr += "<li class='page-item'>";
		pageStr += "<a class='page-link'";
		if(data.endPage == data.totalPages){
			pageStr += " style='pointer-events: none;'";
		}
		pageStr += "href='#' onclick ='pagingCallback(nowSize, "+(data.startPage+5)+", nowCond, nowKeyword, nowPlaceId)'>";
		pageStr += "<svg xmlns='http://www.w3.org/2000/svg' width='24' height='24' viewBox='0 0 24 24' fill='none' stroke='currentColor' stroke-width='2' stroke-linecap='round' stroke-linejoin='round' icon-name='chevron-right' class='lucide lucide-chevron-right w-4 h-4' data-lucide='chevron-right'><polyline points='9 18 15 12 9 6'></polyline></svg> </a>";
		pageStr += "</li>";
		pageStr += "<li class='page-item'>";
		pageStr += "<a class='page-link'";
		if(data.endPage == data.totalpages){
			pageStr += " style='pointer-events: none;'";
		}
		pageStr += "#' onclick ='pagingCallback(nowSize, "+data.totalPages+", nowCond, nowKeyword, nowPlaceId)'> <svg xmlns='http://www.w3.org/2000/svg' width='24' height='24' viewBox='0 0 24 24' fill='none' stroke='currentColor' stroke-width='2' stroke-linecap='round' stroke-linejoin='round' icon-name='chevrons-right' class='lucide lucide-chevrons-right w-4 h-4' data-lucide='chevrons-right'><polyline points='13 17 18 12 13 7'></polyline><polyline points='6 17 11 12 6 7'></polyline></svg> </a>";
		pageStr += "</li>";
		pageStr += "</ul>";
		pageStr += "</nav>";
		pageStr += "<select name='size' id='size' class='w-20 form-select box mt-3 sm:mt-0' style='margin-right:50px;'>";
		if (data.size =='5'){
			pageStr += "<option value='5' selected>5</option>";
			nowSize = 5;
		}else if(data.size='10'){
			pageStr += "<option value='10' selected>10</option>";
			nowSize = 10;
		}
		pageStr += "</select>";

		$("#reviewPagination").html(pageStr);

	}


</script>




