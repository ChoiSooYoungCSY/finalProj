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
	color: green;
}
</style>
<!-- BEGIN: Menu -->
<div class="col-span-12 lg:col-span-3 2xl:col-span-2">
    <div class="intro-y box bg-primary p-5 mt-0 text-lg">
    	<nav class="side-nav">
		    <ul>
		       <li>
		            <a href="javascript:;" class="side-menu">
		                <div class="side-menu__icon"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="home" data-lucide="home" class="lucide lucide-home"><path d="M3 9l9-7 9 7v11a2 2 0 01-2 2H5a2 2 0 01-2-2z"></path></svg></div>
		                <div class="side-menu__title"> 관리비 조회
		                    <div class="side-menu__sub-icon"> <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="chevron-down" data-lucide="chevron-down" class="lucide lucide-chevron-down"></svg> </div>
		                </div>
		            </a>
		            <ul class="side-menu-ul" style="display: none;">
		                <li>
		                    <a href="/mem/mypg/managectbbs" class="side-menu">
		                        <div class="side-menu__icon"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="activity" data-lucide="activity" class="lucide lucide-activity"><polyline points="22 12 18 12 15 21 9 3 6 12 2 12"></polyline></svg></div>
		                        <div class="side-menu__title"> 나의 관리비</div>
		                    </a>
		                </li>
		                <li>
		                    <a href="/mem/mypg/managectbbs/comp" class="side-menu">
		                        <div class="side-menu__icon"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="activity" data-lucide="activity" class="lucide lucide-activity"><polyline points="22 12 18 12 15 21 9 3 6 12 2 12"></polyline></svg></div>
		                        <div class="side-menu__title"> 관리비 비교 </div>
		                    </a>
		                </li>
		            </ul>
		        </li>
		        <li>
		            <a href="/mem/mypg/personalInfo" class="side-menu">
		                <div class="side-menu__icon"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="box" data-lucide="box" class="lucide lucide-box"><path d="M21 16V8a2 2 0 00-1-1.73l-7-4a2 2 0 00-2 0l-7 4A2 2 0 003 8v8a2 2 0 001 1.73l7 4a2 2 0 002 0l7-4A2 2 0 0021 16z"></path><polyline points="3.27 6.96 12 12.01 20.73 6.96"></polyline><line x1="12" y1="22.08" x2="12" y2="12"></line></svg></div>
		                <div class="side-menu__title"> 개인정보 수정 </div>
		            </a>
		        </li>
		        <li>
		            <a href="/mem/mypg/myclub" class="side-menu">
		                <div class="side-menu__icon"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="box" data-lucide="box" class="lucide lucide-box"><path d="M21 16V8a2 2 0 00-1-1.73l-7-4a2 2 0 00-2 0l-7 4A2 2 0 003 8v8a2 2 0 001 1.73l7 4a2 2 0 002 0l7-4A2 2 0 0021 16z"></path><polyline points="3.27 6.96 12 12.01 20.73 6.96"></polyline><line x1="12" y1="22.08" x2="12" y2="12"></line></svg></div>
		                <div class="side-menu__title"> 나의 소모임 </div>
		            </a>
		        </li>
		        <li>
		            <a href="/mem/mypg/useInfo" class="side-menu">
		                <div class="side-menu__icon"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="box" data-lucide="box" class="lucide lucide-box"><path d="M21 16V8a2 2 0 00-1-1.73l-7-4a2 2 0 00-2 0l-7 4A2 2 0 003 8v8a2 2 0 001 1.73l7 4a2 2 0 002 0l7-4A2 2 0 0021 16z"></path><polyline points="3.27 6.96 12 12.01 20.73 6.96"></polyline><line x1="12" y1="22.08" x2="12" y2="12"></line></svg></div>
		                <div class="side-menu__title"> 공용시설 이용내역 </div>
		            </a>
		        </li>
		        <li>
		            <a href="/mem/mypg/visit" class="side-menu">
		                <div class="side-menu__icon"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="box" data-lucide="box" class="lucide lucide-box"><path d="M21 16V8a2 2 0 00-1-1.73l-7-4a2 2 0 00-2 0l-7 4A2 2 0 003 8v8a2 2 0 001 1.73l7 4a2 2 0 002 0l7-4A2 2 0 0021 16z"></path><polyline points="3.27 6.96 12 12.01 20.73 6.96"></polyline><line x1="12" y1="22.08" x2="12" y2="12"></line></svg></div>
		                <div class="side-menu__title"> 방문차량 예약내역 </div>
		            </a>
		        </li>
		        <li>
		            <a href="/mem/mypg/mypostmngbbs" class="side-menu">
		                <div class="side-menu__icon"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="box" data-lucide="box" class="lucide lucide-box"><path d="M21 16V8a2 2 0 00-1-1.73l-7-4a2 2 0 00-2 0l-7 4A2 2 0 003 8v8a2 2 0 001 1.73l7 4a2 2 0 002 0l7-4A2 2 0 0021 16z"></path><polyline points="3.27 6.96 12 12.01 20.73 6.96"></polyline><line x1="12" y1="22.08" x2="12" y2="12"></line></svg></div>
		                <div class="side-menu__title"> 게시글 관리 </div>
		            </a>
		        </li>
		        <li>
		            <a href="/mem/mypg/favoritebbs"" class="side-menu">
		                <div class="side-menu__icon"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="box" data-lucide="box" class="lucide lucide-box"><path d="M21 16V8a2 2 0 00-1-1.73l-7-4a2 2 0 00-2 0l-7 4A2 2 0 003 8v8a2 2 0 001 1.73l7 4a2 2 0 002 0l7-4A2 2 0 0021 16z"></path><polyline points="3.27 6.96 12 12.01 20.73 6.96"></polyline><line x1="12" y1="22.08" x2="12" y2="12"></line></svg></div>
		                <div class="side-menu__title"> 관심글 관리 </div>
		            </a>
		        </li>
		    </ul>
		</nav>
    </div>
</div>
<!-- END: Menu -->
<!-- BEGIN: Body -->
<sec:authorize access="hasRole('ROLE_MEMBER')">
	<div class="bdy col-span-10 bg-white rounded-md shadow-md">
		<div class="my-auto xl:bg-transparent px-5 py-8">
			<h2 class="intro-x font-bold text-3xl text-center mt-10">개인정보 수정</h2>
			<sec:authentication property="principal.userVO" var="userVO" />
			<form id="frm" name="frm" action="/mem/mypg/personalInfo/authPost"
				method="post" enctype="multipart/form-data">
				<div class="intro-x mt-8 ml-10 mt-5"
					style="float: left; width: 50%;">
					<div class="input-form mt-5">
						<label for="validation-form-1" class="form-label flex flex-col">아이디
						</label> ${userVO.memberVO.memId} <input id="hiddenInputMemId"
							type="hidden" name="memId" value="${userVO.memberVO.memId}">
						<!-- 얼굴인식 로그인 버튼 -->
						<button type="button" id="faceLoginRegisterBtn"
							style="margin-left: 100px;"
							onclick="location.href='/mem/mypg/personalInfo/faceloginRegister'">
							<span class="btn btn-primary ml-2">얼굴인식 로그인 등록</span>
						</button>
					</div>
					<div class="input-form mt-3">
						<label for="validation-form-2" class="form-label flex flex-col">비밀번호
							<span>*</span>
						</label> <input id="password" type="password" name="password"
							class="form-control" placeholder="6-20자 사이로 입력해주세요" minlength="6"
							maxlength="20" style="width: 185px;"
							value="${userVO.memberVO.password}" readonly required>
						<button type="button" id="changePasswordBtn">
							<span class="btn btn-primary ml-2">비밀번호 변경</span>
						</button>
					</div>
					<!-- 				<div class="input-form mt-3"> -->
					<!-- 					<label for="validation-form-3" class="form-label flex flex-col">비밀번호 -->
					<!-- 						확인 </label> <input id="passwordConfirm" type="password" -->
					<!-- 						name="passwordConfirm" class="form-control" -->
					<!-- 						placeholder="비밀번호와 똑같이 입력해주세요" minlength="6" maxlength="20" -->
					<%-- 						style="width: 300px;" value="${userVO.memberVO.password}" readonly required> --%>
					<!-- 				</div> -->
					<div class="input-form mt-5">
						<label for="validation-form-9" class="form-label flex flex-col">
							이름</label> ${userVO.memberVO.memNm}
					</div>
					<div class="input-form mt-5">
						<label for="validation-form-4" class="form-label flex flex-col">동/호수
						</label>
						<script>
								document.write(" " + dong + "동 " + ho + "호");
							</script>
					</div>
					<div class="input-form mt-5">
						<label for="validation-form-5" class="form-label flex flex-col">생년월일
						</label>
						<script>
								let memBrthdy = "${userVO.memberVO.memBrthdy}";
								let year = memBrthdy
										.substring(0, 4);
								let month = memBrthdy
										.substring(4, 6);
								let day = memBrthdy
										.substring(6, );
								document.write(" "+ year + "년 " + month + "월 " + day + "일" );
							</script>
					</div>
					<div class="input-form mt-5">
						<label for="validation-form-9" class="form-label flex flex-col">
							성별</label> ${userVO.memberVO.sexDstn}성
					</div>
					<div class="input-form mt-3">
						<label for="validation-form-6" class="form-label flex flex-col">핸드폰번호
							<span>*</span>
						</label> <input id="phoneNo" type="text" name="phoneNo"
							class="form-control" placeholder="${userVO.memberVO.phoneNo}"
							value="${userVO.memberVO.phoneNo}" style="width: 215px;" readonly
							required>
						<button type="button" id="changePhoneNo">
							<span class="btn btn-primary ml-2">번호변경</span>
						</button>
					</div>
					<!-- 				<div class="input-form mt-3"> -->
					<!-- 					<label for="validation-form-6" class="form-label flex flex-col"> -->
					<!-- 					</label> <input id="phoneAuthChk" type="text" name="phoneAuthChk" -->
					<!-- 						class="form-control" placeholder="인증번호를 입력해 주세요" -->
					<!-- 						style="width: 215px;" readonly> -->
					<!-- 					<button type="button" id="phoneAuthChkBtn"> -->
					<!-- 						<span class="btn btn-primary ml-2">인증확인</span> -->
					<!-- 					</button> -->
					<!-- 				</div> -->
					<div class="input-form mt-3">
						<label for="validation-form-7" class="form-label flex flex-col">전화번호</label>
						<input id="telNo" type="text" name="telNo" class="form-control"
							placeholder="${userVO.memberVO.telNo != null ? userVO.memberVO.telNo : '등록된 전화번호가 없습니다.'}" value="${userVO.memberVO.telNo}"
							style="width: 300px;">
					</div>
					<div class="input-form mt-3">
						<label for="validation-form-8" class="form-label flex flex-col">이메일
							<span>*</span>
						</label> <input id="email" type="email" name="email" class="form-control"
							value="${userVO.memberVO.email}" style="width: 300px;" required>
					</div>
					<!-- 관심사 -->
					<div class="mt-5" id="favorite" name="memIntrst">
						<label style="font-size: 15px;">관심사 <span>*</span></label>
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
						let interests = "${userVO.memberVO.memIntrst}".split(",");
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
						<div
							class="h-40 relative image-fit cursor-pointer zoom-in mx-auto">
							<img class="myprofile" alt="프로필사진"
								src="/resources/images/member/${userVO.memberVO.memImg}">
							<input id="hiddenInputMemImg" type="hidden" name="memImg"
								value="${userVO.memberVO.memImg}">
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
								value="${userVO.memberVO.familyVOList[0].familyNm}"> 나이
							<input id="familyAge" type="text"
								name="familyVOList[0].familyAge" class="form-control ml-2"
								placeholder="30" style="width: 80px;" min="0" minlength="1"
								maxlength="3"
								value="${userVO.memberVO.familyVOList[0].familyAge}">
						</div>
						<div class="mt-1" style="float: right;">
							이름 <input id="familyNm" type="text"
								name="familyVOList[1].familyNm" class="form-control ml-2 mr-5"
								placeholder="" style="width: 120px;" minlength="2"
								value="${userVO.memberVO.familyVOList[1].familyNm}"> 나이
							<input id="familyAge" type="text"
								name="familyVOList[1].familyAge" class="form-control ml-2"
								placeholder="" style="width: 80px;" min="0" minlength="1"
								maxlength="3"
								value="${userVO.memberVO.familyVOList[1].familyAge}">
						</div>
						<div class="mt-1" style="float: right;">
							이름 <input id="familyNm" type="text"
								name="familyVOList[2].familyNm" class="form-control ml-2 mr-5"
								placeholder="" style="width: 120px;" minlength="2"
								value="${userVO.memberVO.familyVOList[2].familyNm}"> 나이
							<input id="familyAge" type="text"
								name="familyVOList[2].familyAge" class="form-control ml-2"
								placeholder="" style="width: 80px;" min="0" minlength="1"
								maxlength="3"
								value="${userVO.memberVO.familyVOList[2].familyAge}">
						</div>
						<div class="mt-1" style="float: right;">
							이름 <input id="familyNm" type="text"
								name="familyVOList[3].familyNm" class="form-control ml-2 mr-5"
								placeholder="" style="width: 120px;" minlength="2"
								value="${userVO.memberVO.familyVOList[3].familyNm}"> 나이
							<input id="familyAge" type="text"
								name="familyVOList[3].familyAge" class="form-control ml-2"
								placeholder="" style="width: 80px;" min="0" minlength="1"
								maxlength="3"
								value="${userVO.memberVO.familyVOList[3].familyAge}">
						</div>
						<div class="mt-1" style="float: right;">
							이름 <input id="familyNm" type="text"
								name="familyVOList[4].familyNm" class="form-control ml-2 mr-5"
								placeholder="" style="width: 120px;" minlength="2"
								value="${userVO.memberVO.familyVOList[4].familyNm}"> 나이
							<input id="familyAge" type="text"
								name="familyVOList[4].familyAge" class="form-control ml-2"
								placeholder="" style="width: 80px;" min="0" minlength="1"
								maxlength="3"
								value="${userVO.memberVO.familyVOList[4].familyAge}">
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
						<button type="button" onclick="location.href='/mem/mypg/myhome'">
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

<script type="text/javascript" src="/resources/js/jquery-3.6.4.min.js"></script>
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
	let phoneCheck = true;
	let passwordPattern = /^(?=.*[a-zA-Z])(?=.*[!@#$%^*+=-])(?=.*[0-9]).{6,20}$/;
	let numPattern = /^[0-9]+$/;
	let phoneNumPattern = /^01\d{8,9}$/;
	let korEngPattern = /^[가-힣a-zA-Z]*$/;

	$("#password").on("keyup", function() {
		let password = $(this).val();

		if (!passwordPattern.test(password)) {
			$(".password").remove();
			$(this).parent().append(
							"<div class='pristine-error text-danger mt-2 password'>6-20자로 영문,숫자,특수문자를 포함해 주세요.</div>");
		} else {
			$(".password").remove();
		}
	});

	$("#phoneNo").on("keyup", function() {
		let phoneNo = $(this).val();

		if (!phoneNumPattern.test(phoneNo)) {
			$(".phoneNo").remove();
			$(this).parent().append(
							"<div class='pristine-error text-danger mt-2 phoneNo'>올바른 번호를 입력해 주세요.</div>");
		} else {
			$(".phoneNo").remove();
		}
	});

	$("#telNo").on("keyup", function() {
		let phone = $(this).val();

		if (!numPattern.test(phone)) {
			$(".telNo").remove();
			$(this).parent().append(
							"<div class='pristine-error text-danger mt-2 telNo'>숫자만 입력 가능합니다.</div>");
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


	///// 체크박스 체크 2개 되었는지 확인 /////
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

 	/////// 비밀번호 변경 ///////
 	$("#changePasswordBtn").on("click", function() {
		$("#password").removeAttr("readonly");
  		$(this).hide();
  		$("#password").css("width", "300px");
  		$(".passwordConfirm").remove();
  		$(this).parent().append("<div class='input-form mt-3 passwordConfirm'><label for='validation-form-3' class='form-label flex flex-col'>비밀번호 확인 </label> <input id='passwordConfirm' type='password' name='passwordConfirm' class='form-control' placeholder='비밀번호와 똑같이 입력해주세요' minlength='6' maxlength='20' style='width: 300px;' value='${userVO.memberVO.password}' required></div>");

  		$("#passwordConfirm").on("keyup", function() {
  			if ($("#password").val() != $(this).val()) {
  				$(".passwordConfirmMsg").remove();
  				$(this).parent().append(
  				"<div class='pristine-error text-danger mt-2 passwordConfirmMsg'>비밀번호가 일치하지 않습니다.</div>");
  			} else {
  				$(".passwordConfirmMsg").remove();
  			}
  		});
 	});

	/////// 핸드폰번호 변경 ////////
	$("#changePhoneNo").on("click", function() {
		$("#phoneNo").removeAttr("readonly");
		$("#phoneAuthChk").removeAttr("readonly");
		$(this).attr("id", "phoneChkBtn");
		$(this).find("span").text("인증번호");
		$("#phoneAuthChk").attr("required", "required");

		$("#phoneChkBtn").on("click", function() {
			let phoneNo = $("#phoneNo").val();
			console.log("phoneNo : " + phoneNo);
			$(".phoneAuthChk").remove();
			$(this).parent().append("<div class='input-form mt-3 phoneAuthChk'><label for='validation-form-6' class='form-label flex flex-col'></label> <input id='phoneAuthChk' type='text' name='phoneAuthChk'class='form-control' placeholder='인증번호를 입력해 주세요' style='width: 215px;' required><button type='button' id='phoneAuthChkBtn'><span class='btn btn-primary' style='margin-left: 12px;'>인증확인</span></button></div>");

			if (!phoneNumPattern.test(phoneNo)) {
				console.log("틀리면 여기 " + phoneNo);
				$(".phoneNo").remove();
				$(this).parent().append(
								"<div class='pristine-error text-danger mt-2 phoneNo' style='margin-left: 155px;'>입력을 확인해 주세요.</div>");
			} else {
				console.log("맞으면 여기 " + phoneNo);
				$(".phoneNo").remove();
				$("#phoneNo").parent().append(
					"<div class='pristine-success text-success mt-2 phoneNo' style='margin-left: 155px;'>인증번호가 발송되었습니다.</div>");
				jQuery.ajax({
					url : "/mem/phoneCheck?phone=" + phoneNo,
					type : "get",
				 	cache : false,
					success : function(result) {
						console.log("result : " + result);
						if (result == "error") {
							$(".phoneNo").remove();
							$("#phoneNo").parent().append(
						"<div class='pristine-error text-danger mt-2 phoneNo' style='margin-left: 155px;'>인증 실패!</div>");
						} else {
						console.log("result" + result)
						code = result;
						console.log("code" + code)

						}
					}
				});
				////////////////문자인증 확인 /////////////////
				$("#phoneAuthChkBtn").on("click", function(){
					console.log("여기")
					console.log(code)
					console.log($("#phoneAuthChk").val())
					if($("#phoneAuthChk").val() == code && $("#phoneAuthChk").val() != 0) {
						console.log(code)
						$(".phoneNo").remove();
			 			$("#phoneNo").parent().append(
					"<div class='pristine-success text-success mt-2 phoneNo' style='margin-left: 160px;' style='margin-left: 155px;'>인증 성공!</div>");
						$("#phoneAuthChk").attr("disabled",true);
						$("#phoneAuthChkBtn").attr("disabled",true);
						$("#phoneNo").attr("readonly",true);
						$("#phoneChkBtn").attr("disabled",true);
						phoneCheck = true;
					} else {
						console.log("??")
						$(".phoneNo").remove();
			 			$("#phoneNo").parent().append(
					"<div class='pristine-error text-danger mt-2 phoneNo' style='margin-left: 155px;'>인증 실패! 번호를 확인해 주세요.</div>");
						$(this).attr("autofocus",true);
					}
				});
			}
		});
	});


	//////// 유효성검사 통과 못하면 submit 막기 ///////
	$("#frm").on("submit", function(event){
	    	let isValid = true;

	    	if (!numPattern.test($("#phoneNo").val()) ||
	    		!numPattern.test($("#telNo").val()) ||
	    		!korEngPattern.test($(".familyNm").val()) ||
				!numPattern.test($(".familyAge").val())) {
	    		isValid = false;
	    	}

	    	if ($("#password").val() != $("#passwordConfirm").val()) {
				isValid = false;
			}

	    	if (!passwordPattern.test($("#password").val())) {
				$(".password").remove();
				$("#password").parent().append(
				"<div class='pristine-error text-danger mt-2 password'>6-20자로 영문,숫자,특수문자를 포함해 주세요.</div>");
	    	}

			let checkedCount = document.querySelectorAll(".form-check-input:checked").length;

			if (checkedCount != 2) {
				 isValid = false;
			}

			if (!phoneCheck) {
				 $(".phoneNo").remove();
				 $("#phoneNo").parent().append(
						 "<div class='pristine-error text-danger mt-2 phoneNo'>핸드폰 인증을 해주세요.</div>");
				 event.preventDefault(); // 폼 제출 막기
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
</script>


