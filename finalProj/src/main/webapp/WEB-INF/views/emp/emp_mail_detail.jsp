<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
								icon-name="star" data-lucide="star" class="lucide lucide-box">
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
	<!-- BEGIN: Inbox Content -->
	<div class="mail-intro-y inbox box" style="letter-spacing: 0px;">
		<div
			class="p-3 flex flex-col-reverse sm:flex-row text-slate-500 border-b border-slate-200/60">
			<div class="w-full sm:w-auto flex">

				<button class="btn btn-outline-dark w-20 inline-block mr-2"
					id="emailAnswerBtn">답장</button>
				<button class="btn btn-outline-dark w-20 inline-block mr-2"
					id="emailResendBtn">전달</button>
				<button class="btn btn-outline-dark w-20 inline-block mr-2"
					id="emailDelBtn">삭제</button>
				<button class="btn btn-outline-dark w-20 inline-block mr-2"
					id="emailnoReadBtn">안읽음</button>
			</div>
			<div class="flex items-center sm:ml-auto">
				<a href="javascript:;"
					class="w-5 h-5 ml-5 flex items-center justify-center"> <svg
						xmlns="http://www.w3.org/2000/svg" width="24" height="24"
						viewBox="0 0 24 24" fill="none" stroke="currentColor"
						stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
						icon-name="chevron-left"
						class="lucide lucide-chevron-left w-4 h-4"
						data-lucide="chevron-left">
						<polyline points="15 18 9 12 15 6"></polyline></svg>
				</a> <a href="javascript:;"
					class="w-5 h-5 ml-5 flex items-center justify-center"> <svg
						xmlns="http://www.w3.org/2000/svg" width="24" height="24"
						viewBox="0 0 24 24" fill="none" stroke="currentColor"
						stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
						icon-name="chevron-right"
						class="lucide lucide-chevron-right w-4 h-4"
						data-lucide="chevron-right">
						<polyline points="9 18 15 12 9 6"></polyline></svg>
				</a> <a href="javascript:;"
					class="w-5 h-5 ml-5 flex items-center justify-center"> <svg
						xmlns="http://www.w3.org/2000/svg" width="24" height="24"
						viewBox="0 0 24 24" fill="none" stroke="currentColor"
						stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
						icon-name="settings" class="lucide lucide-settings w-4 h-4"
						data-lucide="settings">
						<path
							d="M12.22 2h-.44a2 2 0 00-2 2v.18a2 2 0 01-1 1.73l-.43.25a2 2 0 01-2 0l-.15-.08a2 2 0 00-2.73.73l-.22.38a2 2 0 00.73 2.73l.15.1a2 2 0 011 1.72v.51a2 2 0 01-1 1.74l-.15.09a2 2 0 00-.73 2.73l.22.38a2 2 0 002.73.73l.15-.08a2 2 0 012 0l.43.25a2 2 0 011 1.73V20a2 2 0 002 2h.44a2 2 0 002-2v-.18a2 2 0 011-1.73l.43-.25a2 2 0 012 0l.15.08a2 2 0 002.73-.73l.22-.39a2 2 0 00-.73-2.73l-.15-.08a2 2 0 01-1-1.74v-.5a2 2 0 011-1.74l.15-.09a2 2 0 00.73-2.73l-.22-.38a2 2 0 00-2.73-.73l-.15.08a2 2 0 01-2 0l-.43-.25a2 2 0 01-1-1.73V4a2 2 0 00-2-2z"></path>
						<circle cx="12" cy="12" r="3"></circle></svg>
				</a>
			</div>
		</div>
		<div class="overflow-x-auto sm:overflow-x-visible mt-3 mr-3 ml-3">
			<input type="hidden" id="emlId" name="emlId" value="${emailData.emlId}">
			<div>
				<div class="mt-3 mb-2" style="text-align: center;">
					<h2 class="intro-y font-medium text-xl sm:text-2xl">
						${emailData.emlTitle}</h2>
				</div>
				<div class="form-inline mt-3">
					<label for="horizontal-form-1" class="form-label sm:w-20">보낸사람</label>
					<input id="horizontal-form-1" type="text" class="form-control"
						value="${emailData.dsptchEml}" readonly />
				</div>
				<div class="form-inline mt-3">
					<label for="horizontal-form-1" class="form-label sm:w-20">받은사람</label>
					<input id="horizontal-form-1" type="text" class="form-control"
						value="${emailData.rcptnEml}" readonly />
				</div>
				<div class="form-inline mt-3">
					<label for="horizontal-form-1" class="form-label sm:w-20">첨부파일</label>
					<c:if test="${empty emailData.attachFileDetailList}">
						<label for="horizontal-form-1" class="form-label sm:w-20">첨부
							파일 없음</label>
					</c:if>
					<c:if test="${not empty emailData.attachFileDetailList}">
						<!-- 첨부 파일이 있는 경우에 대한 내용 -->
						<ul>
							<div class="flex">
								<c:forEach var="attachFile"
									items="${emailData.attachFileDetailList}">
									<a  href="/emp/mail/inbox/download?fileInfo=${attachFile.flpth}/${attachFile.streFlNm}" class="btn btn-pending mr-2 mb-2">
										<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
											viewBox="0 0 24 24" fill="none" stroke="currentColor"
											stroke-width="2" stroke-linecap="round"
											stroke-linejoin="round" icon-name="download"
											data-lucide="download"
											class="lucide lucide-download w-4 h-4 mr-2">
											<path d="M21 15v4a2 2 0 01-2 2H5a2 2 0 01-2-2v-4"></path>
											<polyline points="7 10 12 15 17 10"></polyline>
											<line x1="12" y1="15" x2="12" y2="3"></line></svg>
										${attachFile.orginlAtchmnflNm}
									</a>
								</c:forEach>
							</div>
						</ul>
					</c:if>
				</div>

				<div class="mt-3" style="align: left;">
					<div style="display: block; text-align: right;">
						<fmt:parseDate value="${emailData.lastUpdtTm}" var="dateFmt"
							pattern="yyyyMMddHHmmss" />
						<fmt:formatDate value="${dateFmt}"
							pattern="yyyy년 MM월 dd일 HH:mm:ss " />
					</div>
				</div>


				<div class="mt-3" style="height: 850px;">
				이메일 내용들이 들어갈 자리입니다.
				${emailData.emlCn}
				</div>
			</div>
			<div>
			첨부파일 다운로드가 들어갈 자리입니다.
			${attachdata}</div>

		</div>
		<div
			class="p-5 flex flex-col sm:flex-row items-center text-center sm:text-left text-slate-500">
			<div>4.41 GB (25%) of 17 GB used Manage</div>
			<div class="sm:ml-auto mt-2 sm:mt-0">Last account activity: 36
				minutes ago</div>
		</div>
	</div>
	<!-- END: Inbox Content -->

</div>
<!-- END: Body -->

<script type="text/javascript" src="/resources/js/jquery-3.6.4.min.js"></script>
<script type="text/javascript">
	$(function() {
		$("#main_menu").html("메일");
		$("#sub_menu").html("");

		$(".side-nav > ul > li > .side-menu").on("click", function() {
			// 좌측 메뉴 선택 시 효과 적용
			$(".side-menu").removeClass("side-menu--active");
			$(this).addClass("side-menu--active");

			// 메뉴 경로 표시 (좌측 메뉴)
			var sub = $(this).find(".side-menu__title").text();
			console.log(sub.trim());
			$("#sub_menu").html(sub.trim());
		});


		$("#emailAnswerBtn").on("click",function(){
			console.log("emailAnswerBtn");
			console.log($("#emlId").val());

		});


		$("#emailResendBtn").on("click",function(){
			console.log("emailResendBtn");
			console.log($("#emlId").val());

		});

		$("#emailDelBtn").on("click",function(){
			console.log("emailDelBtn");
			let answer = confirm("현재 메일을 삭제하시겠습니까?");
			if(answer){
				let checkMailList = new Array();
				checkMailList.push($("#emlId").val());
				jQuery.ajax({
					url:"/emp/mail/inbox/delEmailList",
					contentType: 'application/json; charset=utf-8',
					data: JSON.stringify(checkMailList),
					type:"post",
					dataType:"json",
					beforeSend:function(xhr){
			            xhr.setRequestHeader("${_csrf.headerName}","${_csrf.token}");
			         },
					success: function(result){

						if(result == checkMailList.length){
							alert("삭제가 완료되었습니다.");
							location.href="/emp/mail/inbox";
						}
					}
				});
			}
		});
		$("#emailnoReadBtn").on("click",function(){
			console.log("emailnoReadBtn");
			console.log($("#emlId").val());


		});
	});
</script>
