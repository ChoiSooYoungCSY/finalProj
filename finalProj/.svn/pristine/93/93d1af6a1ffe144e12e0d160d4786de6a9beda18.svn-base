<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!-- BEGIN: Menu -->
<div class="col-span-12 lg:col-span-3 2xl:col-span-2">
    <div class="intro-y box bg-primary p-5 mt-0 text-lg" style="height:100%;">
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
<div class="bdy col-span-12 lg:col-span-9 2xl:col-span-10">
	<h5 class="text-lg font-medium leading-none mt-0 mr-auto">마이페이지
         &gt; 관리비 조회 &gt; 나의 관리비</h5>
	<!-- latestVO : 가장 최근의 관리비 정보를 담고 있는 VO 객체 -->
	<!-- pastVO : latestVO의 전년 동월 관리비 정보를 담고 있는 VO 객체 -->
	<c:forEach var="vo" items="${mangList}" varStatus="stat">
		<c:if test="${stat.index == 0}">
			<c:set var="latestVO" value="${vo}" />
			<c:set var="pastYm" value="${latestVO.rlvtYm - 100}" />
		</c:if>
		<c:if test="${vo.rlvtYm eq pastYm}">
			<c:set var="pastVO" value="${vo}" />
		</c:if>
	</c:forEach>
	<div class="col-span-12 xl:col-span-9 mt-3">
		<div class="report-box-2 intro-y mt-0">
			<div class="box grid grid-cols-12">
				<div
					class="col-span-12 lg:col-span-4 px-8 py-11 flex flex-col justify-center"
					style="margin-top: -1px;">
					<div
						style="display: flex; align-items: center; height: 42px; margin-top: -50px; margin-left: -15px;">
						<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
							viewBox="0 0 24 24" fill="none" stroke="currentColor"
							stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
							icon-name="pie-chart" data-lucide="pie-chart"
							class="lucide lucide-pie-chart w-10 h-10 text-pending"
							style="color: #054232; align-self: flex-start;">
				        <path d="M21.21 15.89A10 10 0 118 2.83"></path>
				        <path d="M22 12A10 10 0 0012 2v10z"></path>
				    </svg>
					</div>
					<div class="flex items-center"
						style="position: relative; top: -37px; left: 40px;">
						<span class="cursor-pointer" onclick="previousMonth()"> <svg
								xmlns="http://www.w3.org/2000/svg" width="25" height="25"
								viewBox="0 0 24 24" fill="none" stroke="currentColor"
								stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
								icon-name="chevron-left" data-lucide="chevron-left"
								class="lucide lucide-chevron-left w-5 h-5 text-slate-1000">
				            <polyline points="15 18 9 12 15 6"></polyline>
				        </svg>
						</span>
						<div id="currentMonth" class="font-medium text-base mx-14"></div>
						<span class="cursor-pointer" onclick="nextMonth()"> <svg
								xmlns="http://www.w3.org/2000/svg" width="25" height="25"
								viewBox="0 0 24 24" fill="none" stroke="currentColor"
								stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
								icon-name="chevron-right" data-lucide="chevron-right"
								class="lucide lucide-chevron-right w-5 h-5 text-slate-1000">
				            <polyline points="9 18 15 12 9 6"></polyline>
				        </svg>
						</span>
					</div>
					<div
						class="justify-start flex items-center text-2xl font-bold mt-1"
						style="margin-left: 55px;">
						납기내 납부 금액
						<svg title="납기내 납부 금액" xmlns="http://www.w3.org/2000/svg"
							width="24" height="24" viewBox="0 0 24 24" fill="none"
							stroke="currentColor" stroke-width="2" stroke-linecap="round"
							stroke-linejoin="round" icon-name="alert-circle"
							data-lucide="alert-circle"
							class="lucide lucide-alert-circle tooltip w-4 h-4 ml-1.5">
							<circle cx="12" cy="12" r="10"></circle>
							<line x1="12" y1="8" x2="12" y2="12"></line>
							<line x1="12" y1="16" x2="12.01" y2="16"></line></svg>
					</div>
					<div class="flex items-center justify-start mt-4">
						<div class="relative text-2xl font-medium pl-3 ml-0.5"
							style="margin-left: 75px;">
							<span class="absolute text-xl font-medium top-0.5 left-0 -ml-0.5">￦</span>
							&nbsp;&nbsp;
							<fmt:formatNumber value="${latestVO.managectTot}" />
						</div>
					</div>
					<div class="mt-4 text-slate-500 text-sm" style="margin-left: 65px;"
						id="dueDate"></div>
					<button id="btnDownload"
						class="btn btn-outline-success relative justify-start rounded-full mt-12 font-semibold"
						style="font-size: 15px; color: rgb(6, 78, 59);">
						&nbsp;&nbsp;&nbsp;Excel 다운로드 <span
							class="w-8 h-8 absolute flex justify-center items-center text-white rounded-full right-0 top-0 bottom-0 my-auto ml-auto mr-0.5"
							style="background-color: rgb(6, 78, 59); margin-left: 65px;">
							<svg xmlns="http://www.w3.org/2000/svg" width="18" height="18"
								fill="currentColor" class="bi bi-arrow-down" viewBox="0 0 16 16">
						<path fill-rule="evenodd"
									d="M8 1a.5.5 0 0 1 .5.5v11.793l3.146-3.147a.5.5 0 0 1 .708.708l-4 4a.5.5 0 0 1-.708 0l-4-4a.5.5 0 0 1 .708-.708L7.5 13.293V1.5A.5.5 0 0 1 8 1z" />
					</svg>
						</span>
					</button>
				</div>
				<div
					class="col-span-12 lg:col-span-8 p-6 border-t lg:border-t-0 lg:border-l border-slate-200 border-dashed">
					<ul
						class="nav nav-pills w-60 border border-slate-300 border-dashed rounded-md mx-auto p-1 mb-8 font-semibold"
						role="tablist" style="font-size: 15px;">
						<li id="latest-report-tab" class="nav-item flex-1"
							role="presentation">
							<button class="nav-link w-full py-2 px-2 font-semibold active"
								data-tw-toggle="pill" data-tw-target="#latest-report"
								aria-controls="latest-report-tab" aria-selected="true"
								type="button" role="tab">현재</button>
						</li>
						<li id="past-report-tab" class="nav-item flex-1"
							role="presentation">
							<button class="nav-link w-full py-2 px-2 font-semibold"
								data-tw-toggle="pill" data-tw-target="#past-report"
								aria-controls="past-report-tab" aria-selected="false"
								type="button" role="tab">전년 동월</button>
						</li>
					</ul>
					<div class="tab-content px-5 pb-5">
						<!-- 이번 달 총 공용관리비 -->
						<div class="tab-pane grid grid-cols-12 gap-y-8 gap-x-10 active"
							id="latest-report" role="tabpanel"
							aria-labelledby="latest-report-tab" style="width: 601px;">
							<div class="col-span-6 sm:col-span-6 md:col-span-4">
								<div class="mngctTitle font-bold">총 납부금액</div>
								<div class="mt-1.5 flex items-center">
									<div class="text-base">
										<fmt:formatNumber value="${latestVO.managectTot}" />
									</div>
									<c:set var="high"
										value="${latestVO.managectTot > pastVO.managectTot ? latestVO.managectTot : pastVO.managectTot}" />
									<c:set var="low"
										value="${latestVO.managectTot < pastVO.managectTot ? latestVO.managectTot : pastVO.managectTot}" />
									<c:set var="gap" value="${((high-low)/low)*100}" />
									<c:choose>
										<c:when test="${latestVO.managectTot == high}">
											<div
												class="text-success flex text-xs font-medium tooltip cursor-pointer ml-2"
												title="전년 동월 (<fmt:formatNumber value="${pastVO.managectTot}" />원) 대비 <fmt:formatNumber value="${gap}" pattern="0.#" />% 증가">
												<fmt:formatNumber value="${gap}" pattern="0.#" />
												%
												<svg xmlns="http://www.w3.org/2000/svg" width="24"
													height="24" viewBox="0 0 24 24" fill="none"
													stroke="currentColor" stroke-width="2"
													stroke-linecap="round" stroke-linejoin="round"
													icon-name="chevron-up" data-lucide="chevron-up"
													class="lucide lucide-chevron-up w-4 h-4 ml-0.5">
													<polyline points="18 15 12 9 6 15"></polyline></svg>
											</div>
										</c:when>
										<c:when test="${latestVO.managectTot == low}">
											<div
												class="text-danger flex text-xs font-medium tooltip cursor-pointer ml-2"
												title="전년 동월 (<fmt:formatNumber value="${pastVO.managectTot}" />원) 대비 <fmt:formatNumber value="${gap}" pattern="0.#" />% 감소">
												<fmt:formatNumber value="${gap}" pattern="0.#" />
												%
												<svg xmlns="http://www.w3.org/2000/svg" width="24"
													height="24" viewBox="0 0 24 24" fill="none"
													stroke="currentColor" stroke-width="2"
													stroke-linecap="round" stroke-linejoin="round"
													icon-name="chevron-down" data-lucide="chevron-down"
													class="lucide lucide-chevron-down w-4 h-4 ml-0.5">
													<polyline points="6 9 12 15 18 9"></polyline></svg>
											</div>
										</c:when>
									</c:choose>
								</div>
							</div>
							<div class="col-span-12 sm:col-span-6 md:col-span-4">
								<div class="mngctTitle font-bold">전기료</div>
								<div class="mt-1.5 flex items-center">
									<div class="text-base">
										<fmt:formatNumber value="${latestVO.managectElcty}" />
									</div>
									<c:set var="high"
										value="${latestVO.managectElcty > pastVO.managectElcty ? latestVO.managectElcty : pastVO.managectElcty}" />
									<c:set var="low"
										value="${latestVO.managectElcty < pastVO.managectElcty ? latestVO.managectElcty : pastVO.managectElcty}" />
									<c:set var="gap" value="${((high-low)/low)*100}" />
									<c:choose>
										<c:when test="${latestVO.managectElcty == high}">
											<div
												class="text-success flex text-xs font-medium tooltip cursor-pointer ml-2"
												title="전년 동월 (<fmt:formatNumber value="${pastVO.managectElcty}" />원) 대비 <fmt:formatNumber value="${gap}" pattern="0.#" />% 증가">
												<fmt:formatNumber value="${gap}" pattern="0.#" />
												%
												<svg xmlns="http://www.w3.org/2000/svg" width="24"
													height="24" viewBox="0 0 24 24" fill="none"
													stroke="currentColor" stroke-width="2"
													stroke-linecap="round" stroke-linejoin="round"
													icon-name="chevron-up" data-lucide="chevron-up"
													class="lucide lucide-chevron-up w-4 h-4 ml-0.5">
													<polyline points="18 15 12 9 6 15"></polyline></svg>
											</div>
										</c:when>
										<c:when test="${latestVO.managectElcty == low}">
											<div
												class="text-danger flex text-xs font-medium tooltip cursor-pointer ml-2"
												title="전년 동월 (<fmt:formatNumber value="${pastVO.managectElcty}" />원) 대비 <fmt:formatNumber value="${gap}" pattern="0.#" />% 감소">
												<fmt:formatNumber value="${gap}" pattern="0.#" />
												%
												<svg xmlns="http://www.w3.org/2000/svg" width="24"
													height="24" viewBox="0 0 24 24" fill="none"
													stroke="currentColor" stroke-width="2"
													stroke-linecap="round" stroke-linejoin="round"
													icon-name="chevron-down" data-lucide="chevron-down"
													class="lucide lucide-chevron-down w-4 h-4 ml-0.5">
													<polyline points="6 9 12 15 18 9"></polyline></svg>
											</div>
										</c:when>
									</c:choose>
								</div>
							</div>
							<div class="col-span-12 sm:col-span-6 md:col-span-4">
								<div class="mngctTitle font-bold">수도료</div>
								<div class="mt-1.5 flex items-center">
									<div class="text-base">
										<fmt:formatNumber value="${latestVO.managectWtr}" />
									</div>
									<c:set var="high"
										value="${latestVO.managectWtr > pastVO.managectWtr ? latestVO.managectWtr : pastVO.managectWtr}" />
									<c:set var="low"
										value="${latestVO.managectWtr < pastVO.managectWtr ? latestVO.managectWtr : pastVO.managectWtr}" />
									<c:set var="gap" value="${((high-low)/low)*100}" />
									<c:choose>
										<c:when test="${latestVO.managectWtr == high}">
											<div
												class="text-success flex text-xs font-medium tooltip cursor-pointer ml-2"
												title="전년 동월 (<fmt:formatNumber value="${pastVO.managectWtr}" />원) 대비 <fmt:formatNumber value="${gap}" pattern="0.#" />% 증가">
												<fmt:formatNumber value="${gap}" pattern="0.#" />
												%
												<svg xmlns="http://www.w3.org/2000/svg" width="24"
													height="24" viewBox="0 0 24 24" fill="none"
													stroke="currentColor" stroke-width="2"
													stroke-linecap="round" stroke-linejoin="round"
													icon-name="chevron-up" data-lucide="chevron-up"
													class="lucide lucide-chevron-up w-4 h-4 ml-0.5">
													<polyline points="18 15 12 9 6 15"></polyline></svg>
											</div>
										</c:when>
										<c:when test="${latestVO.managectWtr == low}">
											<div
												class="text-danger flex text-xs font-medium tooltip cursor-pointer ml-2"
												title="전년 동월 (<fmt:formatNumber value="${pastVO.managectWtr}" />원) 대비 <fmt:formatNumber value="${gap}" pattern="0.#" />% 감소">
												<fmt:formatNumber value="${gap}" pattern="0.#" />
												%
												<svg xmlns="http://www.w3.org/2000/svg" width="24"
													height="24" viewBox="0 0 24 24" fill="none"
													stroke="currentColor" stroke-width="2"
													stroke-linecap="round" stroke-linejoin="round"
													icon-name="chevron-down" data-lucide="chevron-down"
													class="lucide lucide-chevron-down w-4 h-4 ml-0.5">
													<polyline points="6 9 12 15 18 9"></polyline></svg>
											</div>
										</c:when>
									</c:choose>
								</div>
							</div>
							<div class="col-span-12 sm:col-span-6 md:col-span-4">
								<div class="mngctTitle font-bold">가스사용료</div>
								<div class="mt-1.5 flex items-center">
									<div class="text-base">
										<fmt:formatNumber value="${pastVO.managectHeat}" />
									</div>
									<c:set var="high"
										value="${latestVO.managectHeat > pastVO.managectHeat ? latestVO.managectHeat : pastVO.managectHeat}" />
									<c:set var="low"
										value="${latestVO.managectHeat < pastVO.managectHeat ? latestVO.managectHeat : pastVO.managectHeat}" />
									<c:set var="gap" value="${((high-low)/low)*100}" />
									<c:choose>
										<c:when test="${pastVO.managectHeat == high}">
											<div
												class="text-success flex text-xs font-medium tooltip cursor-pointer ml-2"
												title="당월 (<fmt:formatNumber value="${latestVO.managectHeat}" />원) 대비 <fmt:formatNumber value="${gap}" pattern="0.#" />% 높음">
												<fmt:formatNumber value="${gap}" pattern="0.#" />
												%
												<svg xmlns="http://www.w3.org/2000/svg" width="24"
													height="24" viewBox="0 0 24 24" fill="none"
													stroke="currentColor" stroke-width="2"
													stroke-linecap="round" stroke-linejoin="round"
													icon-name="chevron-up" data-lucide="chevron-up"
													class="lucide lucide-chevron-up w-4 h-4 ml-0.5">
													<polyline points="18 15 12 9 6 15"></polyline></svg>
											</div>
										</c:when>
										<c:when test="${pastVO.managectHeat == low}">
											<div
												class="text-danger flex text-xs font-medium tooltip cursor-pointer ml-2"
												title="당월 (<fmt:formatNumber value="${latestVO.managectHeat}" />원) 대비 <fmt:formatNumber value="${gap}" pattern="0.#" />% 낮음">
												<fmt:formatNumber value="${gap}" pattern="0.#" />
												%
												<svg xmlns="http://www.w3.org/2000/svg" width="24"
													height="24" viewBox="0 0 24 24" fill="none"
													stroke="currentColor" stroke-width="2"
													stroke-linecap="round" stroke-linejoin="round"
													icon-name="chevron-down" data-lucide="chevron-down"
													class="lucide lucide-chevron-down w-4 h-4 ml-0.5">
													<polyline points="6 9 12 15 18 9"></polyline></svg>
											</div>
										</c:when>
									</c:choose>
								</div>
							</div>
							<div class="col-span-12 sm:col-span-6 md:col-span-4">
								<div class="mngctTitle font-bold">청소비</div>
								<div class="mt-1.5 flex items-center">
									<div class="text-base">
										<fmt:formatNumber value="${latestVO.managectCln}" />
									</div>
									<c:set var="high"
										value="${latestVO.managectCln > pastVO.managectCln ? latestVO.managectCln : pastVO.managectCln}" />
									<c:set var="low"
										value="${latestVO.managectCln < pastVO.managectCln ? latestVO.managectCln : pastVO.managectCln}" />
									<c:set var="gap" value="${((high-low)/low)*100}" />
									<c:choose>
										<c:when test="${latestVO.managectCln == high}">
											<div
												class="text-success flex text-xs font-medium tooltip cursor-pointer ml-2"
												title="전년 동월 (<fmt:formatNumber value="${pastVO.managectCln}" />원) 대비 <fmt:formatNumber value="${gap}" pattern="0.#" />% 증가">
												<fmt:formatNumber value="${gap}" pattern="0.#" />
												%
												<svg xmlns="http://www.w3.org/2000/svg" width="24"
													height="24" viewBox="0 0 24 24" fill="none"
													stroke="currentColor" stroke-width="2"
													stroke-linecap="round" stroke-linejoin="round"
													icon-name="chevron-up" data-lucide="chevron-up"
													class="lucide lucide-chevron-up w-4 h-4 ml-0.5">
													<polyline points="18 15 12 9 6 15"></polyline></svg>
											</div>
										</c:when>
										<c:when test="${latestVO.managectCln == low}">
											<div
												class="text-danger flex text-xs font-medium tooltip cursor-pointer ml-2"
												title="전년 동월 (<fmt:formatNumber value="${pastVO.managectCln}" />원) 대비 <fmt:formatNumber value="${gap}" pattern="0.#" />% 감소">
												<fmt:formatNumber value="${gap}" pattern="0.#" />
												%
												<svg xmlns="http://www.w3.org/2000/svg" width="24"
													height="24" viewBox="0 0 24 24" fill="none"
													stroke="currentColor" stroke-width="2"
													stroke-linecap="round" stroke-linejoin="round"
													icon-name="chevron-down" data-lucide="chevron-down"
													class="lucide lucide-chevron-down w-4 h-4 ml-0.5">
													<polyline points="6 9 12 15 18 9"></polyline></svg>
											</div>
										</c:when>
									</c:choose>
								</div>
							</div>
							<div class="col-span-12 sm:col-span-6 md:col-span-4">
								<div class="mngctTitle font-bold">소독비</div>
								<div class="mt-1.5 flex items-center">
									<div class="text-base">
										<fmt:formatNumber value="${latestVO.managectDsnf}" />
									</div>
									<c:set var="high"
										value="${latestVO.managectDsnf > pastVO.managectDsnf ? latestVO.managectDsnf : pastVO.managectDsnf}" />
									<c:set var="low"
										value="${latestVO.managectDsnf < pastVO.managectDsnf ? latestVO.managectDsnf : pastVO.managectDsnf}" />
									<c:set var="gap" value="${((high-low)/low)*100}" />
									<c:choose>
										<c:when test="${latestVO.managectDsnf == high}">
											<div
												class="text-success flex text-xs font-medium tooltip cursor-pointer ml-2"
												title="전년 동월 (<fmt:formatNumber value="${pastVO.managectDsnf}" />원) 대비 <fmt:formatNumber value="${gap}" pattern="0.#" />% 증가">
												<fmt:formatNumber value="${gap}" pattern="0.#" />
												%
												<svg xmlns="http://www.w3.org/2000/svg" width="24"
													height="24" viewBox="0 0 24 24" fill="none"
													stroke="currentColor" stroke-width="2"
													stroke-linecap="round" stroke-linejoin="round"
													icon-name="chevron-up" data-lucide="chevron-up"
													class="lucide lucide-chevron-up w-4 h-4 ml-0.5">
													<polyline points="18 15 12 9 6 15"></polyline></svg>
											</div>
										</c:when>
										<c:when test="${latestVO.managectDsnf == low}">
											<div
												class="text-danger flex text-xs font-medium tooltip cursor-pointer ml-2"
												title="전년 동월 (<fmt:formatNumber value="${pastVO.managectDsnf}" />원) 대비 <fmt:formatNumber value="${gap}" pattern="0.#" />% 감소">
												<fmt:formatNumber value="${gap}" pattern="0.#" />
												%
												<svg xmlns="http://www.w3.org/2000/svg" width="24"
													height="24" viewBox="0 0 24 24" fill="none"
													stroke="currentColor" stroke-width="2"
													stroke-linecap="round" stroke-linejoin="round"
													icon-name="chevron-down" data-lucide="chevron-down"
													class="lucide lucide-chevron-down w-4 h-4 ml-0.5">
													<polyline points="6 9 12 15 18 9"></polyline></svg>
											</div>
										</c:when>
									</c:choose>
								</div>
							</div>
							<div class="col-span-12 sm:col-span-6 md:col-span-4">
								<div class="mngctTitle font-bold">수선유지비</div>
								<div class="mt-1.5 flex items-center">
									<div class="text-base">
										<fmt:formatNumber value="${latestVO.managectRepair}" />
									</div>
									<c:set var="high"
										value="${latestVO.managectRepair > pastVO.managectRepair ? latestVO.managectRepair : pastVO.managectRepair}" />
									<c:set var="low"
										value="${latestVO.managectRepair < pastVO.managectRepair ? latestVO.managectRepair : pastVO.managectRepair}" />
									<c:set var="gap" value="${((high-low)/low)*100}" />
									<c:choose>
										<c:when test="${latestVO.managectRepair == high}">
											<div
												class="text-success flex text-xs font-medium tooltip cursor-pointer ml-2"
												title="전년 동월 (<fmt:formatNumber value="${pastVO.managectRepair}" />원) 대비 <fmt:formatNumber value="${gap}" pattern="0.#" />% 증가">
												<fmt:formatNumber value="${gap}" pattern="0.#" />
												%
												<svg xmlns="http://www.w3.org/2000/svg" width="24"
													height="24" viewBox="0 0 24 24" fill="none"
													stroke="currentColor" stroke-width="2"
													stroke-linecap="round" stroke-linejoin="round"
													icon-name="chevron-up" data-lucide="chevron-up"
													class="lucide lucide-chevron-up w-4 h-4 ml-0.5">
													<polyline points="18 15 12 9 6 15"></polyline></svg>
											</div>
										</c:when>
										<c:when test="${latestVO.managectRepair == low}">
											<div
												class="text-danger flex text-xs font-medium tooltip cursor-pointer ml-2"
												title="전년 동월 (<fmt:formatNumber value="${pastVO.managectRepair}" />원) 대비 <fmt:formatNumber value="${gap}" pattern="0.#" />% 감소">
												<fmt:formatNumber value="${gap}" pattern="0.#" />
												%
												<svg xmlns="http://www.w3.org/2000/svg" width="24"
													height="24" viewBox="0 0 24 24" fill="none"
													stroke="currentColor" stroke-width="2"
													stroke-linecap="round" stroke-linejoin="round"
													icon-name="chevron-down" data-lucide="chevron-down"
													class="lucide lucide-chevron-down w-4 h-4 ml-0.5">
													<polyline points="6 9 12 15 18 9"></polyline></svg>
											</div>
										</c:when>
									</c:choose>
								</div>
							</div>
							<div class="col-span-12 sm:col-span-6 md:col-span-4">
								<div class="mngctTitle font-bold">승강기 유지비</div>
								<div class="mt-1.5 flex items-center">
									<div class="text-base">
										<fmt:formatNumber value="${latestVO.managectElvtr}" />
									</div>
									<c:set var="high"
										value="${latestVO.managectElvtr > pastVO.managectElvtr ? latestVO.managectElvtr : pastVO.managectElvtr}" />
									<c:set var="low"
										value="${latestVO.managectElvtr < pastVO.managectElvtr ? latestVO.managectElvtr : pastVO.managectElvtr}" />
									<c:set var="gap" value="${((high-low)/low)*100}" />
									<c:choose>
										<c:when test="${latestVO.managectElvtr == high}">
											<div
												class="text-success flex text-xs font-medium tooltip cursor-pointer ml-2"
												title="전년 동월 (<fmt:formatNumber value="${pastVO.managectElvtr}" />원) 대비 <fmt:formatNumber value="${gap}" pattern="0.#" />% 증가">
												<fmt:formatNumber value="${gap}" pattern="0.#" />
												%
												<svg xmlns="http://www.w3.org/2000/svg" width="24"
													height="24" viewBox="0 0 24 24" fill="none"
													stroke="currentColor" stroke-width="2"
													stroke-linecap="round" stroke-linejoin="round"
													icon-name="chevron-up" data-lucide="chevron-up"
													class="lucide lucide-chevron-up w-4 h-4 ml-0.5">
													<polyline points="18 15 12 9 6 15"></polyline></svg>
											</div>
										</c:when>
										<c:when test="${latestVO.managectElvtr == low}">
											<div
												class="text-danger flex text-xs font-medium tooltip cursor-pointer ml-2"
												title="전년 동월 (<fmt:formatNumber value="${pastVO.managectElvtr}" />원) 대비 <fmt:formatNumber value="${gap}" pattern="0.#" />% 감소">
												<fmt:formatNumber value="${gap}" pattern="0.#" />
												%
												<svg xmlns="http://www.w3.org/2000/svg" width="24"
													height="24" viewBox="0 0 24 24" fill="none"
													stroke="currentColor" stroke-width="2"
													stroke-linecap="round" stroke-linejoin="round"
													icon-name="chevron-down" data-lucide="chevron-down"
													class="lucide lucide-chevron-down w-4 h-4 ml-0.5">
													<polyline points="6 9 12 15 18 9"></polyline></svg>
											</div>
										</c:when>
									</c:choose>
								</div>
							</div>
							<div class="col-span-12 sm:col-span-6 md:col-span-4">
								<div class="mngctTitle font-bold">건물 보험료</div>
								<div class="mt-1.5 flex items-center">
									<div class="text-base">631</div>
									<div
										class="text-success flex text-xs font-medium tooltip cursor-pointer ml-2"
										title="당월 (631원) 대비 0% 높음">
										0%
										<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
											viewBox="0 0 24 24" fill="none" stroke="currentColor"
											stroke-width="2" stroke-linecap="round"
											stroke-linejoin="round" icon-name="chevron-up"
											data-lucide="chevron-up"
											class="lucide lucide-chevron-up w-4 h-4 ml-0.5">
											<polyline points="18 15 12 9 6 15"></polyline></svg>
									</div>
								</div>
							</div>
						</div>
						<!-- 전년 동월 총 공용 관리비 -->
						<div class="tab-pane grid grid-cols-12 gap-y-8 gap-x-10"
							id="past-report" role="tabpanel"
							aria-labelledby="past-report-tab" style="width: 601px;">
							<div class="col-span-6 sm:col-span-6 md:col-span-4">
								<div class="mngctTitle font-bold">총 납부금액</div>
								<div class="mt-1.5 flex items-center">
									<div class="text-base">
										<fmt:formatNumber value="${pastVO.managectTot}" />
									</div>
									<c:set var="high"
										value="${latestVO.managectTot > pastVO.managectTot ? latestVO.managectTot : pastVO.managectTot}" />
									<c:set var="low"
										value="${latestVO.managectTot < pastVO.managectTot ? latestVO.managectTot : pastVO.managectTot}" />
									<c:set var="gap" value="${((high-low)/low)*100}" />
									<c:choose>
										<c:when test="${pastVO.managectTot == high}">
											<div
												class="text-success flex text-xs font-medium tooltip cursor-pointer ml-2"
												title="당월 (<fmt:formatNumber value="${latestVO.managectTot}" />원) 대비 <fmt:formatNumber value="${gap}" pattern="0.#" />% 높음">
												<fmt:formatNumber value="${gap}" pattern="0.#" />
												%
												<svg xmlns="http://www.w3.org/2000/svg" width="24"
													height="24" viewBox="0 0 24 24" fill="none"
													stroke="currentColor" stroke-width="2"
													stroke-linecap="round" stroke-linejoin="round"
													icon-name="chevron-up" data-lucide="chevron-up"
													class="lucide lucide-chevron-up w-4 h-4 ml-0.5">
													<polyline points="18 15 12 9 6 15"></polyline></svg>
											</div>
										</c:when>
										<c:when test="${pastVO.managectTot == low}">
											<div
												class="text-danger flex text-xs font-medium tooltip cursor-pointer ml-2"
												title="당월 (<fmt:formatNumber value="${latestVO.managectTot}" />원) 대비 <fmt:formatNumber value="${gap}" pattern="0.#" />% 낮음">
												<fmt:formatNumber value="${gap}" pattern="0.#" />
												%
												<svg xmlns="http://www.w3.org/2000/svg" width="24"
													height="24" viewBox="0 0 24 24" fill="none"
													stroke="currentColor" stroke-width="2"
													stroke-linecap="round" stroke-linejoin="round"
													icon-name="chevron-down" data-lucide="chevron-down"
													class="lucide lucide-chevron-down w-4 h-4 ml-0.5">
													<polyline points="6 9 12 15 18 9"></polyline></svg>
											</div>
										</c:when>
									</c:choose>
								</div>
							</div>
							<div class="col-span-12 sm:col-span-6 md:col-span-4">
								<div class="mngctTitle font-bold">전기료</div>
								<div class="mt-1.5 flex items-center">
									<div class="text-base">
										<fmt:formatNumber value="${pastVO.managectElcty}" />
									</div>
									<c:set var="high"
										value="${latestVO.managectElcty > pastVO.managectElcty ? latestVO.managectElcty : pastVO.managectElcty}" />
									<c:set var="low"
										value="${latestVO.managectElcty < pastVO.managectElcty ? latestVO.managectElcty : pastVO.managectElcty}" />
									<c:set var="gap" value="${((high-low)/low)*100}" />
									<c:choose>
										<c:when test="${pastVO.managectElcty == high}">
											<div
												class="text-success flex text-xs font-medium tooltip cursor-pointer ml-2"
												title="당월 (<fmt:formatNumber value="${latestVO.managectElcty}" />원) 대비 <fmt:formatNumber value="${gap}" pattern="0.#" />% 높음">
												<fmt:formatNumber value="${gap}" pattern="0.#" />
												%
												<svg xmlns="http://www.w3.org/2000/svg" width="24"
													height="24" viewBox="0 0 24 24" fill="none"
													stroke="currentColor" stroke-width="2"
													stroke-linecap="round" stroke-linejoin="round"
													icon-name="chevron-up" data-lucide="chevron-up"
													class="lucide lucide-chevron-up w-4 h-4 ml-0.5">
													<polyline points="18 15 12 9 6 15"></polyline></svg>
											</div>
										</c:when>
										<c:when test="${pastVO.managectElcty == low}">
											<div
												class="text-danger flex text-xs font-medium tooltip cursor-pointer ml-2"
												title="당월 (<fmt:formatNumber value="${latestVO.managectElcty}" />원) 대비 <fmt:formatNumber value="${gap}" pattern="0.#" />% 낮음">
												<fmt:formatNumber value="${gap}" pattern="0.#" />
												%
												<svg xmlns="http://www.w3.org/2000/svg" width="24"
													height="24" viewBox="0 0 24 24" fill="none"
													stroke="currentColor" stroke-width="2"
													stroke-linecap="round" stroke-linejoin="round"
													icon-name="chevron-down" data-lucide="chevron-down"
													class="lucide lucide-chevron-down w-4 h-4 ml-0.5">
													<polyline points="6 9 12 15 18 9"></polyline></svg>
											</div>
										</c:when>
									</c:choose>
								</div>
							</div>
							<div class="col-span-12 sm:col-span-6 md:col-span-4">
								<div class="mngctTitle font-bold">수도료</div>
								<div class="mt-1.5 flex items-center">
									<div class="text-base">
										<fmt:formatNumber value="${pastVO.managectWtr}" />
									</div>
									<c:set var="high"
										value="${latestVO.managectWtr > pastVO.managectWtr ? latestVO.managectWtr : pastVO.managectWtr}" />
									<c:set var="low"
										value="${latestVO.managectWtr < pastVO.managectWtr ? latestVO.managectWtr : pastVO.managectWtr}" />
									<c:set var="gap" value="${((high-low)/low)*100}" />
									<c:choose>
										<c:when test="${pastVO.managectWtr == high}">
											<div
												class="text-success flex text-xs font-medium tooltip cursor-pointer ml-2"
												title="당월 (<fmt:formatNumber value="${latestVO.managectWtr}" />원) 대비 <fmt:formatNumber value="${gap}" pattern="0.#" />% 높음">
												<fmt:formatNumber value="${gap}" pattern="0.#" />
												%
												<svg xmlns="http://www.w3.org/2000/svg" width="24"
													height="24" viewBox="0 0 24 24" fill="none"
													stroke="currentColor" stroke-width="2"
													stroke-linecap="round" stroke-linejoin="round"
													icon-name="chevron-up" data-lucide="chevron-up"
													class="lucide lucide-chevron-up w-4 h-4 ml-0.5">
													<polyline points="18 15 12 9 6 15"></polyline></svg>
											</div>
										</c:when>
										<c:when test="${pastVO.managectWtr == low}">
											<div
												class="text-danger flex text-xs font-medium tooltip cursor-pointer ml-2"
												title="당월 (<fmt:formatNumber value="${latestVO.managectWtr}" />원) 대비 <fmt:formatNumber value="${gap}" pattern="0.#" />% 낮음">
												<fmt:formatNumber value="${gap}" pattern="0.#" />
												%
												<svg xmlns="http://www.w3.org/2000/svg" width="24"
													height="24" viewBox="0 0 24 24" fill="none"
													stroke="currentColor" stroke-width="2"
													stroke-linecap="round" stroke-linejoin="round"
													icon-name="chevron-down" data-lucide="chevron-down"
													class="lucide lucide-chevron-down w-4 h-4 ml-0.5">
													<polyline points="6 9 12 15 18 9"></polyline></svg>
											</div>
										</c:when>
									</c:choose>
								</div>
							</div>
							<div class="col-span-12 sm:col-span-6 md:col-span-4">
								<div class="mngctTitle font-bold">가스사용료</div>
								<div class="mt-1.5 flex items-center">
									<div class="text-base">
										<fmt:formatNumber value="${latestVO.managectHeat}" />
									</div>
									<c:set var="high"
										value="${latestVO.managectHeat > pastVO.managectHeat ? latestVO.managectHeat : pastVO.managectHeat}" />
									<c:set var="low"
										value="${latestVO.managectHeat < pastVO.managectHeat ? latestVO.managectHeat : pastVO.managectHeat}" />
									<c:set var="gap" value="${((high-low)/low)*100}" />
									<c:choose>
										<c:when test="${latestVO.managectHeat == high}">
											<div
												class="text-success flex text-xs font-medium tooltip cursor-pointer ml-2"
												title="전년 동월 (<fmt:formatNumber value="${pastVO.managectHeat}" />원) 대비 <fmt:formatNumber value="${gap}" pattern="0.#" />% 증가">
												<fmt:formatNumber value="${gap}" pattern="0.#" />
												%
												<svg xmlns="http://www.w3.org/2000/svg" width="24"
													height="24" viewBox="0 0 24 24" fill="none"
													stroke="currentColor" stroke-width="2"
													stroke-linecap="round" stroke-linejoin="round"
													icon-name="chevron-up" data-lucide="chevron-up"
													class="lucide lucide-chevron-up w-4 h-4 ml-0.5">
													<polyline points="18 15 12 9 6 15"></polyline></svg>
											</div>
										</c:when>
										<c:when test="${latestVO.managectHeat == low}">
											<div
												class="text-danger flex text-xs font-medium tooltip cursor-pointer ml-2"
												title="전년 동월 (<fmt:formatNumber value="${pastVO.managectHeat}" />원) 대비 <fmt:formatNumber value="${gap}" pattern="0.#" />% 감소">
												<fmt:formatNumber value="${gap}" pattern="0.#" />
												%
												<svg xmlns="http://www.w3.org/2000/svg" width="24"
													height="24" viewBox="0 0 24 24" fill="none"
													stroke="currentColor" stroke-width="2"
													stroke-linecap="round" stroke-linejoin="round"
													icon-name="chevron-down" data-lucide="chevron-down"
													class="lucide lucide-chevron-down w-4 h-4 ml-0.5">
													<polyline points="6 9 12 15 18 9"></polyline></svg>
											</div>
										</c:when>
									</c:choose>
								</div>
							</div>
							<div class="col-span-12 sm:col-span-6 md:col-span-4">
								<div class="mngctTitle font-bold">청소비</div>
								<div class="mt-1.5 flex items-center">
									<div class="text-base">
										<fmt:formatNumber value="${pastVO.managectCln}" />
									</div>
									<c:set var="high"
										value="${latestVO.managectCln > pastVO.managectCln ? latestVO.managectCln : pastVO.managectCln}" />
									<c:set var="low"
										value="${latestVO.managectCln < pastVO.managectCln ? latestVO.managectCln : pastVO.managectCln}" />
									<c:set var="gap" value="${((high-low)/low)*100}" />
									<c:choose>
										<c:when test="${pastVO.managectCln == high}">
											<div
												class="text-success flex text-xs font-medium tooltip cursor-pointer ml-2"
												title="당월 (<fmt:formatNumber value="${latestVO.managectCln}" />원) 대비 <fmt:formatNumber value="${gap}" pattern="0.#" />% 높음">
												<fmt:formatNumber value="${gap}" pattern="0.#" />
												%
												<svg xmlns="http://www.w3.org/2000/svg" width="24"
													height="24" viewBox="0 0 24 24" fill="none"
													stroke="currentColor" stroke-width="2"
													stroke-linecap="round" stroke-linejoin="round"
													icon-name="chevron-up" data-lucide="chevron-up"
													class="lucide lucide-chevron-up w-4 h-4 ml-0.5">
													<polyline points="18 15 12 9 6 15"></polyline></svg>
											</div>
										</c:when>
										<c:when test="${pastVO.managectCln == low}">
											<div
												class="text-danger flex text-xs font-medium tooltip cursor-pointer ml-2"
												title="당월 (<fmt:formatNumber value="${latestVO.managectCln}" />원) 대비 <fmt:formatNumber value="${gap}" pattern="0.#" />% 낮음">
												<fmt:formatNumber value="${gap}" pattern="0.#" />
												%
												<svg xmlns="http://www.w3.org/2000/svg" width="24"
													height="24" viewBox="0 0 24 24" fill="none"
													stroke="currentColor" stroke-width="2"
													stroke-linecap="round" stroke-linejoin="round"
													icon-name="chevron-down" data-lucide="chevron-down"
													class="lucide lucide-chevron-down w-4 h-4 ml-0.5">
													<polyline points="6 9 12 15 18 9"></polyline></svg>
											</div>
										</c:when>
									</c:choose>
								</div>
							</div>
							<div class="col-span-12 sm:col-span-6 md:col-span-4">
								<div class="mngctTitle font-bold">소독비</div>
								<div class="mt-1.5 flex items-center">
									<div class="text-base">
										<fmt:formatNumber value="${pastVO.managectDsnf}" />
									</div>
									<c:set var="high"
										value="${latestVO.managectDsnf > pastVO.managectDsnf ? latestVO.managectDsnf : pastVO.managectDsnf}" />
									<c:set var="low"
										value="${latestVO.managectDsnf < pastVO.managectDsnf ? latestVO.managectDsnf : pastVO.managectDsnf}" />
									<c:set var="gap" value="${((high-low)/low)*100}" />
									<c:choose>
										<c:when test="${pastVO.managectDsnf == high}">
											<div
												class="text-success flex text-xs font-medium tooltip cursor-pointer ml-2"
												title="당월 (<fmt:formatNumber value="${latestVO.managectDsnf}" />원) 대비 <fmt:formatNumber value="${gap}" pattern="0.#" />% 높음">
												<fmt:formatNumber value="${gap}" pattern="0.#" />
												%
												<svg xmlns="http://www.w3.org/2000/svg" width="24"
													height="24" viewBox="0 0 24 24" fill="none"
													stroke="currentColor" stroke-width="2"
													stroke-linecap="round" stroke-linejoin="round"
													icon-name="chevron-up" data-lucide="chevron-up"
													class="lucide lucide-chevron-up w-4 h-4 ml-0.5">
													<polyline points="18 15 12 9 6 15"></polyline></svg>
											</div>
										</c:when>
										<c:when test="${pastVO.managectDsnf == low}">
											<div
												class="text-danger flex text-xs font-medium tooltip cursor-pointer ml-2"
												title="당월 (<fmt:formatNumber value="${latestVO.managectDsnf}" />원) 대비 <fmt:formatNumber value="${gap}" pattern="0.#" />% 낮음">
												<fmt:formatNumber value="${gap}" pattern="0.#" />
												%
												<svg xmlns="http://www.w3.org/2000/svg" width="24"
													height="24" viewBox="0 0 24 24" fill="none"
													stroke="currentColor" stroke-width="2"
													stroke-linecap="round" stroke-linejoin="round"
													icon-name="chevron-down" data-lucide="chevron-down"
													class="lucide lucide-chevron-down w-4 h-4 ml-0.5">
													<polyline points="6 9 12 15 18 9"></polyline></svg>
											</div>
										</c:when>
									</c:choose>
								</div>
							</div>
							<div class="col-span-12 sm:col-span-6 md:col-span-4">
								<div class="mngctTitle font-bold">수선유지비</div>
								<div class="mt-1.5 flex items-center">
									<div class="text-base">
										<fmt:formatNumber value="${pastVO.managectRepair}" />
									</div>
									<c:set var="high"
										value="${latestVO.managectRepair > pastVO.managectRepair ? latestVO.managectRepair : pastVO.managectRepair}" />
									<c:set var="low"
										value="${latestVO.managectRepair < pastVO.managectRepair ? latestVO.managectRepair : pastVO.managectRepair}" />
									<c:set var="gap" value="${((high-low)/low)*100}" />
									<c:choose>
										<c:when test="${pastVO.managectRepair == high}">
											<div
												class="text-success flex text-xs font-medium tooltip cursor-pointer ml-2"
												title="당월 (<fmt:formatNumber value="${latestVO.managectRepair}" />원) 대비 <fmt:formatNumber value="${gap}" pattern="0.#" />% 높음">
												<fmt:formatNumber value="${gap}" pattern="0.#" />
												%
												<svg xmlns="http://www.w3.org/2000/svg" width="24"
													height="24" viewBox="0 0 24 24" fill="none"
													stroke="currentColor" stroke-width="2"
													stroke-linecap="round" stroke-linejoin="round"
													icon-name="chevron-up" data-lucide="chevron-up"
													class="lucide lucide-chevron-up w-4 h-4 ml-0.5">
													<polyline points="18 15 12 9 6 15"></polyline></svg>
											</div>
										</c:when>
										<c:when test="${pastVO.managectRepair == low}">
											<div
												class="text-danger flex text-xs font-medium tooltip cursor-pointer ml-2"
												title="당월 (<fmt:formatNumber value="${latestVO.managectRepair}" />원) 대비 <fmt:formatNumber value="${gap}" pattern="0.#" />% 낮음">
												<fmt:formatNumber value="${gap}" pattern="0.#" />
												%
												<svg xmlns="http://www.w3.org/2000/svg" width="24"
													height="24" viewBox="0 0 24 24" fill="none"
													stroke="currentColor" stroke-width="2"
													stroke-linecap="round" stroke-linejoin="round"
													icon-name="chevron-down" data-lucide="chevron-down"
													class="lucide lucide-chevron-down w-4 h-4 ml-0.5">
													<polyline points="6 9 12 15 18 9"></polyline></svg>
											</div>
										</c:when>
									</c:choose>
								</div>
							</div>
							<div class="col-span-12 sm:col-span-6 md:col-span-4">
								<div class="mngctTitle font-bold">승강기 유지비</div>
								<div class="mt-1.5 flex items-center">
									<div class="text-base">
										<fmt:formatNumber value="${pastVO.managectElvtr}" />
									</div>
									<c:set var="high"
										value="${latestVO.managectElvtr > pastVO.managectElvtr ? latestVO.managectElvtr : pastVO.managectElvtr}" />
									<c:set var="low"
										value="${latestVO.managectElvtr < pastVO.managectElvtr ? latestVO.managectElvtr : pastVO.managectElvtr}" />
									<c:set var="gap" value="${((high-low)/low)*100}" />
									<c:choose>
										<c:when test="${pastVO.managectElvtr == high}">
											<div
												class="text-success flex text-xs font-medium tooltip cursor-pointer ml-2"
												title="당월 (<fmt:formatNumber value="${latestVO.managectElvtr}" />원) 대비 <fmt:formatNumber value="${gap}" pattern="0.#" />% 높음">
												<fmt:formatNumber value="${gap}" pattern="0.#" />
												%
												<svg xmlns="http://www.w3.org/2000/svg" width="24"
													height="24" viewBox="0 0 24 24" fill="none"
													stroke="currentColor" stroke-width="2"
													stroke-linecap="round" stroke-linejoin="round"
													icon-name="chevron-up" data-lucide="chevron-up"
													class="lucide lucide-chevron-up w-4 h-4 ml-0.5">
													<polyline points="18 15 12 9 6 15"></polyline></svg>
											</div>
										</c:when>
										<c:when test="${pastVO.managectElvtr == low}">
											<div
												class="text-danger flex text-xs font-medium tooltip cursor-pointer ml-2"
												title="당월 (<fmt:formatNumber value="${latestVO.managectElvtr}" />원) 대비 <fmt:formatNumber value="${gap}" pattern="0.#" />% 낮음">
												<fmt:formatNumber value="${gap}" pattern="0.#" />
												%
												<svg xmlns="http://www.w3.org/2000/svg" width="24"
													height="24" viewBox="0 0 24 24" fill="none"
													stroke="currentColor" stroke-width="2"
													stroke-linecap="round" stroke-linejoin="round"
													icon-name="chevron-down" data-lucide="chevron-down"
													class="lucide lucide-chevron-down w-4 h-4 ml-0.5">
													<polyline points="6 9 12 15 18 9"></polyline></svg>
											</div>
										</c:when>
									</c:choose>
								</div>
							</div>
							<div class="col-span-12 sm:col-span-6 md:col-span-4">
								<div class="mngctTitle font-bold">건물 보험료</div>
								<div class="mt-1.5 flex items-center">
									<div class="text-base">631</div>
									<div
										class="text-success flex text-xs font-medium tooltip cursor-pointer ml-2"
										title="당월 (631원) 대비 0% 높음">
										0%
										<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
											viewBox="0 0 24 24" fill="none" stroke="currentColor"
											stroke-width="2" stroke-linecap="round"
											stroke-linejoin="round" icon-name="chevron-up"
											data-lucide="chevron-up"
											class="lucide lucide-chevron-up w-4 h-4 ml-0.5">
											<polyline points="18 15 12 9 6 15"></polyline></svg>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="flex mt-3">
						<a href="/mem/mypg/managectbbs/detail"
							class="btn btn-outline-secondary w-25 h-10 ml-auto font-bold"
							style="font-size: 15px;">자세히보기</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="flex justify-center mt-10"
		style="justify-content: space-between;">
		<div class="mngctList col-span-12 md:col-span-6 lg:col-span-4">
			<div class="intro-y block sm:flex items-center h-10">
				<h2 class="text-xl font-bold truncate mr-5">세대관리비 내역</h2>
			</div>
			<div class="intro-y box p-5 mt-2">
				<div
					class="flex text-slate-600 border-b border-slate-200 border-dashed pb-3 mb-3 font-semibold"
					style="font-size: 16px;">
					<div>연월</div>
					<div class="ml-auto">금액 (원)</div>
				</div>
				<c:forEach var="cmnuseManagectVO" items="${mangList}"
					varStatus="stat">
					<c:if test="${stat.index < 6}">
						<div class="flex items-center mb-5">
							<div class="flex items-center font-medium"
								style="font-size: 15px;">
								<div>${cmnuseManagectVO.strYm}</div>
							</div>
							<div class="ml-auto font-semibold" style="font-size: 15px;">
								<fmt:formatNumber value="${cmnuseManagectVO.managectTot}" />
							</div>
						</div>
					</c:if>
				</c:forEach>
				<a href="/mem/mypg/managectbbs/detail?rlvtYm=202301"
					class="btn btn-outline-secondary w-full border-slate-300 dark:border-darkmode-300 border-dashed relative justify-start mb-2">
					<span class="truncate mr-5">이전 내역 보기</span> <span
					class="w-8 h-8 absolute flex justify-center items-center right-0 top-0 bottom-0 my-auto ml-auto mr-0.5">
						<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
							viewBox="0 0 24 24" fill="none" stroke="currentColor"
							stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
							icon-name="arrow-right" data-lucide="arrow-right"
							class="lucide lucide-arrow-right w-4 h-4">
							<line x1="5" y1="12" x2="19" y2="12"></line>
							<polyline points="12 5 19 12 12 19"></polyline></svg>
				</span>
				</a>
			</div>
		</div>
		<div class="mngctList col-span-12 md:col-span-6 lg:col-span-4">
			<div class="intro-y block sm:flex items-center h-10"
				style="position: relative; z-index: 1;">
				<h2 class="text-xl font-bold truncate mr-5">전기료 내역</h2>
			</div>
			<div class="intro-y box p-5 mt-2">
				<div
					class="flex text-slate-600 border-b border-slate-200 border-dashed pb-3 mb-3 font-semibold"
					style="font-size: 16px;">
					<div>연월</div>
					<div class="ml-auto">금액 (원)</div>
				</div>
				<c:forEach var="cmnuseManagectVO" items="${mangList}"
					varStatus="stat">
					<c:if test="${stat.index < 6}">
						<div class="flex items-center mb-5">
							<div class="flex items-center font-medium"
								style="font-size: 15px;">
								<div>${cmnuseManagectVO.strYm}</div>
							</div>
							<div class="ml-auto font-semibold" style="font-size: 15px;">
								<fmt:formatNumber value="${cmnuseManagectVO.managectElcty}" />
							</div>
						</div>
					</c:if>
				</c:forEach>
				<a href="/mem/mypg/managectbbs/detail?rlvtYm=202301"
					class="btn btn-outline-secondary w-full border-slate-300 border-dashed relative justify-start mb-2">
					<span class="truncate mr-5">이전 내역 보기</span> <span
					class="w-8 h-8 absolute flex justify-center items-center right-0 top-0 bottom-0 my-auto ml-auto mr-0.5">
						<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
							viewBox="0 0 24 24" fill="none" stroke="currentColor"
							stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
							icon-name="arrow-right" data-lucide="arrow-right"
							class="lucide lucide-arrow-right w-4 h-4">
							<line x1="5" y1="12" x2="19" y2="12"></line>
							<polyline points="12 5 19 12 12 19"></polyline></svg>
				</span>
				</a>
			</div>
		</div>
		<div class="mngctList col-span-12 md:col-span-6 lg:col-span-4">
			<div class="intro-y block sm:flex items-center h-10">
				<h2 class="text-xl font-bold truncate mr-5">수도료 내역</h2>
			</div>
			<div class="intro-y box p-5 mt-2">
				<div
					class="flex text-slate-600 border-b border-slate-200 border-dashed pb-3 mb-3 font-semibold"
					style="font-size: 16px;">
					<div>연월</div>
					<div class="ml-auto">금액 (원)</div>
				</div>
				<c:forEach var="cmnuseManagectVO" items="${mangList}"
					varStatus="stat">
					<c:if test="${stat.index < 6}">
						<div class="flex items-center mb-5">
							<div class="flex items-center font-medium"
								style="font-size: 15px;">
								<div>${cmnuseManagectVO.strYm}</div>
							</div>
							<div class="ml-auto font-semibold" style="font-size: 15px;">
								<fmt:formatNumber value="${cmnuseManagectVO.managectWtr}" />
							</div>
						</div>
					</c:if>
				</c:forEach>
				<a href="/mem/mypg/managectbbs/detail?rlvtYm=202301"
					class="btn btn-outline-secondary w-full border-slate-300 dark:border-darkmode-300 border-dashed relative justify-start mb-2">
					<span class="truncate mr-5">이전 내역 보기</span> <span
					class="w-8 h-8 absolute flex justify-center items-center right-0 top-0 bottom-0 my-auto ml-auto mr-0.5">
						<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
							viewBox="0 0 24 24" fill="none" stroke="currentColor"
							stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
							icon-name="arrow-right" data-lucide="arrow-right"
							class="lucide lucide-arrow-right w-4 h-4">
							<line x1="5" y1="12" x2="19" y2="12"></line>
							<polyline points="12 5 19 12 12 19"></polyline></svg>
				</span>
				</a>
			</div>
		</div>
	</div>
</div>
<!-- BEGIN: Body -->


<!-- END: Body -->
<style type="text/css">
.mngctTitle {
	font-size: 17px;
}

.mngctList {
	width: 315px;
}

.text-base {
	font-size: 16px;
}

.text-success, .text-danger {
	font-size: 13px;
	font-weight: bold;
}
</style>
<script type="text/javascript" src="/resources/js/jquery-3.6.4.min.js"></script>
<script type="text/javascript">
	//월 선택 기능
	let monthPickerElement = document.getElementById("monthPicker");
	let currentMonthElement = document.getElementById("currentMonth");
	let selectedMonth = new Date(2023, 6); // 기본으로 2023년 7월로 설정

	// 월 변경 함수: 이전 달로 변경
	function previousMonth() {
		selectedMonth.setMonth(selectedMonth.getMonth() - 1);
		updateMonth();
	}

	// 월 변경 함수: 다음 달로 변경
	function nextMonth() {
		selectedMonth.setMonth(selectedMonth.getMonth() + 1);
		updateMonth();
	}

	// 월 업데이트 함수: 월 텍스트를 변경
	function updateMonth() {
		let year = selectedMonth.getFullYear();
		let month = selectedMonth.toLocaleString("default", {
			month : "long"
		});
		currentMonthElement.textContent = year + " - " + month;
	}

	// 초기 월 설정 및 표시
	updateMonth();

	// 납부기한 설정 기능
	let dueDateElement = document.getElementById("dueDate");
	let currentDate = new Date();
	let currentMonth = currentDate.getMonth() + 1; // 현재 월을 1부터 12로 설정
	let currentYear = currentDate.getFullYear();
	let lastDay = new Date(currentYear, currentMonth, 0).getDate();
	let formattedMonth = currentMonth.toString().padStart(2, "0");
	let dueDate = currentYear + "-" + formattedMonth + "-" + lastDay;
	dueDateElement.innerText = "납부기한: " + dueDate;

	$(function() {
		// 메뉴 경로 표시 (상단 메뉴)
		$("#main_menu").html("마이페이지");
		$("#sub_menu").html("관리비 조회");

		// 좌측 메뉴 경로 표시, 선택 효과 적용
		$(".side-nav > ul > li > .side-menu").on("click", function() {
			// 좌측 메뉴 선택 시 효과 적용
			$(".side-menu").removeClass("side-menu--active");
			$(this).addClass("side-menu--active");

			// 메뉴 경로 표시 (좌측 메뉴)
			var sub = $(this).find(".side-menu__title").text();
			console.log(sub.trim());
			$("#sub_menu").html(sub.trim());
		});

		//========================== 파일 다운로드 ===========================
		$("#btnDownload").on("click", function() {

			jQuery.ajax({
				url : "/emp/aa/mngcmnusemanagect/download",
				type : "get",
				xhrFields : {
					responseType : "blob"
				},
				success : function(data) {
					let a = document.createElement("a");
					let url = window.URL.createObjectURL(data);
					let filename = "Dongil_202305.xls";

					a.href = url;
					a.download = filename;
					a.click();
					window.URL.revokeObjectURL(url);
				},
				error : function(xhr, status, error) {
					console.log('Error:', error);
				}
			});
		});
		//=================================================================
	});
</script>

