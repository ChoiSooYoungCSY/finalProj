<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>

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
	<c:set var="result" value="${result}" />
	<c:if test="${result eq 'success'}">
		<div class="intro-y flex-1 px-5 py-16 mt-10">
			<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
				viewBox="0 0 24 24" fill="none" stroke="currentColor"
				stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
				icon-name="send" data-lucide="send"
				class="lucide lucide-send block w-12 h-12 text-primary mx-auto">
        <line x1="22" y1="2" x2="11" y2="13"></line>
        <polygon points="22 2 15 22 11 13 2 9 22 2"></polygon></svg>
			<div class="text-xl font-medium text-center mt-10">전송 완료</div>
			<a href="/emp/mail/inbox"
				class="btn btn-primary py-3 px-4 block mx-auto mt-8"
				style="width: 100px;">메일 홈</a>
		</div>
</div>
</c:if>
<c:if test="${result eq 'failed'}">
	<div class="intro-y flex-1 px-5 py-16 mt-10">
		<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
			viewBox="0 0 24 24" fill="none" stroke="currentColor"
			stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
			icon-name="wifi-off" data-lucide="wifi-off"
			class="lucide lucide-wifi-off block w-12 h-12 text-primary mx-auto">
        <line x1="22" y1="2" x2="11" y2="13"></line>
        <polygon points="22 2 15 22 11 13 2 9 22 2"></polygon></svg>
		<div class="text-xl font-medium text-center mt-10">전송 실패</div>
		<a href="/emp/mail/inbox"
			class="btn btn-primary py-3 px-4 block mx-auto mt-8"
			style="width: 100px;">메일 홈</a>
	</div>
	</div>
</c:if>
<c:if test="${result eq 'imsi'}">
	<div class="intro-y flex-1 px-5 py-16 mt-10">
		<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
			viewBox="0 0 24 24" fill="none" stroke="currentColor"
			stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
			icon-name="pen-tool" data-lucide="pen-tool"
			class="lucide lucide-wifi-off block w-12 h-12 text-primary mx-auto">
        <line x1="22" y1="2" x2="11" y2="13"></line>
        <polygon points="22 2 15 22 11 13 2 9 22 2"></polygon></svg>
		<div class="text-xl font-medium text-center mt-10">임시저장 완료</div>
		<a href="/emp/mail/inbox"
			class="btn btn-primary py-3 px-4 block mx-auto mt-8"
			style="width: 100px;">메일 홈</a>
	</div>
	</div>
</c:if>


</div>
<!-- END: Body -->

<script type="text/javascript" src="/resources/js/jquery-3.6.4.min.js"></script>
<script type="text/javascript">
	$(function() {
		$("#main_menu").html("메일");
		$("#sub_menu").html("받은 메일함");

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
</script>
