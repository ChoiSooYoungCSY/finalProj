<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
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
<!-- <sec:authorize access="hasAnyRole('ROLE_PA', 'ROLE_PA_PM')"> -->
	<div class="bdy col-span-10 bg-white rounded-md shadow-md">
		<div class="my-auto xl:bg-transparent px-5 py-8">
			<h2 class="intro-x font-bold text-3xl text-center mt-10">회원정보 수정</h2>
			<form id="frm" name="frm" action="/emp/pa/mngmemacnt/detailPost"
				method="post" enctype="multipart/form-data">
				<div class="intro-x mt-8 ml-10 mt-5"
					style="float: left; width: 50%;">
					<div class="input-form mt-5">
						<label for="validation-form-1" class="form-label flex flex-col">아이디
						</label> ${detailMem.memId} <input id="hiddenInputMemId"
							type="hidden" name="memId" value="${detailMem.memId}">
					</div>
					<div class="input-form mt-5">
						<label for="validation-form-1" class="form-label flex flex-col">얼굴인식 로그인 H5
						</label> ${detailMem.faceH5}
					</div>
					<div class="input-form mt-3">
						<label for="validation-form-5" class="form-label flex flex-col">계정상태
						</label> <select id="acntSttsCd" name="acntSttsCd" class="form-select"
							style="width: 215px;" aria-label="Default select example"
							required>
							<option value="" selected disabled hidden>선택</option>
						</select>
					</div>
					<div class="input-form mt-3">
						<label for="validation-form-2" class="form-label flex flex-col">비밀번호
							</label> <input id="password" type="password" name="password"
							class="form-control" placeholder="6-20자 사이로 입력해주세요" minlength="6"
							maxlength="20" style="width: 300px;" value="${detailMem.password}" readonly>
					</div>
					<div class="input-form mt-3">
						<label for="validation-form-9" class="form-label flex flex-col">
							이름 </label> <input id="memNm" type="text" name="memNm"
							class="form-control" placeholder="${detailMem.memNm}"
							style="width: 300px;" value="${detailMem.memNm}" required>
					</div>
					<div class="input-form mt-5">
					<label for="validation-form-4" class="form-label flex flex-col">동/호수
					</label>
						<script>
							//동호수 가져오기
							let hshldInfoNo = "${detailMem.hshldInfoNo}";
							let dong = hshldInfoNo.substring(0, 3);
							let ho = hshldInfoNo.substring(3);
							$('#dong').val(dong);
							$('#ho').val(ho);

							document.write(" " + dong + "동 " + ho + "호");
						</script>
					</div>
					<div class="input-form mt-3">
						<label for="validation-form-5" class="form-label flex flex-col">생년월일
						</label> <input id="age" type="text" name="memBrthdy"
							class="form-control" placeholder="${detailMem.memBrthdy}" value="${detailMem.memBrthdy}"
							style="width: 120px; margin-right: 42px;" minlength="8" maxlength="8" required>
						성별
							<select id="sexDstn" name="sexDstn" class="form-select sm:mr-2 ml-2" style="width: 80px;" aria-label="Default select example" required>
							  <option value="남" ${detailMem.sexDstn == '남' ? 'selected' : ''}>남</option>
							  <option value="여" ${detailMem.sexDstn == '여' ? 'selected' : ''}>여</option>
							</select>
					</div>
					<div class="input-form mt-3">
						<label for="validation-form-6" class="form-label flex flex-col">핸드폰번호
						</label> <input id="phoneNo" type="text" name="phoneNo"
							class="form-control" placeholder="${detailMem.phoneNo}"
							value="${detailMem.phoneNo}" style="width: 300px;" required>
					</div>
					<div class="input-form mt-3">
						<label for="validation-form-7" class="form-label flex flex-col">전화번호</label>
						<input id="telNo" type="text" name="telNo" class="form-control"
							placeholder="${detailMem.telNo != null ? detailMem.telNo : '등록된 전화번호가 없습니다.'}"  value="${detailMem.telNo}"
							style="width: 300px;">
					</div>
					<div class="input-form mt-3">
						<label for="validation-form-8" class="form-label flex flex-col">이메일
						</label> <input id="email" type="email" name="email" class="form-control"
							placeholder="${detailMem.email}" value="${detailMem.email}" style="width: 300px;" required>
					</div>
					<!-- 관심사 -->
					<div class="mt-5" id="favorite" name="memIntrst">
						<label style="font-size: 15px;">관심사 </label>
						<div class="form-check mt-2">
							<input id="checkbox-switch-1" name="memIntrst"
								class="form-check-input" type="checkbox" value="자기계발"> <label
								class="form-check-label" for="checkbox-switch-1">자기계발</label> <input
								id="checkbox-switch-2" name="memIntrst" class="form-check-input"
								type="checkbox" value="음악"> <label
								class="form-check-label" for="checkbox-switch-2">음악</label> <input
								id="checkbox-switch-3" name="memIntrst" class="form-check-input"
								type="checkbox" value="공연"> <label
								class="form-check-label" for="checkbox-switch-3">공연</label> <input
								id="checkbox-switch-4" name="memIntrst" class="form-check-input"
								type="checkbox" value="영화"> <label
								class="form-check-label" for="checkbox-switch-4">영화</label> <input
								id="checkbox-switch-5" name="memIntrst" class="form-check-input"
								type="checkbox" value="독서"> <label
								class="form-check-label" for="checkbox-switch-5">독서</label> <input
								id="checkbox-switch-6" name="memIntrst" class="form-check-input"
								type="checkbox" value="패션"> <label
								class="form-check-label" for="checkbox-switch-6">패션</label> <input
								id="checkbox-switch-7" name="memIntrst" class="form-check-input"
								type="checkbox" value="게임"> <label
								class="form-check-label" for="checkbox-switch-7">게임 </label>
						</div>
						<div class="form-check mt-2">
							<input id="checkbox-switch-8" name="memIntrst"
								class="form-check-input" type="checkbox" value="여행"><label
								class="form-check-label" for="checkbox-switch-8">여행</label> <input
								id="checkbox-switch-9" name="memIntrst" class="form-check-input"
								type="checkbox" value="요리"> <label
								class="form-check-label" for="checkbox-switch-9">요리</label> <input
								id="checkbox-switch-10" name="memIntrst"
								class="form-check-input" type="checkbox" value="스포츠"> <label
								class="form-check-label" for="checkbox-switch-10">스포츠</label> <input
								id="checkbox-switch-11" name="memIntrst"
								class="form-check-input" type="checkbox" value="등산"> <label
								class="form-check-label" for="checkbox-switch-11">등산</label> <input
								id="checkbox-switch-12" name="memIntrst"
								class="form-check-input" type="checkbox" value="사회봉사"> <label
								class="form-check-label" for="checkbox-switch-12">사회봉사</label> <input
								id="checkbox-switch-13" name="memIntrst"
								class="form-check-input" type="checkbox" value="미술"> <label
								class="form-check-label" for="checkbox-switch-13">미술</label>
						</div>
						<script>
						let interests = "${detailMem.memIntrst}".split(",");
						$('input[name="memIntrst"]').each(function() {
						    let self = $(this);

						    interests.forEach(function(interest) {
						        if (interest.trim() === self.val()) {
						            self.prop("checked", true);
						        }
						    });
						});
						</script>
						<div id="favoritedown"></div>
					</div>
				</div>
				<!-- 프로필사진 -->
				<div class="intro-x mt-8 mr-10" style="float: right; width: 40%;">
					<div
						class="border-2 border-dashed shadow-sm border-slate-200/60 rounded-md p-5"
						style="float: right; width: 200px">
						<div class="h-40 relative image-fit cursor-pointer zoom-in mx-auto">
						  <img class="myprofile" alt="프로필사진" src="/resources/images/member/${detailMem.memImg}"
						    onerror="this.onerror=null; this.src='/resources/images/member/basic.jpg';">
						  <input id="hiddenInputMemImg" type="hidden" name="memImg" value="${detailMem.memImg}">
						</div>
						<!-- 사진 등록 버튼 -->
						<div class="mx-auto cursor-pointer relative mt-5">
							<button type="button" class="w-full">
								<span class="btn btn-primary w-full">사진 변경</span>
							</button>
							<input type="file" name="picture" id="picture" value=""
								class="w-full h-full top-0 left-0 absolute opacity-0">
						</div>
					</div>
					<!-- 가족구성 -->
					<div class="w-full mt-7" style="float: right;">
						<div class="mt-1 w-full" style="text-align: right;">
							<label for="validation-form-10"
								class="form-label flex flex-col mt-1 mb-3"
								style="font-size: 15px;">가족 구성원</label>
						</div>
						<div class="mt-1" style="float: right;">
							이름 <input id="familyNm" type="text"
								name="familyVOList[0].familyNm" class="form-control ml-2 mr-5"
								placeholder="도란도란" style="width: 120px;" minlength="2"
								value="${detailMem.familyVOList[0].familyNm}"> 나이
							<input id="familyAge" type="text"
								name="familyVOList[0].familyAge" class="form-control ml-2"
								placeholder="30" style="width: 80px;" min="0" minlength="1"
								maxlength="3"
								value="${detailMem.familyVOList[0].familyAge}">
						</div>
						<div class="mt-1" style="float: right;">
							이름 <input id="familyNm" type="text"
								name="familyVOList[1].familyNm" class="form-control ml-2 mr-5"
								placeholder="" style="width: 120px;" minlength="2"
								value="${detailMem.familyVOList[1].familyNm}"> 나이
							<input id="familyAge" type="text"
								name="familyVOList[1].familyAge" class="form-control ml-2"
								placeholder="" style="width: 80px;" min="0" minlength="1"
								maxlength="3"
								value="${detailMem.familyVOList[1].familyAge}">
						</div>
						<div class="mt-1" style="float: right;">
							이름 <input id="familyNm" type="text"
								name="familyVOList[2].familyNm" class="form-control ml-2 mr-5"
								placeholder="" style="width: 120px;" minlength="2"
								value="${detailMem.familyVOList[2].familyNm}"> 나이
							<input id="familyAge" type="text"
								name="familyVOList[2].familyAge" class="form-control ml-2"
								placeholder="" style="width: 80px;" min="0" minlength="1"
								maxlength="3"
								value="${detailMem.familyVOList[2].familyAge}">
						</div>
						<div class="mt-1" style="float: right;">
							이름 <input id="familyNm" type="text"
								name="familyVOList[3].familyNm" class="form-control ml-2 mr-5"
								placeholder="" style="width: 120px;" minlength="2"
								value="${detailMem.familyVOList[3].familyNm}"> 나이
							<input id="familyAge" type="text"
								name="familyVOList[3].familyAge" class="form-control ml-2"
								placeholder="" style="width: 80px;" min="0" minlength="1"
								maxlength="3"
								value="${detailMem.familyVOList[3].familyAge}">
						</div>
						<div class="mt-1" style="float: right;">
							이름 <input id="familyNm" type="text"
								name="familyVOList[4].familyNm" class="form-control ml-2 mr-5"
								placeholder="" style="width: 120px;" minlength="2"
								value="${detailMem.familyVOList[4].familyNm}"> 나이
							<input id="familyAge" type="text"
								name="familyVOList[4].familyAge" class="form-control ml-2"
								placeholder="" style="width: 80px;" min="0" minlength="1"
								maxlength="3"
								value="${detailMem.familyVOList[4].familyAge}">
						</div>
					</div>
					<div id="familydown"></div>
				</div>
				<!-- 회원정보수정 버튼 -->
				<div class="intro-x w-full mt-10 text-center mb-10"
					style="float: left;">
					<div class="d-flex justify-center mt-5 mb-5">
						<button type="submit" id="submitbtn">
							<span
								class="btn btn-primary py-3 px-4 w-full xl:w-32 mr-3 align-top">저장</span>
						</button>
						<button type="button" onClick="history.go(-1)">
							<span
								class="btn btn-outline-secondary py-3 px-4 w-full xl:w-32 mt-3 xl:mt-0 align-top">취소</span>
						</button>
					</div>
				</div>
				<sec:csrfInput />
			</form>
		</div>
	</div>
<!-- </sec:authorize> -->
<!-- END: Body -->
<script	src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<!-- <script type="text/javascript" src="/resources/js/jquery-3.6.4.min.js"></script> -->
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
	///// 계정 상태 DB에서 불러오고 선택 /////
	jQuery.ajax({
		url: '/emp/pa/mngempacnt/acntStts',
        type: 'GET',
        dataType: 'json',
        success: function(acntStts) {
        	console.log(acntStts)
        	let acntSttsCdSelect = $('#acntSttsCd');
        	jQuery.each(acntStts, function(index, acntStts) {
        		let option = $('<option>').text(acntStts.acntSttsNm).val(acntStts.acntSttsCd);

        		if (acntStts.acntSttsCd === "${detailMem.acntSttsCd}") {
        			option.attr("selected", "selected");
        		}
        		acntSttsCdSelect.append(option);
        	});
        }
    });
});

$(function() {
	let numPattern = /^[0-9]+$/;
	let phoneNumPattern = /^01\d{8,9}$/;
	let korEngPattern = /^[가-힣a-zA-Z]*$/;

	$("#memNm").on("keyup",function() {
		let empNm = $(this).val();

		if (!korEngPattern.test(empNm)) {
			$(".empNm").remove();
			$(this).parent().append(
							"<div class='pristine-error text-danger mt-2 empNm' style='margin-left: 155px;'>한글 또는 영문만 입력 가능합니다.</div>");
		} else {
			$(".empNm").remove();

		}
	});


	$("#memBrthdy").on("keyup", function() {
		let memBrthdy = $(this).val();

		if (!numPattern.test(memBrthdy)) {
			$(".memBrthdy").remove();
			$(this).parent().append(
							"<div class='pristine-error text-danger mt-2 memBrthdy' style='margin-left: 155px;'>숫자만 입력 가능합니다.</div>");
		} else {
			$(".memBrthdy").remove();
		}
	});

	$("#phoneNo").on("keyup", function() {
		let phoneNo = $(this).val();

		if (!phoneNumPattern.test(phoneNo)) {
			$(".phoneNo").remove();
			$(this).parent().append(
							"<div class='pristine-error text-danger mt-2 phoneNo' style='margin-left: 155px;'>올바른 번호를 입력해 주세요.</div>");
		} else {
			$(".phoneNo").remove();
		}
	});

	$("#telNo").on("keyup", function() {
		let telNo = $(this).val();

		if (!numPattern.test(telNo)) {
			$(".telNo").remove();
			$(this).parent().append(
							"<div class='pristine-error text-danger mt-2 telNo' style='margin-left: 155px;'>올바른 번호를 입력해 주세요.</div>");
		} else {
			$(".telNo").remove();
		}
	});

	$("#familyNm").on("keyup", function() {
		let familyNm = $(this).val();
		console.log($(this).val())

		let korEngPattern = /^[가-힣a-zA-Z]*$/;
		if (!korEngPattern.test(familyNm)) {
			$(".familydown").remove();
			$("#familydown").parent().append(
							"<div class='pristine-error text-danger mt-2 familydown' style='float: right;'>입력 사항을 확인해 주세요.</div>");
		} else {
			$(".familydown").remove();
		}
	});

	$("#familyAge").on("keyup", function() {
		let familyAge = $(this).val();
		console.log($(this).val())

		let numPattern = /^[0-9]+$/;
		if (!numPattern.test(familyAge)) {
			$(".familydown").remove();
			$("#familydown").parent().append(
							"<div class='pristine-error text-danger mt-2 familydown' style='float: right;'>숫자만 입력 가능합니다.</div>");
		} else {
			$(".familydown").remove();
		}
	});

	let checkboxes = document.querySelectorAll('.form-check-input');
	let favorite = document.getElementById('favorite');

	checkboxes.forEach(function (checkbox) {
		checkbox.addEventListener('change', function () {
			let checkedCount = document.querySelectorAll('.form-check-input:checked').length;

	        if (checkedCount > 2) {
	        	this.checked = false;
	        } else if (checkedCount == 2) {
	        	$(".favoritedown").remove();
				console.log("2다")
	        } else {
	          	$(".favoritedown").remove();
	          	$("#favoritedown").parent().append(
					"<div class='pristine-error text-danger mt-2 favoritedown'>필수로 2개의 항목을 선택해야 합니다.</div>");
	        }
	    });
	});


	////////유효성검사 통과 못하면 submit 막기 ///////
	$("#frm").on("submit", function(event){
		let isValid = true;

		if (!korEngPattern.test($("#memNm").val()) ||
 			!numPattern.test($("#memBrthdy").val()) ||
 			!phoneNumPattern.test($("#phoneNo").val()) ||
 			!numPattern.test($("#telNo").val()) ||
			!korEngPattern.test($(".familyNm").val()) ||
			!numPattern.test($(".familyAge").val())) {
 			isValid = false;
	    }

		let checkboxes = document.querySelectorAll(".form-check-input");
		let favorite = document.getElementById("favorite");
		let checkedCount = document.querySelectorAll(
		    ".form-check-input:checked"
		).length;

		if (checkedCount === 2) {
			 isValid = true;
		}

		if (!isValid) {
    	    event.preventDefault(); // 폼 제출 막기
		}
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


