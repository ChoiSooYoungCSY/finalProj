<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<script type="text/javascript" src="/resources/ckeditor/ckeditor.js"></script>


<div class="col-span-12 lg:col-span-3 2xl:col-span-2">
	<!-- BEGIN: Menu -->
	<div class="intro-y box bg-primary p-4 mt-0 text-lg"
		style="height: 1210px;">
		<a type="button" href="/emp/mail/inbox/writeEmail"
			class="btn text-slate-600 dark:text-slate-300 w-full bg-white dark:bg-darkmode-300 dark:border-darkmode-300 mt-1">
			<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
				viewBox="0 0 24 24" fill="none" stroke="currentColor"
				stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
				icon-name="edit-3" class="lucide lucide-edit-3 w-5 h-5 mr-2"
				data-lucide="edit-3">
				<path d="M12 20h9"></path>
				<path d="M16.5 3.5a2.121 2.121 0 013 3L7 19l-4 1 1-4L16.5 3.5z"></path></svg>
			&nbsp;메일 쓰기
		</a>
		<hr style="width: 100%; margin-top: 7%; margin-bottom: 7%" />
		<nav class="side-nav">
			<ul>
				<li><a href="/emp/mail/inbox" class="side-menu">
						<div class="side-menu__icon">
							<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
								viewBox="0 0 24 24" fill="none" stroke="currentColor"
								stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
								icon-name="mail" data-lucide="mail" class="lucide lucide-home">
								<path d="M3 9l9-7 9 7v11a2 2 0 01-2 2H5a2 2 0 01-2-2z"></path></svg>
						</div>
						<div class="side-menu__title">받은 메일함</div>
				</a></li>
				<li><a href="/emp/mail/self" class="side-menu">
						<div class="side-menu__icon">
							<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
								viewBox="0 0 24 24" fill="none" stroke="currentColor"
								stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
								icon-name="inbox" data-lucide="inbox" class="lucide lucide-box">
								<path
									d="M21 16V8a2 2 0 00-1-1.73l-7-4a2 2 0 00-2 0l-7 4A2 2 0 003 8v8a2 2 0 001 1.73l7 4a2 2 0 002 0l7-4A2 2 0 0021 16z"></path>
								<polyline points="3.27 6.96 12 12.01 20.73 6.96"></polyline>
								<line x1="12" y1="22.08" x2="12" y2="12"></line></svg>
						</div>
						<div class="side-menu__title">내게 쓴 메일함</div>
				</a></li>
				<hr style="width: 95%; margin-top: 7%; margin-bottom: 7%" />
				<li><a href="/emp/mail/send" class="side-menu">
						<div class="side-menu__icon">
							<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
								viewBox="0 0 24 24" fill="none" stroke="currentColor"
								stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
								icon-name="send" data-lucide="send" class="lucide lucide-box">
								<path
									d="M21 16V8a2 2 0 00-1-1.73l-7-4a2 2 0 00-2 0l-7 4A2 2 0 003 8v8a2 2 0 001 1.73l7 4a2 2 0 002 0l7-4A2 2 0 0021 16z"></path>
								<polyline points="3.27 6.96 12 12.01 20.73 6.96"></polyline>
								<line x1="12" y1="22.08" x2="12" y2="12"></line></svg>
						</div>
						<div class="side-menu__title">보낸 메일함</div>
				</a></li>
				<li><a href="/emp/mail/favorite" class="side-menu">
						<div class="side-menu__icon">

							<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
								viewBox="0 0 24 24" fill="none" stroke="currentColor"
								stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
								icon-name="star" data-lucide="star" class="lucide lucide-box"  >
								<path
									d="M21 16V8a2 2 0 00-1-1.73l-7-4a2 2 0 00-2 0l-7 4A2 2 0 003 8v8a2 2 0 001 1.73l7 4a2 2 0 002 0l7-4A2 2 0 0021 16z"></path>
								<polyline points="3.27 6.96 12 12.01 20.73 6.96"></polyline>
								<line x1="12" y1="22.08" x2="12" y2="12"></line></svg>
						</div>
						<div class="side-menu__title">즐겨찾기</div>
				</a></li>
				<li><a href="/emp/mail/imsi" class="side-menu">
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
						<div class="side-menu__title">임시보관함</div>
				</a></li>
				<hr style="width: 95%; margin-top: 7%; margin-bottom: 7%" />
				<li><a href="/emp/mail/trash" class="side-menu">
						<div class="side-menu__icon">
							<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
								viewBox="0 0 24 24" fill="none" stroke="currentColor"
								stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
								icon-name="trash" data-lucide="trash" class="lucide lucide-box">
								<path
									d="M21 16V8a2 2 0 00-1-1.73l-7-4a2 2 0 00-2 0l-7 4A2 2 0 003 8v8a2 2 0 001 1.73l7 4a2 2 0 002 0l7-4A2 2 0 0021 16z"></path>
								<polyline points="3.27 6.96 12 12.01 20.73 6.96"></polyline>
								<line x1="12" y1="22.08" x2="12" y2="12"></line></svg>
						</div>
						<div class="side-menu__title">휴지통</div>
				</a></li>
			</ul>
		</nav>
	</div>
	<!-- END: Menu -->
</div>
<!-- BEGIN: Body -->
<div class="bdy col-span-12 lg:col-span-9 2xl:col-span-10">
	<!-- BEGIN: Inbox Filter -->
	${emailVO}

	<form
		action=""
		method="post" enctype="multipart/form-data"
		id="emailForm">
		<sec:authentication property="principal.userVO" var="userVO" />
		<input type="hidden" id="dsptchEml" name="dsptchEml"
			value="${userVO.empVO.empMail}" /> <input type="hidden"
			id="frstWrterId" name="frstWrterId" value="${userVO.empVO.empId}" />
		<input  type="hidden" id="sndptySttsCd" name="sndptySttsCd"  />
		<input  type="hidden" id="rcvrSttsCd" name="rcvrSttsCd"  />
		<input type="hidden" id="emlId" name="emlId" value="${not empty emailVO ? emailVO.emlId : ''}" />
		<div class="mail-mail-intro-y flex flex-col-reverse sm:flex-row items-center">
			<div class="w-full sm:w-auto relative mr-auto mt-3 sm:mt-0">
				<a href="#" class="btn btn-primary w-30" id="sendEmailBtn"> <svg
						xmlns="http://www.w3.org/2000/svg" width="24" height="24"
						viewBox="0 0 24 24" fill="none" stroke="currentColor"
						stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
						icon-name="send" data-lucide="send"
						class="lucide lucide-send w-4 h-4 mr-2">
					<polyline points="22 12 18 12 15 21 9 3 6 12 2 12"></polyline></svg> 메일
					보내기
				</a> <a class="btn btn-secondary w-30" id="saveEmail"> <svg
						xmlns="http://www.w3.org/2000/svg" width="24" height="24"
						viewBox="0 0 24 24" fill="none" stroke="currentColor"
						stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
						icon-name="box" data-lucide="box"
						class="lucide lucide-box w-4 h-4 mr-2">
					<line x1="22" y1="12" x2="2" y2="12"></line>
					<path
							d="M5.45 5.11L2 12v6a2 2 0 002 2h16a2 2 0 002-2v-6l-3.45-6.89A2 2 0 0016.76 4H7.24a2 2 0 00-1.79 1.11z"></path>
					<line x1="6" y1="16" x2="6.01" y2="16"></line>
					<line x1="10" y1="16" x2="10.01" y2="16"></line></svg> 임시 저장
				</a>
			</div>
			<div class="w-full sm:w-auto flex">
				<div class="dropdown">
					<a class="dropdown-toggle btn px-2 box" aria-expanded="false"
						data-tw-toggle="dropdown"> <span
						class="w-5 h-5 flex items-center justify-center"> <svg
								xmlns="http://www.w3.org/2000/svg" width="24" height="24"
								viewBox="0 0 24 24" fill="none" stroke="currentColor"
								stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
								icon-name="plus" class="lucide lucide-plus w-4 h-4"
								data-lucide="plus">
							<line x1="12" y1="5" x2="12" y2="19"></line>
							<line x1="5" y1="12" x2="19" y2="12"></line></svg>
					</span>
					</a>
					<div class="dropdown-menu w-40">
						<ul class="dropdown-content">
							<li><a href="" class="dropdown-item"> <svg
										xmlns="http://www.w3.org/2000/svg" width="24" height="24"
										viewBox="0 0 24 24" fill="none" stroke="currentColor"
										stroke-width="2" stroke-linecap="round"
										stroke-linejoin="round" icon-name="user" data-lucide="user"
										class="lucide lucide-user w-4 h-4 mr-2">
									<path d="M20 21v-2a4 4 0 00-4-4H8a4 4 0 00-4 4v2"></path>
									<circle cx="12" cy="7" r="4"></circle></svg> Contacts
							</a></li>
							<li><a href="" class="dropdown-item"> <svg
										xmlns="http://www.w3.org/2000/svg" width="24" height="24"
										viewBox="0 0 24 24" fill="none" stroke="currentColor"
										stroke-width="2" stroke-linecap="round"
										stroke-linejoin="round" icon-name="settings"
										data-lucide="settings"
										class="lucide lucide-settings w-4 h-4 mr-2">
									<path
											d="M12.22 2h-.44a2 2 0 00-2 2v.18a2 2 0 01-1 1.73l-.43.25a2 2 0 01-2 0l-.15-.08a2 2 0 00-2.73.73l-.22.38a2 2 0 00.73 2.73l.15.1a2 2 0 011 1.72v.51a2 2 0 01-1 1.74l-.15.09a2 2 0 00-.73 2.73l.22.38a2 2 0 002.73.73l.15-.08a2 2 0 012 0l.43.25a2 2 0 011 1.73V20a2 2 0 002 2h.44a2 2 0 002-2v-.18a2 2 0 011-1.73l.43-.25a2 2 0 012 0l.15.08a2 2 0 002.73-.73l.22-.39a2 2 0 00-.73-2.73l-.15-.08a2 2 0 01-1-1.74v-.5a2 2 0 011-1.74l.15-.09a2 2 0 00.73-2.73l-.22-.38a2 2 0 00-2.73-.73l-.15.08a2 2 0 01-2 0l-.43-.25a2 2 0 01-1-1.73V4a2 2 0 00-2-2z"></path>
									<circle cx="12" cy="12" r="3"></circle></svg> Settings
							</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
		<!-- END: Inbox Filter -->
		<!-- BEGIN: Inbox Content -->
		<div class="box mt-5">
			<div class="mt-3">
				<div class="form-inline mt-3 mr-3">
					<label for="rcptnEml" class="form-label sm:w-20 mt-3">받는 사람</label>
					<input id="rcptnEml" name="rcptnEml" type="text" value="${not empty emailVO ? emailVO.rcptnEml : ''}"
						class="form-control mt-3" placeholder="example@dorandoran.com" />
					<a href="#" id="selfWrite" class="mt-2 mr-1 ml-2">
						<div class="flex items-center justify-center text-primary">
							<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
								viewBox="0 0 24 24" fill="none" stroke="currentColor"
								stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
								icon-name="check-square" data-lucide="check-square"
								class="lucide lucide-check-square w-4 h-4 mr-2">
							<polyline points="9 11 12 14 22 4"></polyline>
							<path d="M21 12v7a2 2 0 01-2 2H5a2 2 0 01-2-2V5a2 2 0 012-2h11"></path></svg>
							내게 쓰기
						</div>
					</a>
					<div class="dropdown  ml-1 mt-1">
						<a class="dropdown-toggle" aria-expanded="false"
							data-tw-toggle="dropdown"> <svg
								xmlns="http://www.w3.org/2000/svg" width="24" height="24"
								viewBox="0 0 24 24" fill="none" stroke="currentColor"
								stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
								icon-name="chevron-down" data-lucide="chevron-down"
								class="lucide lucide-chevron-down top-menu__sub-icon">
							<polyline points="6 9 12 15 18 9"></polyline></svg>
						</a>
						<div class="dropdown-menu mt-1" style="width: 300px;">
							<ul class="dropdown-content overflow-y-auto h-32">
								<li><a href="#" onclick="emailSelect(this);"
									class="dropdown-item">mm001@dorandoran.com (이덕화)</a></li>
								<li><a href="#" onclick="emailSelect(this);"
									class="dropdown-item">pm001@dorandoran.com (이동욱)</a></li>
								<li><a href="#" onclick="emailSelect(this);"
									class="dropdown-item">pl001@dorandoran.com (김수현)</a></li>
								<li><a href="#" onclick="emailSelect(this);"
									class="dropdown-item">pa001@dorandoran.com (최수영)</a></li>
								<li><a href="#" onclick="emailSelect(this);"
									class="dropdown-item">ps001@dorandoran.com (성수영)</a></li>
							</ul>
						</div>
					</div>

				</div>
				<div class="form-inline mt-3 mr-3">
					<label for="emlCcId" class="form-label sm:w-20">참조</label> <input
						id="emlCcId" name="emlCcId" type="text" class="form-control" value="${not empty emailVO ? emailVO.emlCcId : ''}" />
					<div class="dropdown ml-1 mt-1">
						<a class="dropdown-toggle" aria-expanded="false"
							data-tw-toggle="dropdown"> <svg
								xmlns="http://www.w3.org/2000/svg" width="24" height="24"
								viewBox="0 0 24 24" fill="none" stroke="currentColor"
								stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
								icon-name="chevron-down" data-lucide="chevron-down"
								class="lucide lucide-chevron-down top-menu__sub-icon">
							<polyline points="6 9 12 15 18 9"></polyline></svg>
						</a>
						<div class="dropdown-menu mt-1" style="width: 300px;">
							<ul class="dropdown-content overflow-y-auto h-32">
								<li><a href="#" onclick="ccSelect(this);"
									class="dropdown-item">mm001@dorandoran.com(이덕화)</a></li>
								<li><a href="#" onclick="ccSelect(this);"
									class="dropdown-item">pm001@dorandoran.com (이동욱)</a></li>
								<li><a href="#" onclick="ccSelect(this);"
									class="dropdown-item">pl001@dorandoran.com (김수현)</a></li>
								<li><a href="#" onclick="ccSelect(this);"
									class="dropdown-item">pa001@dorandoran.com (최수영)</a></li>
								<li><a href="#" onclick="ccSelect(this);"
									class="dropdown-item">ps001@dorandoran.com (성수영)</a></li>
							</ul>
						</div>
					</div>
				</div>
				<div class="form-inline mt-3 mr-3">
					<label for="emlTitle" class="form-label sm:w-20">제목</label> <input
						id="emlTitle" name="emlTitle" type="text" class="form-control" value="${not empty emailVO ? emailVO.emlTitle : ''}" />
				</div>
				<div class="form-inline mt-3 mr-3">
					<label for="attachFiles" class="form-label sm:w-20">첨부파일</label> <input value="${not empty emailVO ? emailVO.attachFiles : ''}"
						id="attachFiles" name="attachFiles" type="file" multiple />
				</div>
				<div>
					<div class="form-inline mt-3 mr-3 ml-3 mb-3">
						<textarea rows="10" cols="100" class="form-control" id="emlCn"
							name="emlCn">${not empty emailVO ? emailVO.emlCn : ''}</textarea>
					</div>
				</div>
			</div>
		</div>
		<!-- END: Inbox Content -->

		<sec:csrfInput />
	</form>
</div>
<!-- END: Body -->
<script type="text/javascript">
	CKEDITOR.replace("emlCn", {
		width : '100%',
		height : '500px'
	});
</script>
<script type="text/javascript" src="/resources/js/jquery-3.6.4.min.js"></script>
<script type="text/javascript">
	$(function() {
		$("#main_menu").html("메일");
		$("#sub_menu").html("메일 쓰기");

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

	function emailSelect(e) {
		let sendEmail = $(e).text();
		sendEmail = sendEmail.split("(")[0].trim();
		$("#rcptnEml").val(sendEmail);
	}
	function ccSelect(e) {
		let ccEmail = $(e).text();
		ccEmail = ccEmail.split("(")[0].trim();
		$("#emlCcId").val(ccEmail);
	}
	$("#sendEmailBtn").on("click", function() {
		let answer = confirm("메일을 보내시겠습니까?");
		let urlParams = new URLSearchParams(window.location.search);
		let hasParameter = urlParams.has('emlId');
		console.log("hasParameter",hasParameter);

		if(answer){
			if(hasParameter){
				$("#emailForm").attr("action","/emp/mail/imsi/updateImsi?${_csrf.parameterName}=${_csrf.token}");
				$("#sndptySttsCd").val("ESMS01");
				$("#rcvrSttsCd").val("ESMS02");
			}else{
				$("#emailForm").attr("action","/emp/mail/inbox/sendEmail?${_csrf.parameterName}=${_csrf.token}");
				$("#sndptySttsCd").val("ESMS01");
				$("#rcvrSttsCd").val("ESMS02");
			}
			jQuery("#emailForm").submit();
		};
	});

	$("#saveEmail").on("click", function() {
		let answer = confirm("임시저장 하시겠습니까?");
		let urlParams = new URLSearchParams(window.location.search);
		let hasParameter = urlParams.has('emlId');
		console.log("hasParameter",hasParameter);
		if(answer){
			if(hasParameter){
				$("#emailForm").attr("action","/emp/mail/imsi/updateImsi?${_csrf.parameterName}=${_csrf.token}");
				$("#sndptySttsCd").val("ESMS05");
				$("#rcvrSttsCd").val("ESMS05");
			}else{
				$("#emailForm").attr("action","/emp/mail/inbox/sendEmail?${_csrf.parameterName}=${_csrf.token}");
				$("#sndptySttsCd").val("ESMS05");
				$("#rcvrSttsCd").val("ESMS05");
			}
			jQuery("#emailForm").submit();
		};
	});

	let selfMailFlag = false;
	$("#selfWrite").on("click",function(){
		selfMailFlag = !selfMailFlag;
		let myEmail = $("#dsptchEml").val();

		if(selfMailFlag){
			$("#rcptnEml").val(myEmail);
		}else{
			$("#rcptnEml").val("");
		}

	});
</script>
