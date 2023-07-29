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
<!-- BEGIN: Body -->
<div class="bdy col-span-11 bg-white mt-10 mb-10 rounded-md shadow-md">
	<div class="my-auto px-5 py-8 rounded-md w-full">
		<button type="button" id="autoBtn" class="mr-10" style="float: right; width: 80px">
				<span class="btn btn-primary w-full">자동완성</span>
		</button>
		<h2 class="intro-x font-bold text-3xl text-center mt-10">회원가입</h2>
		<form id="frm" name="frm" action="/mem/signUpPost" method="post" enctype="multipart/form-data">
			<div class="intro-x mt-8 ml-10 mt-5" style="float: left; width: 45%;">
				<div>
					<span>*</span> 는 필수 입력 사항입니다.
				</div>
				<div class="input-form mt-5">
					<label for="validation-form-1" class="form-label flex flex-col">아이디
						<span>*</span>
					</label> <input id="username" type="text" name="memId"
						class="form-control" placeholder="6-12자 사이로 입력해주세요" minlength="6"
						maxlength="12" style="width: 215px;" required>
					<button type="button" id="idchkBtn">
						<span class="btn btn-primary ml-2">중복확인</span>
					</button>
				</div>
				<div class="input-form mt-3">
					<label for="validation-form-2" class="form-label flex flex-col">비밀번호
						<span>*</span></label> <input id="password" type="password" name="password"
						class="form-control" placeholder="6-20자 사이로 입력해주세요" minlength="6"
						maxlength="20" style="width: 300px;" required>
				</div>
				<div class="input-form mt-3">
					<label for="validation-form-3" class="form-label flex flex-col">비밀번호
						확인 </label> <input id="passwordConfirm" type="password"
						name="passwordConfirm" class="form-control"
						placeholder="비밀번호와 똑같이 입력해주세요" minlength="6" maxlength="20"
						style="width: 300px;" required>
				</div>
				<div class="input-form mt-3">
					<label for="validation-form-9" class="form-label flex flex-col">
						이름 <span>*</span></label> <input id="name" type="text" name="memNm"
						class="form-control" placeholder="한글, 영문자만 입력 가능합니다" style="width: 300px;">
				</div>
				<div class="input-form mt-3">
					<label for="validation-form-4" class="form-label flex flex-col">동/호수
						<span>*</span>
					</label> <input id="dong" type="text" name="dong"
						class="form-control mr-1" placeholder="101" style="width: 80px;"
						minlength="3" required> 동 <input id="ho"
						type="text" name="ho" class="form-control ml-5 mr-1"
						placeholder="101" style="width: 80px;" minlength="3" maxlength="4"
						required> 호
						<input id="hiddenDonghoInput" type="hidden" name="hshldInfoNo">
						<script>
							function combineInputs() {
							    let dongValue = $("#dong").val();
							    let hoValue = $("#ho").val();
							    let combinedValue = dongValue + hoValue;
							    $("#hiddenDonghoInput").val(combinedValue);
							}

							$("#dong").on("input", combineInputs);
							$("#ho").on("input", combineInputs);
						</script>
				</div>
				<div class="input-form mt-3">
					<label for="validation-form-5" class="form-label flex flex-col">생년월일
						<span>*</span>
					</label> <input id="age" type="text" name="memBrthdy"
						class="form-control" placeholder="19801010"
						style="width: 120px; margin-right: 42px;" minlength="8" maxlength="8" required>
					성별 <span>*</span>
						<select id="sexDstn" name="sexDstn" class="form-select sm:mr-2 ml-2" style="width: 80px;"aria-label="Default select example" required>
        				<option>남</option><option>여</option></select>
				</div>
				<div class="input-form mt-3">
					<label for="validation-form-6" class="form-label flex flex-col">핸드폰번호
						<span>*</span>
					</label> <input id="phoneNo" type="text" name="phoneNo"
						class="form-control" placeholder="숫자만 입력해 주세요"
						style="width: 215px;" required>
					<button type="button" id="phoneChkBtn">
						<span class="btn btn-primary ml-2">문자인증</span>
					</button>
				</div>
				<div class="input-form mt-3">
					<label for="validation-form-7" class="form-label flex flex-col">전화번호</label>
					<input id="telNo" type="text" name="telNo"
						class="form-control" placeholder="하이픈(-)을 제외하고 숫자만 입력해 주세요"
						style="width: 300px;">
				</div>
				<div class="input-form mt-3">
					<label for="validation-form-8" class="form-label flex flex-col">이메일
						<span>*</span>
					</label> <input id="email" type="email" name="email"
						class="form-control" placeholder="example@gmail.com"
						style="width: 300px;" required>
				</div>
				<!-- 관심사 -->
				<div class="mt-5" id="favorite" name="memIntrst">
					<label style="font-size: 15px;">관심사 <span>*</span></label>
					<div class="form-check mt-2">
						<input id="checkbox-switch-1" name="memIntrst" class="form-check-input"
							type="checkbox" value="자기계발"> <label class="form-check-label"
							for="checkbox-switch-1">자기계발</label> <input
							id="checkbox-switch-2" name="memIntrst" class="form-check-input" type="checkbox"
							value="음악"> <label class="form-check-label"
							for="checkbox-switch-2">음악</label> <input id="checkbox-switch-3" name="memIntrst"
							class="form-check-input" type="checkbox" value="공연"> <label
							class="form-check-label" for="checkbox-switch-3">공연</label> <input
							id="checkbox-switch-4" name="memIntrst" class="form-check-input" type="checkbox"
							value="영화"> <label class="form-check-label"
							for="checkbox-switch-4">영화</label> <input id="checkbox-switch-5" name="memIntrst"
							class="form-check-input" type="checkbox" value="독서"> <label
							class="form-check-label" for="checkbox-switch-5">독서</label> <input
							id="checkbox-switch-6" name="memIntrst" class="form-check-input" type="checkbox"
							value="패션"> <label class="form-check-label"
							for="checkbox-switch-6">패션</label> <input id="checkbox-switch-7" name="memIntrst"
							class="form-check-input" type="checkbox" value="게임"> <label
							class="form-check-label" for="checkbox-switch-7">게임
							</label></div><div class="form-check mt-2"><input
							id="checkbox-switch-8" name="memIntrst" class="form-check-input" type="checkbox"
							value="여행"><label class="form-check-label"
							for="checkbox-switch-8">여행</label> <input id="checkbox-switch-9" name="memIntrst"
							class="form-check-input" type="checkbox" value="요리"> <label
							class="form-check-label" for="checkbox-switch-9">요리</label> <input
							id="checkbox-switch-10" name="memIntrst"  class="form-check-input" type="checkbox"
							value="스포츠"> <label class="form-check-label"
							for="checkbox-switch-10">스포츠</label> <input
							id="checkbox-switch-11" name="memIntrst"  class="form-check-input" type="checkbox"
							value="등산"> <label class="form-check-label"
							for="checkbox-switch-11">등산</label> <input
							id="checkbox-switch-12" name="memIntrst"  class="form-check-input" type="checkbox"
							value="사회봉사"> <label class="form-check-label"
							for="checkbox-switch-12">사회봉사</label> <input
							id="checkbox-switch-13" name="memIntrst" class="form-check-input" type="checkbox"
							value="미술"> <label class="form-check-label"
							for="checkbox-switch-13">미술</label>
					</div>
					<div id="favoritedown"></div>
				</div>
			</div>
			<!-- 프로필사진 -->
			<div class="intro-x mt-8 mr-10" style="float: right; width: 45%;">
				<div
					class="border-2 border-dashed shadow-sm border-slate-200/60 rounded-md p-5"
					style="float: right; width: 200px">
					<div class="h-40 relative image-fit cursor-pointer zoom-in mx-auto">
						<img class="myprofile" name="memImg" alt="Midone - HTML Admin Template"
							src="/resources/images/member/basic.jpg">
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
				<!-- 가족구성 -->
				<div class="w-full mt-7" style="float: right;">
					<div class="mt-1 w-full" style="text-align: right;"><label for="validation-form-10" class="form-label flex flex-col mt-1 mb-3" style="font-size: 15px;">가족 구성원</label></div>
					<div class="mt-1" style="float: right;">이름 <input id="familyNm" type="text" name="familyVOList[0].familyNm"
						class="form-control ml-2 mr-5" placeholder="도란도란" style="width: 120px;"
						minlength="2"> 나이 <input id="familyAge"
						type="text" name="familyVOList[0].familyAge" class="form-control ml-2"
						placeholder="30" style="width: 80px;" min="0" minlength="1" maxlength="3"
						></div>
					<div class="mt-1" style="float: right;">이름 <input id="familyNm" type="text" name="familyVOList[1].familyNm"
						class="form-control ml-2 mr-5" placeholder="" style="width: 120px;"
						minlength="2"> 나이 <input id="familyAge"
						type="text" name="familyVOList[1].familyAge" class="form-control ml-2"
						placeholder="" style="width: 80px;" min="0" minlength="1" maxlength="3"
						></div>
					<div class="mt-1" style="float: right;">이름 <input id="familyNm" type="text" name="familyVOList[2].familyNm"
						class="form-control ml-2 mr-5" placeholder="" style="width: 120px;"
						minlength="2"> 나이 <input id="familyAge"
						type="text" name="familyVOList[2].familyAge" class="form-control ml-2"
						placeholder="" style="width: 80px;" min="0" minlength="1" maxlength="3"
						></div>
					<div class="mt-1" style="float: right;">이름 <input id="familyNm" type="text" name="familyVOList[3].familyNm"
						class="form-control ml-2 mr-5" placeholder="" style="width: 120px;"
						minlength="2"> 나이 <input id="familyAge"
						type="text" name="familyVOList[3].familyAge" class="form-control ml-2"
						placeholder="" style="width: 80px;" min="0" minlength="1" maxlength="3"
						></div>
					<div class="mt-1" style="float: right;">이름 <input id="familyNm" type="text" name="familyVOList[4].familyNm"
						class="form-control ml-2 mr-5" placeholder="" style="width: 120px;"
						minlength="2"> 나이 <input id="familyAge"
						type="text" name="familyVOList[4].familyAge" class="form-control ml-2"
						placeholder="" style="width: 80px;" min="0" minlength="1" maxlength="3"
						></div>
				</div>
				<div id="familydown"></div>
			</div>
			<!-- 회원가입 버튼 -->
			<div class="intro-x w-full mt-10 text-center mb-10" style="float: left;">
				<div class="d-flex justify-center mt-5 mb-5">
					<button type="submit" id="submitbtn">
						<span
							class="btn btn-primary py-3 px-4 w-full xl:mr-3 xl:w-32 mt-3 xl:mt-0 align-top">회원가입</span>
					</button>
					<button type="button" onclick="location.href='/mem/main'">
						<span class="btn btn-outline-secondary py-3 px-4 w-full xl:w-32 align-top">돌아가기</span>
					</button>
				</div>
			</div>
			<sec:csrfInput />
		</form>
	</div>
</div>
<!-- END: Body -->

<!-- <script type="text/javascript" src="/resources/js/jquery-3.6.4.min.js"></script> -->
<script type="text/javascript">
$(function() {
	$("#main_menu").html("마이페이지");
	$("#sub_menu").html("개인정보 수정");

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
////////////////////////////////////유효성 확인/////////////////////////////////////////////
$(function() {
	let code = "";
	let idCheck = false;
	let phoneCheck = false;
	let usernamePattern = /^(?=.*[a-z])[a-z0-9]{6,12}$/i;
	let passwordPattern = /^(?=.*[a-zA-Z])(?=.*[!@#$%^*+=-])(?=.*[0-9]).{6,20}$/;
	let numPattern = /^[0-9]+$/;
	let phoneNumPattern = /^01\d{8,9}$/;
	let korEngPattern = /^[가-힣a-zA-Z]*$/;


	$("#username").on("keyup",function() {
		let username = $(this).val();

		if (!usernamePattern.test(username)) {
			$(".username").remove();
			$(this).parent().append(
					"<div class='pristine-error text-danger mt-2 username'>6-12자의 영문 소문자 또는 영문 소문자+숫자만 입력 가능합니다.</div>");
		} else {
			$(".username").remove();

		}
	});


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

	$("#passwordConfirm").on("keyup", function() {
		$(".passwordConfirm").remove();

		if ($("#password").val() != $(this).val()) {
			$(this).parent().append(
							"<div class='pristine-error text-danger mt-2 passwordConfirm'>비밀번호가 일치하지 않습니다.</div>");
		} else {
			$(".passwordConfirm").remove();
		}
	});

	$("#name").on("keyup",function() {
		let name = $(this).val();

		if (!korEngPattern.test(name)) {
			$(".name").remove();
			$(this).parent().append(
							"<div class='pristine-error text-danger mt-2 name'>한글 또는 영문만 입력 가능합니다.</div>");
		} else {
			$(".name").remove();

		}
	});

	$("#dong").on("keyup", function() {
		let dong = $(this).val();

		if (!numPattern.test(dong)) {
			$(".dong").remove();
			$(".ho").remove();
			$(this).parent().append(
							"<div class='pristine-error text-danger mt-2 dong'>숫자만 입력 가능합니다.</div>");
		} else {
			$(".dong").remove();
		}
	});

	$("#ho").on("keyup", function() {
		let ho = $(this).val();

		if (!numPattern.test(ho)) {
			$(".ho").remove();
			$(".dong").remove();
			$(this).parent().append(
							"<div class='pristine-error text-danger mt-2 ho'>숫자만 입력 가능합니다.</div>");
		} else {
			$(".ho").remove();
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

	$("#age").on("keyup", function() {
		let age = $(this).val();

		if (!numPattern.test(age)) {
			$(".age").remove();
			$(this).parent().append(
							"<div class='pristine-error text-danger mt-2 age'>숫자만 입력 가능합니다.</div>");
		} else {
			$(".age").remove();
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

    ////////////// 유효성검사 통과 못하면 submit 막기 ///////////////
  	$("#frm").on("submit", function(event){
  	    	let isValid = true;

		if (!usernamePattern.test($("#username").val()) ||
			 !passwordPattern.test($("#password").val()) ||
			 !korEngPattern.test($("#name").val()) ||
			 !numPattern.test($("#dong").val()) ||
			 !numPattern.test($("#ho").val()) ||
			 !numPattern.test($("#age").val()) ||
			 !phoneNumPattern.test($("#phoneNo").val()) ||
			 !numPattern.test($("#telNo").val()) ||
			 !korEngPattern.test($(".familyNm").val()) ||
			 !numPattern.test($(".familyAge").val())) {
			 isValid = false;
		}

		if ($("#password").val() != $("#passwordConfirm").val()) {
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


		if (!phoneCheck) {
			 $(".phoneNo").remove();
			 $("#phoneNo").parent().append(
					 "<div class='pristine-error text-danger mt-2 phoneNo'>핸드폰 인증을 해주세요.</div>");
			 event.preventDefault(); // 폼 제출 막기
		}

		if (!idCheck) {
			 $(".username").remove();
			 $("#username").parent().append(
					 "<div class='pristine-error text-danger mt-2 username'>아이디 중복체크를 해주세요.</div>");
			 event.preventDefault(); // 폼 제출 막기
		}

    	if (!isValid) {
    		$(".favoritedown").remove();
			$("#favoritedown").parent().append(
		 "<div class='pristine-error text-danger mt-2 favoritedown'>필수입력항목에 오류가 있거나 누락되었습니다. 다시 확인해 주세요.</div>");
    	    event.preventDefault(); // 폼 제출 막기
    	}



  	});

	////////////////////아이디 중복확인 //////////////////////
	$("#idchkBtn").on("click", function() {
		let memId = $("#username").val();
		console.log("memId : " + memId);

		let data = {
			"memId" : memId
		};

		if (!usernamePattern.test(memId)) {
			console.log("틀리면 여기 " + memId);
			$(".username").remove();
			$(this).parent().append(
							"<div class='pristine-error text-danger mt-2 username'>6-12자의 영문 소문자 또는 영문 소문자+숫자만 입력 가능합니다.</div>");
		} else {
			console.log("맞으면 여기 " + memId);
			jQuery.ajax({
				url : "/mem/memCheckId",
				contentType : "application/json;charset=utf-8",
				data : data,
				type : "get",
				dataType : "json",
				success : function(result) {
					console.log("result : " + JSON.stringify(result));
					if (result == 0) {
						$(".username").remove();
						$("#username").parent().append(
				"<div class='pristine-success text-success mt-2 username'>사용 가능한 아이디입니다.</div>");
						console.log(idCheck)
						idCheck = true;

					} else {
						$(".username").remove();
						$("#username").parent().append(
				"<div class='pristine-error text-danger mt-2 username'>사용 중인 아이디입니다.</div>");
						idCheck = false;
					}
				}
			});
		}
	});

	////////핸드폰번호 인증 /////////
	$("#phoneChkBtn").on("click", function() {
			let phoneNo = $("#phoneNo").val();
			console.log("phoneNo : " + phoneNo);

			if (!phoneNumPattern.test(phoneNo)) {
				console.log("틀리면 여기 " + phoneNo);
				$(".phoneNo").remove();
				$(this).parent().append(
								"<div class='pristine-error text-danger mt-2 phoneNo' style='margin-left: 155px;'>입력을 확인해 주세요.</div>");
			} else {
				console.log("맞으면 여기 " + phoneNo);
				$(".phoneAuthChk").remove();
				$("#phoneChkBtn").parent().append("<div class='input-form mt-3 phoneAuthChk'><label for='validation-form-6' class='form-label flex flex-col'></label> <input id='phoneAuthChk' type='text' name='phoneAuthChk'class='form-control' placeholder='인증번호를 입력해 주세요' style='width: 215px;' required><button type='button' id='phoneAuthChkBtn'><span class='btn btn-primary' style='margin-left: 13px;'>인증확인</span></button></div>");
				$(".phoneNo").remove();
				$("#phoneNo").parent().append(
					"<div class='pristine-success text-success mt-2 phoneNo' style='margin-left: 155px;'>인증번호가 발송되었습니다.</div>");
				jQuery.ajax({
					url : "phoneCheck?phone=" + phoneNo,
					type : "get",
				 	cache : false,
					success : function(result) {
						console.log("result : " + result);
						if (result == "error") {
							$(".phoneNo").remove();
							$("#phoneNo").parent().append(
						"<div class='pristine-error text-danger mt-2 phoneNo'>인증 실패!</div>");
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
					"<div class='pristine-success text-success mt-2 phoneNo' style='margin-left: 160px;'>인증 성공!</div>");
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

	//자동완성 버튼
	$("#autoBtn").on("click", function() {
		$("#username").val("ddit01");
		$("#password").val("ddit!1");
		$("#passwordConfirm").val("ddit!1");
		$("#name").val("안희건");
		$("#dong").val("101");
		$("#ho").val("102");
		$("#age").val("19970416");
		$("#hiddenDonghoInput").val("101102");
		$("#phoneNo").val("01097355770");
		$("#email").val("ddit@ddit.com");
		$("input[name='familyVOList[0].familyNm']").val("안유진");
	    $("input[name='familyVOList[0].familyAge']").val("21");
	    jQuery("#favorite input[value='자기계발'], #favorite input[value='공연']").prop("checked", true);
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
//	          let img_html = "<img src='" + e.target.result + "' style='width:50%;' />";
	         // 객체.append : 누적, .html : 새로고침, innerHTML : J/S
//	          $("#cardIamges").append(img_html);

	         $(".myprofile").attr("src",e.target.result);
	      }
	      // 다음 이미지 파일(f)를 위해 reader를 초기화
	      reader.readAsDataURL(f);

	   }); // end forEach
	}

	//이미지 미리보기 끝    //////////////////
</script>


