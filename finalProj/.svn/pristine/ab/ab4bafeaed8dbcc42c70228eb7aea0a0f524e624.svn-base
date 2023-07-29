<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<style>
.form-label {
	display: inline-block;
	white-space: nowrap;
	width: 100px;
	font-size: 15px;
}
</style>
<!-- BEGIN: Body -->
<div class="bdy col-span-11 bg-white mt-10 mb-10 rounded-md shadow-md">
	<div class="my-auto px-5 py-8 w-full">
		<h2 class="intro-x font-bold text-3xl text-center"
			style="margin-top: 100px; margin-bottom: 40px;">아이디 / 비밀번호 찾기</h2>
	</div>
	<div style="width: 50%; margin-left: 25%;">
<!-- 			<div class="border border-slate-300 border-dashed rounded-md text-center" style="padding-top: 120px; padding-bottom: 120px; font-size: 20px;"> -->
<!-- 				회원님의 아이디는 <span style="color: green;">dohee</span> 입니다. -->
<!-- 			</div> -->
		<ul class="nav nav-boxed-tabs" role="tablist">
			<li id="example-3-tab" class="nav-item flex-1" role="presentation">
				<button class="nav-link w-full py-2 active" data-tw-toggle="pill"
					data-tw-target="#example-tab-3" type="button" role="tab"
					aria-controls="example-tab-3" aria-selected="true">아이디 찾기</button>
			</li>
			<li id="example-4-tab" class="nav-item flex-1" role="presentation">
				<button class="nav-link w-full py-2" data-tw-toggle="pill"
					data-tw-target="#example-tab-4" type="button" role="tab"
					aria-controls="example-tab-4" aria-selected="false">비밀번호
					찾기</button>
			</li>
		</ul>
		<div class="tab-content mt-5" style="margin-bottom: 200px;">
			<!--  아이디 찾기 -->
			<div id="example-tab-3" class="tab-pane leading-relaxed active divid" id="divid" role="tabpanel" aria-labelledby="example-3-tab">
				<div class="div50" id="div50">
					<div class="parent" style="margin-left: 55px; margin-top: 50px;" id="parent">
						<div class="input-form mt-3">
							<label for="validation-form-9" class="form-label flex flex-col">
								이름 </label> <input id="name" type="text" name="memNm" class="form-control"
								placeholder="한글, 영문자만 입력 가능합니다" style="width: 300px;" required>
						</div>
						<div class="input-form mt-3">
							<label for="validation-form-6" class="form-label flex flex-col">핸드폰번호
							</label> <input id="phoneNo" type="text" name="phoneNo"
								class="form-control" placeholder="숫자만 입력해 주세요"
								style="width: 215px;" required>
							<button type="button" id="phoneChkBtn">
								<span class="btn btn-primary ml-2">문자인증</span>
							</button>
						</div>
					</div>
				</div>
			</div>
			<!--  비밀번호 찾기 -->
			<div id="example-tab-4" class="tab-pane leading-relaxed divpw" id="divpw" role="tabpanel" aria-labelledby="example-4-tab">
				<div class="div52" id="div52">
					<div class="parent2" style="margin-left: 55px; margin-top: 50px;" id="parent2">
						<div class="input-form mt-3">
							<label for="validation-form-9" class="form-label flex flex-col">
								아이디 </label> <input id="username" type="text" name="memId"
								class="form-control" placeholder="6-12자 사이로 입력해주세요"
								style="width: 300px;" required>
						</div>
						<div class="input-form mt-3">
							<label for="validation-form-6" class="form-label flex flex-col">핸드폰번호
							</label> <input id="phoneNo2" type="text" name="phoneNo"
								class="form-control" placeholder="숫자만 입력해 주세요"
								style="width: 215px;" required>
							<button type="button" id="phoneChkBtn2">
								<span class="btn btn-primary ml-2">문자인증</span>
							</button>
						</div>
					</div>
<!-- 					<div class="border border-slate-300 border-dashed rounded-md" > -->
<!-- 						<div style="padding-top: 50px; padding-bottom: 50px;"> -->
<!-- 							<h2 class="text-center" style="font-size: 20px;">안녕하세요 <span style='color: green;'>dohee</span> 님<br>새로운 비밀번호로 변경합니다.</h2> -->
<!-- 							<div class="input-form mt-10"  style="margin-left: 55px;"> -->
<!-- 								<label for="validation-form-2" class="form-label flex flex-col">비밀번호 -->
<!-- 									</label> <input id="password" type="password" name="password" -->
<!-- 									class="form-control" placeholder="6-20자 사이로 입력해주세요" minlength="6" -->
<!-- 									maxlength="20" style="width: 300px;" required> -->
<!-- 							</div> -->
<!-- 							<div class="input-form mt-3"  style="margin-left: 55px;"> -->
<!-- 								<label for="validation-form-3" class="form-label flex flex-col">비밀번호 -->
<!-- 									확인 </label> <input id="passwordConfirm" type="password" -->
<!-- 									name="passwordConfirm" class="form-control" -->
<!-- 									placeholder="비밀번호와 똑같이 입력해주세요" minlength="6" maxlength="20" -->
<!-- 									style="width: 300px;" required> -->
<!-- 							</div> -->
<!-- 						</div> -->
<!-- 						<button class='w-full' type='button' id='changePwBtn' style="padding-left: 10px; padding-right: 10px; padding-bottom: 10px;"> -->
<!-- 						<span class='btn btn-primary w-full'>비밀번호 변경</span></button> -->
<!-- 					</div> -->
				</div>
			</div>
		</div>
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


$(function() {
	let code = "";
	let phoneCheck = false;
	let usernamePattern = /^(?=.*[a-z])[a-z0-9]{5,12}$/i;
	let passwordPattern = /^(?=.*[a-zA-Z])(?=.*[!@#$%^*+=-])(?=.*[0-9]).{6,20}$/;
	let phoneNumPattern = /^01\d{8,9}$/;
	let korEngPattern = /^[가-힣a-zA-Z]*$/;

	//////유효성 검사//////
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


	//////// 핸드폰번호 인증(아이디찾기) /////////
	$("#phoneChkBtn").on("click", function() {
		let phoneNo = $("#phoneNo").val();
		console.log("phoneNo : " + phoneNo);

		if (!phoneNumPattern.test(phoneNo)) {
			console.log("오타는 여기 " + phoneNo);
			$(".phoneNo").remove();
			$(this).parent().append(
				"<div class='pristine-error text-danger mt-2 phoneNo' style='margin-left: 105px;'>입력을 확인해 주세요.</div>");
		} else {
			console.log("제대로 쓰면 여기 " + phoneNo);
			$(".phoneAuthChk").remove();
			$("#phoneChkBtn").parent().append(
				"<div class='input-form mt-3 phoneAuthChk'><label for='validation-form-6' class='form-label flex flex-col'></label> <input id='phoneAuthChk' type='text' name='phoneAuthChk'class='form-control' placeholder='인증번호를 입력해 주세요' style='width: 215px;' required><button type='button' id='phoneAuthChkBtn'><span class='btn btn-primary' style='margin-left: 13px;'>인증확인</span></button></div>");
			$(".phoneNo").remove();
			$("#phoneNo").parent().append(
				"<div class='pristine-success text-success mt-2 phoneNo'>인증번호가 발송되었습니다. 인증번호를 입력해 주세요.</div>");
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
			////////////////문자인증 확인 + 버튼 생성////////////////
			$("#phoneAuthChkBtn").on("click", function(){
				console.log("인증확인 버튼 누름")
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
					$("#phoneAuthChkBtn").attr("disabled",true);
					phoneCheck = true;
					$("#parent").parent().append(
						"<div class='parentBtn'><button class='w-full mt-10' type='button' id='findidBtn'><span class='btn btn-primary w-full'>아이디 찾기</span></button><div>");

					$("#findidBtn").on("click", function(){
						console.log("findidBtn 누름");
						let data = {
								memNm: $("#name").val(),
							    phoneNo: $("#phoneNo").val()
							    };
						jQuery.ajax({
							url : "/mem/findId",
 							contentType : "application/json;charset=utf-8",
							data : JSON.stringify(data),
							type : "post",
							dataType : "text",
							beforeSend : function(xhr) {
								xhr.setRequestHeader("${_csrf.headerName}",
										"${_csrf.token}");
							},
							success : function(result) {
								console.log("result : " + result);
								$(".parent").remove();
								$(".parentBtn").remove();
								$("#div50").append("<div class='border border-slate-300 border-dashed rounded-md text-center' style='padding-top: 120px; padding-bottom: 120px; font-size: 20px;'>회원님의 아이디는 <span style='color: green;'>"+result+"</span> 입니다.</div>");
							},
							error : function(xhr, status, error) {
								console.log("error : " + error + ", status : " + status);
							}
						});
					});

				} else {
					console.log("??")
					$(".phoneNo").remove();
		 			$("#phoneNo").parent().append(
						"<div class='pristine-error text-danger mt-2 phoneNo' style='margin-left: 105px;'>인증 실패! 번호를 확인해 주세요.</div>");
					$(this).attr("autofocus",true);
				}
			});
		}
	});

	////////핸드폰번호 인증 (비밀번호찾기)///////// 이렇게 나누지 않으면 아이디 찾기 인증 과정이 비밀번호 찾기 창에도 뜸
	$("#phoneChkBtn2").on("click", function() {
		let phoneNo2 = $("#phoneNo2").val();
		console.log("phoneNo2 : " + phoneNo2);

		if (!phoneNumPattern.test(phoneNo2)) {
			console.log("폰번호 제대로 안쓰면 여기 " + phoneNo2);
			$(".phoneNo2").remove();
			$(this).parent().append(
				"<div class='pristine-error text-danger mt-2 phoneNo2' style='margin-left: 105px;'>입력을 확인해 주세요.</div>");
		} else {
			console.log("맞으면 여기 " + phoneNo2);
			$(".phoneAuthChk2").remove();
			$("#phoneChkBtn2").parent().append(
				"<div class='input-form mt-3 phoneAuthChk2'><label for='validation-form-6' class='form-label flex flex-col'></label> <input id='phoneAuthChk2' type='text' name='phoneAuthChk'class='form-control' placeholder='인증번호를 입력해 주세요' style='width: 215px;' required><button type='button' id='phoneAuthChkBtn2'><span class='btn btn-primary' style='margin-left: 13px;'>인증확인</span></button></div>");
			$(".phoneNo2").remove();
			$("#phoneNo2").parent().append(
				"<div class='pristine-success text-success mt-2 phoneNo2'>인증번호가 발송되었습니다. 인증번호를 입력해 주세요.</div>");
			jQuery.ajax({
				url : "phoneCheck?phone=" + phoneNo2,
				type : "get",
			 	cache : false,
				success : function(result) {
					console.log("result : " + result);
					if (result == "error") {
						$(".phoneNo2").remove();
						$("#phoneNo2").parent().append(
					"<div class='pristine-error text-danger mt-2 phoneNo2'>인증 실패!</div>");
					} else {
					console.log("result" + result)
					code = result;
					console.log("code" + code)

					}
				}
			});
			////////////////문자인증 확인 + 비밀번호 변경 버튼 생성/////////////////
			$("#phoneAuthChkBtn2").on("click", function(){
				console.log("인증확인 버튼 누름")
				console.log(code)
				console.log($("#phoneAuthChk2").val())
				if($("#phoneAuthChk2").val() == code && $("#phoneAuthChk2").val() != 0) {
					console.log(code)
					$(".phoneNo2").remove();
		 			$("#phoneNo2").parent().append(
						"<div class='pristine-success text-success mt-2 phoneNo2' style='margin-left: 160px;'>인증 성공!</div>");
					$("#phoneAuthChk2").attr("disabled",true);
					$("#phoneAuthChkBtn2").attr("disabled",true);
					$("#phoneNo2").attr("readonly",true);
					$("#phoneChkBtn2").attr("disabled",true);
					$("#phoneAuthChkBtn2").attr("disabled",true);
					phoneCheck = true;
					$("#parent2").parent().append(
						"<div class='parentBtn2'><button class='w-full mt-10' type='button' id='findpwBtn'><span class='btn btn-primary w-full'>비밀번호 찾기</span></button></div>");

					$("#findpwBtn").on("click", function(){
						console.log("findpwBtn 누름");
						let data = {
								memId: $("#username").val(),
							    phoneNo: $("#phoneNo2").val()
							    };
						jQuery.ajax({
							url : "/mem/findPassword",
 							contentType : "application/json;charset=utf-8",
							data : JSON.stringify(data),
							type : "post",
							dataType : "text",
							beforeSend : function(xhr) {
								xhr.setRequestHeader("${_csrf.headerName}",
										"${_csrf.token}");
							},
							success : function(result) {
								console.log(result)
								//비밀번호 변경 창 생성
								$(".parent2").remove();
								$(".parentBtn2").remove();
								$("#div52").append("<div class='border border-slate-300 border-dashed rounded-md'><div style='padding-top: 50px; padding-bottom: 50px;'><h2 class='text-center' style='font-size: 20px;'>안녕하세요 <span style='color: green;'>" + result + "</span> 님<br>새로운 비밀번호로 변경합니다.</h2><div class='input-form mt-10' style='margin-left: 55px;'><label for='validation-form-2' class='form-label flex flex-col'>비밀번호</label> <input id='password' type='password' name='password' class='form-control' placeholder='6-20자 사이로 입력해주세요' minlength='6' maxlength='20' style='width: 300px;' required></div><div class='input-form mt-3'  style='margin-left: 55px;'><label for='validation-form-3' class='form-label flex flex-col'>비밀번호 확인 </label> <input id='passwordConfirm' type='password' name='passwordConfirm' class='form-control' placeholder='비밀번호와 똑같이 입력해주세요' minlength='6' maxlength='20' style='width: 300px;' required></div></div><button class='w-full' type='button' id='changePwBtn' style='padding-left: 10px; padding-right: 10px; padding-bottom: 10px;'><span class='btn btn-primary w-full'>비밀번호 변경</span></button></div>");

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

								$("#changePwBtn").on("click", function(){
									console.log("changePwBtn 누름");
									if ($("#password").val() != $("#passwordConfirm").val()) {
										console.log("비밀번호랑 비밀번호 확인이 달라")
									} else {
										let changeData = {
												memId: result,
											    password: $("#password").val()
										};
										jQuery.ajax({
											url : "/mem/changePassword",
				 							contentType : "application/json;charset=utf-8",
											data : JSON.stringify(changeData),
											type : "post",
											dataType : "json",
											beforeSend : function(xhr) {
												xhr.setRequestHeader("${_csrf.headerName}",
														"${_csrf.token}");
											},
											success : function(result) {
												console.log(result)
												if (result === 1) {
													alert("비밀번호가 변경되었습니다. 새로운 비밀번호로 로그인해 주세요.");
													window.location.href = '/mem/main';
												} else {
													alert("비밀번호 변경 실패. 다시 시도해 주세요");
												}
											}
										});
									}
								});
							},
							error : function(xhr, status, error) {
								console.log("error : " + error + ", status : " + status);
							}
						});
					});

				} else {
					console.log("??")
					$(".phoneNo2").remove();
		 			$("#phoneNo2").parent().append(
						"<div class='pristine-error text-danger mt-2 phoneNo2' style='margin-left: 105px;'>인증 실패! 번호를 확인해 주세요.</div>");
					$(this).attr("autofocus",true);
				}
			});
		}
	});
});
</script>

