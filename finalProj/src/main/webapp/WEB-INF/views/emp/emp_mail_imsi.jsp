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
	<!-- BEGIN: Inbox Filter -->
	<h5 class="text-lg font-medium leading-none mt-0 mr-auto">메일
		&gt;임시 보관함</h5>
	<div
		class="mail-mail-intro-y flex flex-col-reverse sm:flex-row items-center mt-3">
		<div class="w-full sm:w-auto relative mr-auto mt-3 sm:mt-0">
			<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
				viewBox="0 0 24 24" fill="none" stroke="currentColor"
				stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
				icon-name="search"
				class="lucide lucide-search w-4 h-4 absolute my-auto inset-y-0 ml-3 left-0 z-10 text-slate-500"
				data-lucide="search">
				<circle cx="11" cy="11" r="8"></circle>
				<line x1="21" y1="21" x2="16.65" y2="16.65"></line></svg>
			<input type="text" class="form-control w-full sm:w-64 box px-10"
				placeholder="Search mail">
			<div
				class="inbox-filter dropdown absolute inset-y-0 mr-3 right-0 flex items-center"
				data-tw-placement="bottom-start">
				<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
					viewBox="0 0 24 24" fill="none" stroke="currentColor"
					stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
					icon-name="chevron-down"
					class="lucide lucide-chevron-down dropdown-toggle w-4 h-4 cursor-pointer text-slate-500"
					role="button" aria-expanded="false" data-tw-toggle="dropdown"
					data-lucide="chevron-down">
					<polyline points="6 9 12 15 18 9"></polyline></svg>
				<div class="inbox-filter__dropdown-menu dropdown-menu pt-2">
					<div class="dropdown-content">
						<div class="grid grid-cols-12 gap-4 gap-y-3 p-3">
							<div class="col-span-6">
								<label for="input-filter-1" class="form-label text-xs">From</label>
								<input id="input-filter-1" type="text"
									class="form-control flex-1" placeholder="example@gmail.com">
							</div>
							<div class="col-span-6">
								<label for="input-filter-2" class="form-label text-xs">To</label>
								<input id="input-filter-2" type="text"
									class="form-control flex-1" placeholder="example@gmail.com">
							</div>
							<div class="col-span-6">
								<label for="input-filter-3" class="form-label text-xs">Subject</label>
								<input id="input-filter-3" type="text"
									class="form-control flex-1" placeholder="Important Meeting">
							</div>
							<div class="col-span-6">
								<label for="input-filter-4" class="form-label text-xs">Has
									the Words</label> <input id="input-filter-4" type="text"
									class="form-control flex-1"
									placeholder="Job, Work, Documentation">
							</div>
							<div class="col-span-12 flex items-center mt-3">
								<button class="btn btn-secondary w-32 ml-auto">Create
									Filter</button>
								<button class="btn btn-primary w-32 ml-2">Search</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="w-full sm:w-auto flex">
			<button class="btn btn-primary shadow-md mr-2" id="emailReadBtn">읽음</button>
			<button class="btn btn-warn shadow-md mr-2" id="emailDelBtn">삭제</button>
			<div class="dropdown">
				<button class="dropdown-toggle btn px-2 box" aria-expanded="false"
					data-tw-toggle="dropdown">
					<span class="w-5 h-5 flex items-center justify-center"> <svg
							xmlns="http://www.w3.org/2000/svg" width="24" height="24"
							viewBox="0 0 24 24" fill="none" stroke="currentColor"
							stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
							icon-name="plus" class="lucide lucide-plus w-4 h-4"
							data-lucide="plus">
							<line x1="12" y1="5" x2="12" y2="19"></line>
							<line x1="5" y1="12" x2="19" y2="12"></line></svg>
					</span>
				</button>
				<div class="dropdown-menu w-40">
					<ul class="dropdown-content">
						<li><a href="" class="dropdown-item"> <svg
									xmlns="http://www.w3.org/2000/svg" width="24" height="24"
									viewBox="0 0 24 24" fill="none" stroke="currentColor"
									stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
									icon-name="user" data-lucide="user"
									class="lucide lucide-user w-4 h-4 mr-2">
									<path d="M20 21v-2a4 4 0 00-4-4H8a4 4 0 00-4 4v2"></path>
									<circle cx="12" cy="7" r="4"></circle></svg> Contacts
						</a></li>
						<li><a href="" class="dropdown-item"> <svg
									xmlns="http://www.w3.org/2000/svg" width="24" height="24"
									viewBox="0 0 24 24" fill="none" stroke="currentColor"
									stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
									icon-name="settings" data-lucide="settings"
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
	<div class="mail-intro-y inbox box mt-5" style="letter-spacing: 0px;">
		<div
			class="p-5 flex flex-col-reverse sm:flex-row text-slate-500 border-b border-slate-200/60">
			<div
				class="flex items-center mt-3 sm:mt-0 border-t sm:border-0 border-slate-200/60 pt-5 sm:pt-0 mt-5 sm:mt-0 -mx-5 sm:mx-0 px-5 sm:px-0">
				<input class="form-check-input" type="checkbox" id="allCheck" />
				<div class="dropdown ml-1" data-tw-placement="bottom-start">
					<a class="dropdown-toggle w-5 h-5 block" href="javascript:;"
						aria-expanded="false" data-tw-toggle="dropdown"> <svg
							xmlns="http://www.w3.org/2000/svg" width="24" height="24"
							viewBox="0 0 24 24" fill="none" stroke="currentColor"
							stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
							icon-name="chevron-down" data-lucide="chevron-down"
							class="lucide lucide-chevron-down w-5 h-5">
							<polyline points="6 9 12 15 18 9"></polyline></svg>
					</a>
					<div class="dropdown-menu w-32">
						<ul class="dropdown-content">
							<li><a href="" class="dropdown-item">전체 선택</a></li>
							<li><a href="" class="dropdown-item">읽은 메일</a></li>
							<li><a href="" class="dropdown-item">읽지않은 메일</a></li>
							<li><a href="" class="dropdown-item">중요 메일</a></li>
							<li><a href="" class="dropdown-item">선택 해제</a></li>
						</ul>
					</div>
				</div>
				<a href="javascript:;"
					class="w-5 h-5 ml-5 flex items-center justify-center"> <svg
						xmlns="http://www.w3.org/2000/svg" width="24" height="24"
						viewBox="0 0 24 24" fill="none" stroke="currentColor"
						stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
						icon-name="refresh-cw" class="lucide lucide-refresh-cw w-4 h-4"
						data-lucide="refresh-cw">
						<path d="M21 2v6h-6"></path>
						<path d="M3 12a9 9 0 0115-6.7L21 8"></path>
						<path d="M3 22v-6h6"></path>
						<path d="M21 12a9 9 0 01-15 6.7L3 16"></path></svg>
				</a> <a href="javascript:;"
					class="w-5 h-5 ml-5 flex items-center justify-center"> <svg
						xmlns="http://www.w3.org/2000/svg" width="24" height="24"
						viewBox="0 0 24 24" fill="none" stroke="currentColor"
						stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
						icon-name="more-horizontal"
						class="lucide lucide-more-horizontal w-4 h-4"
						data-lucide="more-horizontal">
						<circle cx="12" cy="12" r="1"></circle>
						<circle cx="19" cy="12" r="1"></circle>
						<circle cx="5" cy="12" r="1"></circle></svg>
				</a>
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
		<div class="overflow-x-auto sm:overflow-x-visible">
			<c:forEach var="emailVO" items="${data.content}" varStatus="status">
					<div class="mail-intro-y">
						<div
							class="inbox__item inline-block sm:block text-slate-600 dark:text-slate-500 bg-slate-100 dark:bg-darkmode-400/70 border-b border-slate-200/60 dark:border-darkmode-400">
							<div class="flex px-5 py-3" onclick=mailDetail(
								"${emailVO.emlId}")>
								<div class="w-72 flex-none flex items-center mr-5">
									<input class="form-check-input flex-none emailCheckbox"
										type="checkbox" value="${emailVO.emlId}" /> <a
										href="javascript:;"
										class="w-5 h-5 flex-none ml-4 flex items-center justify-center text-slate-400">
										<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
											viewBox="0 0 24 24" fill="none" stroke="currentColor"
											stroke-width="2" stroke-linecap="round"
											stroke-linejoin="round" icon-name="star"
											class="lucide lucide-star w-4 h-4 emailStar"
											data-value="${emailVO.emlId}" data-lucide="star">
											<polygon
												points="12 2 15.09 8.26 22 9.27 17 14.14 18.18 21.02 12 17.77 5.82 21.02 7 14.14 2 9.27 8.91 8.26 12 2"></polygon></svg>
									</a> <a href="javascript:;"
										class="w-5 h-5 flex-none ml-2 flex items-center justify-center text-slate-400">
										<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
											viewBox="0 0 24 24" fill="none" stroke="currentColor"
											stroke-width="2" stroke-linecap="round"
											stroke-linejoin="round" icon-name="bookmark"
											class="lucide lucide-bookmark w-4 h-4" data-lucide="bookmark">
											<path d="M19 21l-7-4-7 4V5a2 2 0 012-2h10a2 2 0 012 2v16z"></path></svg>
									</a>
									<div class="inbox__item--sender truncate ml-3">${emailVO.empNm}</div>
								</div>
								<div class="w-64 sm:w-auto truncate">
									<span class="inbox__item--highlight"
										onclick='writerEmail("${emailVO.emlId}")'>
										${emailVO.emlTitle} </span>
								</div>
								<div class="inbox__item--time whitespace-nowrap ml-auto pl-10">
									<fmt:parseDate value="${emailVO.lastUpdtTm}" var="dateObject"
										pattern="yyyyMMddHHmmss" />
									<fmt:formatDate value="${dateObject}"
										pattern="yyyy-MM-dd HH:mm:ss" />
								</div>
							</div>
						</div>
					</div>
			</c:forEach>
		</div>
		<div
			class="p-5 flex flex-col sm:flex-row items-center text-center sm:text-left text-slate-500">
			<!-- BEGIN: 페이징 처리 -->
			<div
				class="intro-y col-span-12 flex flex-wrap sm:flex-row sm:flex-nowrap items-center">
				<nav class="w-full sm:w-auto sm:mr-auto">
					<ul class="pagination">
						<!-- 시작 페이지 이동 -->
						<li class="page-item"><a class="page-link"
							href="/emp/mail/imsi?currentPage=1"> <svg
									xmlns="http://www.w3.org/2000/svg" width="24" height="24"
									viewBox="0 0 24 24" fill="none" stroke="currentColor"
									stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
									icon-name="chevrons-left"
									class="lucide lucide-chevrons-left w-4 h-4"
									data-lucide="chevrons-left">
									<polyline points="11 17 6 12 11 7"></polyline>
									<polyline points="18 17 13 12 18 7"></polyline></svg>
						</a></li>
						<!-- 이전 페이지 이동 -->
						<li class="page-item"><a class="page-link"
							<c:if test='${data.startPage < 6}'>style="pointer-events: none;"</c:if>
							href="/emp/mail/imsi?currentPage=${data.startPage-5}&size=${param.size}&cond=${param.cond}&keyword=${param.keyword}">
								<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
									viewBox="0 0 24 24" fill="none" stroke="currentColor"
									stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
									icon-name="chevron-left"
									class="lucide lucide-chevron-left w-4 h-4"
									data-lucide="chevron-left">
									<polyline points="15 18 9 12 15 6"></polyline></svg>
						</a></li>
						<c:forEach var="pNo" begin="${data.startPage}"
							end="${data.endPage}">
							<li
								class="page-item
		            	<c:if test='${param.currentPage eq pNo || (pNo == 1 && param.currentPage == null)}'>active</c:if>
		            	">
								<a
								href="/emp/mail/inbox?currentPage=${pNo}&size=${param.size}&cond=${param.cond}&keyword=${param.keyword}"
								class="page-link">${pNo}</a>
							</li>
						</c:forEach>
						<!-- 다음 페이지 이동 -->
						<li class="page-item"><a class="page-link"
							<c:if test='${data.endPage == data.totalPages}'>style="pointer-events: none;"</c:if>
							href="/emp/mail/imsi?currentPage=${data.startPage+5}&size=${param.size}&cond=${param.cond}&keyword=${param.keyword}">
								<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
									viewBox="0 0 24 24" fill="none" stroke="currentColor"
									stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
									icon-name="chevron-right"
									class="lucide lucide-chevron-right w-4 h-4"
									data-lucide="chevron-right">
									<polyline points="9 18 15 12 9 6"></polyline></svg>
						</a></li>
						<!-- 마지막 페이지 이동 -->
						<li class="page-item"><a class="page-link"
							<c:if test='${data.endPage == data.totalPages}'>style="pointer-events: none;"</c:if>
							href="/emp/mail/imsi?currentPage=${data.totalPages}"> <svg
									xmlns="http://www.w3.org/2000/svg" width="24" height="24"
									viewBox="0 0 24 24" fill="none" stroke="currentColor"
									stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
									icon-name="chevrons-right"
									class="lucide lucide-chevrons-right w-4 h-4"
									data-lucide="chevrons-right">
									<polyline points="13 17 18 12 13 7"></polyline>
									<polyline points="6 17 11 12 6 7"></polyline></svg>
						</a></li>
					</ul>
				</nav>
				<select name="size" id="size"
					class="w-20 form-select box mt-3 sm:mt-0">
					<option value="5" <c:if test="${data.size == '5'}">selected</c:if>>5</option>
					<option value="10"
						<c:if test="${data.size == '10'}">selected</c:if>>10</option>
				</select>
			</div>
			<!-- END: 페이징 처리 -->
		</div>
	</div>
	<!-- END: Inbox Content -->

</div>
<!-- END: Body -->

<script type="text/javascript" src="/resources/js/jquery-3.6.4.min.js"></script>
<script type="text/javascript">
	$(function() {
		$("#main_menu").html("메일");
		$("#sub_menu").html("임시보관함");

		$(".side-nav > ul > li > .side-menu").on("click", function() {
			// 좌측 메뉴 선택 시 효과 적용
			$(".side-menu").removeClass("side-menu--active");
			$(this).addClass("side-menu--active");

			// 메뉴 경로 표시 (좌측 메뉴)
			var sub = $(this).find(".side-menu__title").text();
			console.log(sub.trim());
			$("#sub_menu").html(sub.trim());
		});

		let checkFlag = false;
		$("#allCheck").on("change", function(){
			checkFlag = !checkFlag;
			if(checkFlag){
				jQuery(".emailCheckbox").prop("checked", true);
			}else{
				jQuery(".emailCheckbox").prop("checked", false);
			}
		});

		$("#emailReadBtn").on("click", function(){
			console.log("emailReadBtn");
			let checkMailList = new Array();
			$(".emailCheckbox").each(function(i,v){
				if($(v).is(":checked")){
					checkMailList.push($(v).val());
				}
			});
			console.log(checkMailList);
			console.log(checkMailList.toString());
			if(checkMailList.length > 0){
				let answer = confirm(checkMailList.length +"건의 메일을 읽음 처리하시겠습니까?");
				if(answer){
					jQuery.ajax({
						url:"/emp/mail/inbox/readEmailList",
 						contentType: 'application/json; charset=utf-8',
						data: JSON.stringify(checkMailList),
						type:"post",
						dataType:"json",
						beforeSend:function(xhr){
				            xhr.setRequestHeader("${_csrf.headerName}","${_csrf.token}");
				         },
						success: function(result){

							if(result == checkMailList.length){
								alert("읽음처리가 완료되었습니다.");
								location.href="/emp/mail/send";
							}
							console.log("result", result);
						}
					});
				}
			}
		});
		$("#emailDelBtn").on("click", function(){
			console.log("emailDelBtn");
			let checkMailList = new Array();
			$(".emailCheckbox").each(function(i,v){
				if($(v).is(":checked")){
					checkMailList.push($(v).val());
				}
			});
			console.log(checkMailList);
			console.log(checkMailList.toString());
			if(checkMailList.length > 0){
				let answer = confirm(checkMailList.length +"건의 메일을 삭제 처리하시겠습니까?");
				if(answer){
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
								location.href="/emp/mail/send";
							}
							console.log("result", result);
						}
					});
				}
			}
		});

		$(".emailStar").on("click", function(){
			let answer = confirm("즐겨찾기로 등록하시겠습니까? ");
			let data = {emlId: $(this).attr("data-value")};
			if(answer){
				jQuery.ajax({
					url:"/emp/mail/inbox/favoritesMail",
						contentType: 'application/json; charset=utf-8',
					data: JSON.stringify(data),
					type:"post",
					dataType:"json",
					beforeSend:function(xhr){
			            xhr.setRequestHeader("${_csrf.headerName}","${_csrf.token}");
			         },
					success: function(result){
						console.log("result", result);

						if(result == 1){
							alert("즐겨찾기로 등록되었습니다.");
							location.href="/emp/mail/send";
						}
					}
				});
			}
		});
		$(".favoritEmails").on("click", function(){
			let answer = confirm("즐겨찾기를 해제하시겠습니까? ");
			let data = {emlId: $(this).attr("data-value")};
			if(answer){
				jQuery.ajax({
					url:"/emp/mail/inbox/favoritesClear",
						contentType: 'application/json; charset=utf-8',
					data: JSON.stringify(data),
					type:"post",
					dataType:"json",
					beforeSend:function(xhr){
			            xhr.setRequestHeader("${_csrf.headerName}","${_csrf.token}");
			         },
					success: function(result){
						console.log("result", result);

						if(result == 1){
							alert("즐겨찾기가 해제되었습니다.");
							location.href="/emp/mail/self";
						}
					}
				});
			}
		});

	});
	function writerEmail(emailId){
		console.log(emailId);
		location.href= "/emp/mail/inbox/writeEmail?emlId="+emailId;
	}
</script>
