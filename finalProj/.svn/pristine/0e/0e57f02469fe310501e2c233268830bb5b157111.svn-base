<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<style>
.form-label {
	display: inline-block;
	white-space: nowrap;
	width: 150px;
	font-size: 15px;
}

.form-check-label {
	display: inline-block;
	white-space: nowrap;
	font-size: 15px;
	margin-right: 20px;
	margin-top: 10px;
}

.form-check-input {
	margin-top: 10px;
}

span {
	color: blue;
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
	<div class="bdy col-span-10 bg-white rounded-md shadow-md">
		<div class="my-auto xl:bg-transparent px-5 py-8">
			<button type="button" id="autoBtn" class="mr-10" style="float: right; width: 80px">
				<span class="btn btn-primary w-full">자동완성</span>
			</button>
			<h2 class="intro-x font-bold text-3xl text-center mt-10">직원정보 등록</h2>
			<form id="frm" name="frm" action="/emp/pa/mngempacnt/registerPost"
				method="post" enctype="multipart/form-data">
				<div class="intro-x mt-8 ml-10 mt-5"
					style="float: left; width: 50%;">
					<div class="input-form mt-5">
						<label for="validation-form-1" class="form-label flex flex-col">아이디
						</label> <input id="username" type="text" name="empId"
							class="form-control" placeholder="MM001" minlength="5"
							maxlength="5" style="width: 215px;" required>
						<button type="button" id="idchkBtn">
							<span class="btn btn-primary ml-2">중복확인</span>
						</button>
					</div>
					<div class="input-form mt-3">
						<label for="validation-form-9" class="form-label flex flex-col">
							이름 </label> <input id="empNm" type="text" name="empNm"
							class="form-control" placeholder="한글, 영문자만 입력 가능합니다"
							style="width: 300px;" required>
					</div>
					<div class="input-form mt-3">
						<label for="validation-form-5" class="form-label flex flex-col">부서
						</label> <select id="deptCd" name="deptCd" class="form-select"
							style="width: 215px;" aria-label="Default select example"
							required>
							<option value="" selected disabled hidden>선택</option>
						</select>
					</div>
					<div class="input-form mt-3">
						<label for="validation-form-5" class="form-label flex flex-col">직급
						</label> <select id="jbgdCd" name="jbgdCd" class="form-select"
							style="width: 215px;" aria-label="Default select example"
							required>
							<option value="" selected disabled hidden>선택</option>
						</select>
					</div>
					<div class="input-form mt-3">
						<label for="validation-form-5" class="form-label flex flex-col">생년월일
						</label> <input id="empBrthdy" type="text" name="empBrthdy"
							class="form-control" placeholder="19801010" style="width: 300px;"
							maxlength="8" required>
					</div>
					<div>
						<input id="hiddenPassword" type="hidden" name="password">
					</div>
					<script>
					function insertInputs() {
						let empBrthdy = $("#empBrthdy").val();
						let password = empBrthdy.substring(2);
						$("#hiddenPassword").val(password);
					}
					$("#empBrthdy").on("input change", insertInputs);
					</script>
					<div class="input-form mt-3">
						<label for="validation-form-5" class="form-label flex flex-col">핸드폰번호
						</label> <input id="empPhoneNo" type="text" name="empPhoneNo"
							class="form-control" placeholder="01012345678"
							style="width: 300px;" maxlength="11">
					</div>
					<div class="input-form mt-3">
						<label for="validation-form-7" class="form-label flex flex-col">주소</label>
						<input id="zip" type="text" name="zip" class="form-control" placeholder="우편번호"
							style="width: 215px;" readonly>
						<button type="button" id="zipBtn" onclick="findAddr()">
							<span class="btn btn-primary ml-2">주소찾기</span>
						</button>
						<input id="addr1" type="text" class="form-control mt-3"
							placeholder="주소" style="width: 300px; margin-left: 155px;"
							readonly> <input id="addr2" type="text"
							class="form-control mt-3" placeholder="상세주소"
							style="width: 300px; margin-left: 155px;"> <input
							id="hiddenAddr" type="hidden" name="addr" required>
						<script>
							function combineInputs() {
							    let zip = $("#zip").val();
							    let addr1 = $("#addr1").val();
							    let addr2 = $("#addr2").val();
							    let combinedValue = zip + "/" + addr1 + "/" + addr2;
							    $("#hiddenAddr").val(combinedValue);
							}

							$("#zip").on("input change", combineInputs);
							$("#addr1").on("input change", combineInputs);
							$("#addr2").on("input change", combineInputs);
					</script>
					</div>
					<div class="input-form mt-3">
						<label for="validation-form-8" class="form-label flex flex-col">이메일
						</label> <input id="empMail" type="email" name="empMail"
							class="form-control" style="width: 300px;" readonly required>
					</div>
					<script>
					function changeInputs() {
						let username = $("#username").val();
						let empMail = username.toLowerCase() + "@dorandoran.com";
						$("#empMail").val(empMail);
					}
					$("#username").on("input", changeInputs);
				</script>
					<div class="input-form mt-3">
						<label for="validation-form-5" class="form-label flex flex-col">계좌번호
						</label> <select id="bankCd" name="bankCd" class="form-select sm:mr-2"
							style="width: 110px;" aria-label="Default select example"
							required><option value="" selected disabled hidden>선택</option></select> <input id="actno"
							type="text" name="actno" class="form-control"
							placeholder="숫자만 입력 가능합니다" style="width: 178px;" 20" required>
					</div>
					<div class="input-form mt-3">
						<label for="validation-form-8" class="form-label flex flex-col">입사일
						</label> <input id="jncmpYmd" type="text" name="jncmpYmd"
							class="form-control" placeholder="20230725" style="width: 300px;"
							minlength="8" maxlength="8" required>
					</div>
					<div class="input-form mt-3">
						<label for="validation-form-8" class="form-label flex flex-col">상급자
							ID </label> <input id="superiorId" type="text" name="superiorId"
							class="form-control" placeholder="MM001" style="width: 300px;"
							minlength="5" maxlength="5" required>
					</div>
				</div>
				<!-- 프로필사진 -->
				<div class="intro-x mt-12 mr-10" style="float: right; width: 40%;">
					<div
						class="border-2 border-dashed shadow-sm border-slate-200/60 rounded-md p-5"
						style="float: right; width: 200px">
						<div
							class="h-40 relative image-fit cursor-pointer zoom-in mx-auto">
							<img class="myprofile" alt="프로필사진"
								src="/resources/images/emp/basic.jpg"> <input
								id="hiddenInputMemImg" type="hidden" name="memImg">
						</div>
						<!-- 사진 등록 버튼 -->
						<div class="mx-auto cursor-pointer relative mt-5">
							<button type="button" class="w-full">
								<span class="btn btn-primary w-full">사진 등록</span>
							</button>
							<input type="file" name="picture" id="picture"
								class="w-full h-full top-0 left-0 absolute opacity-0">
						</div>
					</div>
				</div>
				<!-- 회원정보수정 버튼 -->
				<div class="intro-x w-full mt-10 text-center mb-10"
					style="float: left;">
					<div class="d-flex justify-center mt-5 mb-5">
						<button type="submit" id="submitbtn">
							<span
								class="btn btn-primary py-3 px-4 w-full xl:w-32 align-top mr-3">등록</span>
						</button>
						<button type="button" onclick="location.href='/emp/pa/mngempacnt'">
							<span
								class="btn btn-outline-secondary py-3 px-4 w-full xl:w-32 mt-3 xl:mt-0 align-top">취소</span>
						</button>
					</div>
				</div>
				<sec:csrfInput />
			</form>
		</div>
	</div>
</sec:authorize>
<!-- END: Body -->
<!-- <script type="text/javascript" src="/resources/js/jquery-3.6.4.min.js"></script> -->
<script	src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script type="text/javascript">
$(function(){
	$("#main_menu").html("마이페이지");
	$("#sub_menu").html("개인정보 수정");

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

$(function() {
	let code = "";
	let idCheck = false;
	let usernamePattern = /^(?=.*[A-Z]{2})(?=.*[0-9]{3})[A-Z0-9]{5}$/;
	let numPattern = /^[0-9]+$/;
	let phoneNumPattern = /^01\d{8,9}$/;
	let korEngPattern = /^[가-힣a-zA-Z]*$/;

	$("#username").on("keyup",function() {
		let username = $(this).val();

		if (!usernamePattern.test(username)) {
			$(".username").remove();
			$(this).parent().append(
					"<div class='pristine-error text-danger mt-2 username' style='margin-left: 155px;'>패턴에 맞게 입력해 주세요.</div>");
		} else {
			$(".username").remove();

		}
	});

	$("#empNm").on("keyup",function() {
		let empNm = $(this).val();

		if (!korEngPattern.test(empNm)) {
			$(".empNm").remove();
			$(this).parent().append(
							"<div class='pristine-error text-danger mt-2 empNm' style='margin-left: 155px;'>한글 또는 영문만 입력 가능합니다.</div>");
		} else {
			$(".empNm").remove();

		}
	});

	$("#empBrthdy").on("keyup", function() {
		let empBrthdy = $(this).val();

		if (!numPattern.test(empBrthdy)) {
			$(".empBrthdy").remove();
			$(this).parent().append(
							"<div class='pristine-error text-danger mt-2 empBrthdy' style='margin-left: 155px;'>숫자만 입력 가능합니다.</div>");
		} else {
			$(".empBrthdy").remove();
		}
	});

	$("#empPhoneNo").on("keyup", function() {
		let empPhoneNo = $(this).val();

		if (!phoneNumPattern.test(empPhoneNo)) {
			$(".empPhoneNo").remove();
			$(this).parent().append(
							"<div class='pristine-error text-danger mt-2 empPhoneNo' style='margin-left: 155px;'>올바른 번호를 입력해 주세요.</div>");
		} else {
			$(".empPhoneNo").remove();
		}
	});

	$("#actno").on("keyup", function() {
		let actno = $(this).val();

		if (!numPattern.test(actno)) {
			$(".actno").remove();
			$(this).parent().append(
							"<div class='pristine-error text-danger mt-2 actno' style='margin-left: 155px;'>특수문자를 제외한 숫자만 입력해 주세요.</div>");
		} else {
			$(".actno").remove();
		}
	});

	$("#jncmpYmd").on("keyup", function() {
		let jncmpYmd = $(this).val();

		if (!numPattern.test(jncmpYmd)) {
			$(".jncmpYmd").remove();
			$(this).parent().append(
							"<div class='pristine-error text-danger mt-2 jncmpYmd' style='margin-left: 155px;'>특수문자를 제외한 숫자만 입력해 주세요.</div>");
		} else {
			$(".jncmpYmd").remove();
		}
	});

	$("#superiorId").on("keyup",function() {
		let superiorId = $(this).val();

		if (!usernamePattern.test(superiorId)) {
			$(".superiorId").remove();
			$(this).parent().append(
					"<div class='pristine-error text-danger mt-2 superiorId' style='margin-left: 155px;'>패턴에 맞게 입력해 주세요.</div>");
		} else {
			$(".superiorId").remove();

		}
	});

	jQuery('#frm').submit(function(event) {
		event.preventDefault(); // 폼의 기본 동작을 막습니다.

		let isValid = true;
		if (!usernamePattern.test($("#username").val()) ||
     		!usernamePattern.test($("#superiorId").val()) ||
 			!korEngPattern.test($("#empNm").val()) ||
 			!numPattern.test($("#empBrthdy").val()) ||
 			!numPattern.test($("#actno").val()) ||
 			!numPattern.test($("#jncmpYmd").val()) ||
 			!numPattern.test($("#empPhoneNo").val())) {
 			isValid = false;
	    }

		if (!idCheck) {
			$(".username").remove();
			$("#username").parent().append(
					 "<div class='pristine-error text-danger mt-2 username' style='margin-left: 155px;'>아이디 중복체크를 해주세요.</div>");
			isValid = false;
		}

		if ($("#zip").val() == "") {
			$(".addr2").remove();
			$("#addr2").parent().append(
					 "<div class='pristine-error text-danger mt-2 addr2' style='margin-left: 155px;'>주소를 입력해 주세요.</div>");
			isValid = false;
		}

		if (!isValid) {
    	    event.preventDefault(); // 폼 제출 막기
    	} else {
    		let formData = new FormData(this);
    		jQuery.ajax({
    			url: $(this).attr('action'),
    			type: $(this).attr('method'),
    			data: formData,
    			processData: false,
    			contentType: false,
    			success: function(response) {
    				console.log(response);
    				if (response == 1) { //직원등록 성공 시
    					let data = {
        		 	 		    empPhoneNo: $("#empPhoneNo").val(),
        		 	 		    empNm: $("#empNm").val(),
        		 	 		    empId: $("#username").val(),
        		 	 		    password: $("#hiddenPassword").val(),
        		 	 	};
        				jQuery.ajax({
        		 			url : "/emp/pa/mngempacnt/registerEmp",
        		 			contentType: "application/json",
        		 			data: JSON.stringify(data),
        		 			type : "post",
        		 		 	cache : false,
        		 			beforeSend : function(xhr) {
       		 				xhr.setRequestHeader("${_csrf.headerName}",
       		 						"${_csrf.token}");
       		 				},
        		 			success : function(result) {
        		 				if (result == 1) { //문자메시지 전송 성공 시
        		 					console.log("result : " + result);
            		 				alert("직원등록 및 아이디/비밀번호 전송이 완료되었습니다.");
            		 				window.location.href = "/emp/pa/mngempacnt";
        		 				} else {
        		 					alert("직원등록 성공! 메시지 전송 실패");
        		 					window.location.href = "/emp/pa/mngempacnt";
        		 				}
        		 			}
        		 		});
    				} else {
    					console.log(response);
    					alert("직원등록 실패");
    				}
    			},
    			error: function(xhr, status, error) {
    				console.log(error);
    			}
    		});
    	}
	});


	////////////////////아이디 중복확인 //////////////////////
	$("#idchkBtn").on("click", function() {
		let empId = $("#username").val();
		console.log("empId : " + empId);

		let data = {
			"empId" : empId
		};

		if (!usernamePattern.test(empId)) {
			console.log("틀리면 여기 " + empId);
			$(".username").remove();
			$(this).parent().append(
							"<div class='pristine-error text-danger mt-2 username' style='margin-left: 155px;'>패턴에 맞게 입력해 주세요.</div>");
		} else {
			console.log("맞으면 여기 " + empId);
			jQuery.ajax({
				url : "/emp/pa/mngempacnt/empCheckId",
				contentType : "application/json;charset=utf-8",
				data : data,
				type : "get",
				dataType : "json",
				success : function(result) {
					console.log("result : " + JSON.stringify(result));
					if (result == 0) {
						$(".username").remove();
						$("#username").parent().append(
				"<div class='pristine-success text-success mt-2 username' style='margin-left: 155px;'>사용 가능한 아이디입니다.</div>");
						console.log(idCheck)
						idCheck = true;

					} else {
						$(".username").remove();
						$("#username").parent().append(
				"<div class='pristine-error text-danger mt-2 username' style='margin-left: 155px;'>사용 중인 아이디입니다.</div>");
						idCheck = false;
					}
				}
			});
		}
	});

	///// 부서 목록 DB에서 불러오기 /////
	jQuery.ajax({
        url: '/emp/pa/mngempacnt/dept',
        type: 'GET',
        dataType: 'json',
        success: function(dept) {
        	jQuery.each(dept, function(index, dept) {
        		let deptCdSelect = $('#deptCd');
                let option = $('<option>').text(dept.deptNm).val(dept.deptCd);
                deptCdSelect.append(option);
            });
        }
    });

	///// 직급 목록 DB에서 불러오기 /////
	jQuery.ajax({
        url: '/emp/pa/mngempacnt/jbgd',
        type: 'GET',
        dataType: 'json',
        success: function(jbgd) {
        	jQuery.each(jbgd, function(index, jbgd) {
        		let jbgdCdSelect = $('#jbgdCd');
                let option = $('<option>').text(jbgd.jbgdNm).val(jbgd.jbgdCd);
                jbgdCdSelect.append(option);
            });
        }
    });

	///// 은행 목록 DB에서 불러오기 /////
	jQuery.ajax({
        url: '/emp/pa/mngempacnt/bank',
        type: 'GET',
        dataType: 'json',
        success: function(banks) {
        	jQuery.each(banks, function(index, bank) {
        		let bankCdSelect = $('#bankCd');
                let option = $('<option>').text(bank.bankNm).val(bank.bankCd);
                bankCdSelect.append(option);
            });
        }
    });

	//자동완성 버튼
	$("#autoBtn").on("click", function() {
		$("#username").val("PS002");
		$("#empNm").val("안희건");
		$("#deptCd").val("DEPT01");
		$("#jbgdCd").val("JBGD05");
		$("#empBrthdy").val("19970416");
		$("#hiddenPassword").val("970416");
		$("#empPhoneNo").val("01097355770");
		$("#zip").val("34849");
		$("#addr1").val("대전 중구 동서대로 1388");
		$("#addr2").val("101동 101호");
		$("#hiddenAddr").val("34849/대전 중구 동서대로 1388/101동 101호");
		$("#empMail").val("ps002@dorandoran.com");
		$("#bankCd").val("BANK03");
		$("#actno").val("1006607164551");
		$("#jncmpYmd").val("20230804");
		$("#superiorId").val("PA001");
	});
});

////////////////이미지 미리보기 시작 ////////////////////

//이미지 파일 객체를 담을 배열
let sel_file = [];

//<input type="file" name="productImage" class="form-control" />
$("input[name='picture']").on("change",handleImgFileSelect);

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

      // 이미지 읽기
      let reader = new FileReader();
      // e : 리더가 이미지를 읽을 때 그 이벤트를 의미
      reader.onload = function(e){
         // e.target : 이미지 객체
//          let img_html = "<img src='" + e.target.result + "' style='width:50%;' />";
         // 객체.append : 누적, .html : 새로고침, innerHTML : J/S
//          $("#cardIamges").append(img_html);

         $(".myprofile").attr("src",e.target.result);
      }
      // 다음 이미지 파일(f)를 위해 reader를 초기화
      reader.readAsDataURL(f);

   }); // end forEach
}

//이미지 미리보기 끝    //////////////////


////////////주소찾기/////////////
function findAddr(){
	new daum.Postcode({
        oncomplete: function(data) {

        	console.log(data);

            var roadAddr = data.roadAddress; // 도로명 주소 변수
            var jibunAddr = data.jibunAddress; // 지번 주소 변수

            document.getElementById('zip').value = data.zonecode;
            if(roadAddr !== ''){
                document.getElementById("addr1").value = roadAddr;
            }
            else if(jibunAddr !== ''){
                document.getElementById("addr2").value = jibunAddr;
            }
        }
    }).open();
}
</script>



