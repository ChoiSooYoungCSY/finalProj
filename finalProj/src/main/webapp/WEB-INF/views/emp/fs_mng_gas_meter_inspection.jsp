<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<div class="col-span-12 lg:col-span-3 2xl:col-span-2">
    <!-- BEGIN: Menu -->
    <div class="intro-y box bg-primary p-4 mt-0 text-lg" style="height: 100%;">
    	<nav class="side-nav">
		    <ul>
		        <li>
		            <a href="javascript:;" class="side-menu">
		                <div class="side-menu__icon"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="home" data-lucide="home" class="lucide lucide-home"><path d="M3 9l9-7 9 7v11a2 2 0 01-2 2H5a2 2 0 01-2-2z"></path></svg></div>
		                <div class="side-menu__title"> 회사정보 관리
		                    <div class="side-menu__sub-icon"> <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="chevron-down" data-lucide="chevron-down" class="lucide lucide-chevron-down"></svg> </div>
		                </div>
		            </a>
		            <ul class="side-menu-ul" style="display: none;">
		                <li>
		                    <a href="/emp/fs/mngorgcht" class="side-menu side-menu--active">
		                        <div class="side-menu__icon"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="activity" data-lucide="activity" class="lucide lucide-activity"><polyline points="22 12 18 12 15 21 9 3 6 12 2 12"></polyline></svg></div>
		                        <div class="side-menu__title"> 조직도 </div>
		                    </a>
		                </li>
		                <li>
		                    <a href="/emp/fs/mngemptelno" class="side-menu">
		                        <div class="side-menu__icon"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="activity" data-lucide="activity" class="lucide lucide-activity"><polyline points="22 12 18 12 15 21 9 3 6 12 2 12"></polyline></svg></div>
		                        <div class="side-menu__title"> 비상연락망 </div>
		                    </a>
		                </li>
		            </ul>
		        </li>
		        <li>
		            <a href="javascript:;" class="side-menu">
		            	<div class="side-menu__icon"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="box" data-lucide="box" class="lucide lucide-box"><path d="M21 16V8a2 2 0 00-1-1.73l-7-4a2 2 0 00-2 0l-7 4A2 2 0 003 8v8a2 2 0 001 1.73l7 4a2 2 0 002 0l7-4A2 2 0 0021 16z"></path><polyline points="3.27 6.96 12 12.01 20.73 6.96"></polyline><line x1="12" y1="22.08" x2="12" y2="12"></line></svg></div>
		                <div class="side-menu__title"> 아파트정보 관리
		                    <div class="side-menu__sub-icon"> <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="chevron-down" data-lucide="chevron-down" class="lucide lucide-chevron-down"></svg> </div>
		                </div>
		            </a>
		            <ul class="side-menu-ul" style="display: none;">
		                <li>
		                    <a href="/emp/fs/mngaptinfo" class="side-menu side-menu--active">
		                        <div class="side-menu__icon"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="activity" data-lucide="activity" class="lucide lucide-activity"><polyline points="22 12 18 12 15 21 9 3 6 12 2 12"></polyline></svg></div>
		                        <div class="side-menu__title"> 단지정보 </div>
		                    </a>
		                </li>
		                <li>
		                    <a href="/emp/fs/mnghpprinfo" class="side-menu">
		                        <div class="side-menu__icon"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="activity" data-lucide="activity" class="lucide lucide-activity"><polyline points="22 12 18 12 15 21 9 3 6 12 2 12"></polyline></svg></div>
		                        <div class="side-menu__title"> 평형정보 </div>
		                    </a>
		                </li>
		                <li>
		                    <a href="/emp/fs/mngcttpc" class="side-menu">
		                        <div class="side-menu__icon"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="activity" data-lucide="activity" class="lucide lucide-activity"><polyline points="22 12 18 12 15 21 9 3 6 12 2 12"></polyline></svg></div>
		                        <div class="side-menu__title"> 연락처 </div>
		                    </a>
		                </li>
		                <li>
		                    <a href="/emp/fs/mngestateinfo" class="side-menu">
		                        <div class="side-menu__icon"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="activity" data-lucide="activity" class="lucide lucide-activity"><polyline points="22 12 18 12 15 21 9 3 6 12 2 12"></polyline></svg></div>
		                        <div class="side-menu__title"> 부동산정보 </div>
		                    </a>
		                </li>
		            </ul>
		        </li>
		        <li>
		            <a href="javascript:;" class="side-menu">
		            	<div class="side-menu__icon"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="box" data-lucide="box" class="lucide lucide-box"><path d="M21 16V8a2 2 0 00-1-1.73l-7-4a2 2 0 00-2 0l-7 4A2 2 0 003 8v8a2 2 0 001 1.73l7 4a2 2 0 002 0l7-4A2 2 0 0021 16z"></path><polyline points="3.27 6.96 12 12.01 20.73 6.96"></polyline><line x1="12" y1="22.08" x2="12" y2="12"></line></svg></div>
		                <div class="side-menu__title"> 공용시설 관리
		                    <div class="side-menu__sub-icon"> <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="chevron-down" data-lucide="chevron-down" class="lucide lucide-chevron-down"></svg> </div>
		                </div>
		            </a>
		            <ul class="side-menu-ul" style="display: none;">
		                <li>
		                    <a href="/emp/fs/mnggym" class="side-menu side-menu--active">
		                        <div class="side-menu__icon"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="activity" data-lucide="activity" class="lucide lucide-activity"><polyline points="22 12 18 12 15 21 9 3 6 12 2 12"></polyline></svg></div>
		                        <div class="side-menu__title"> 헬스장 </div>
		                    </a>
		                </li>
		                <li>
		                    <a href="/emp/fs/mngpool" class="side-menu">
		                        <div class="side-menu__icon"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="activity" data-lucide="activity" class="lucide lucide-activity"><polyline points="22 12 18 12 15 21 9 3 6 12 2 12"></polyline></svg></div>
		                        <div class="side-menu__title"> 수영장 </div>
		                    </a>
		                </li>
		                <li>
		                    <a href="/emp/fs/mngglfpr" class="side-menu">
		                        <div class="side-menu__icon"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="activity" data-lucide="activity" class="lucide lucide-activity"><polyline points="22 12 18 12 15 21 9 3 6 12 2 12"></polyline></svg></div>
		                        <div class="side-menu__title"> 스크린골프장 </div>
		                    </a>
		                </li>
		                <li>
		                    <a href="/emp/fs/mngreadingroom" class="side-menu">
		                        <div class="side-menu__icon"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="activity" data-lucide="activity" class="lucide lucide-activity"><polyline points="22 12 18 12 15 21 9 3 6 12 2 12"></polyline></svg></div>
		                        <div class="side-menu__title"> 독서실 </div>
		                    </a>
		                </li>
		                <li>
		                    <a href="/emp/fs/mnglibrary" class="side-menu">
		                        <div class="side-menu__icon"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="activity" data-lucide="activity" class="lucide lucide-activity"><polyline points="22 12 18 12 15 21 9 3 6 12 2 12"></polyline></svg></div>
		                        <div class="side-menu__title"> 도서관 </div>
		                    </a>
		                </li>
		            </ul>
		        </li>
		        <li>
		            <a href="javascript:;" class="side-menu">
		            	<div class="side-menu__icon"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="box" data-lucide="box" class="lucide lucide-box"><path d="M21 16V8a2 2 0 00-1-1.73l-7-4a2 2 0 00-2 0l-7 4A2 2 0 003 8v8a2 2 0 001 1.73l7 4a2 2 0 002 0l7-4A2 2 0 0021 16z"></path><polyline points="3.27 6.96 12 12.01 20.73 6.96"></polyline><line x1="12" y1="22.08" x2="12" y2="12"></line></svg></div>
		                <div class="side-menu__title"> 검침기록 관리
		                    <div class="side-menu__sub-icon"> <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="chevron-down" data-lucide="chevron-down" class="lucide lucide-chevron-down"></svg> </div>
		                </div>
		            </a>
		            <ul class="side-menu-ul" style="display: none;">
		                <li>
		                    <a href="/emp/fs/mngelctymtinsp?rlvtYm=202307&hshldInfoNo=101101" class="side-menu side-menu--active">
		                        <div class="side-menu__icon"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="activity" data-lucide="activity" class="lucide lucide-activity"><polyline points="22 12 18 12 15 21 9 3 6 12 2 12"></polyline></svg></div>
		                        <div class="side-menu__title"> 전기 검침 </div>
		                    </a>
		                </li>
		                <li>
		                    <a href="/emp/fs/mngwtrmtinsp?rlvtYm=202307&hshldInfoNo=101101" class="side-menu">
		                        <div class="side-menu__icon"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="activity" data-lucide="activity" class="lucide lucide-activity"><polyline points="22 12 18 12 15 21 9 3 6 12 2 12"></polyline></svg></div>
		                        <div class="side-menu__title"> 수도 검침 </div>
		                    </a>
		                </li>
		                <li>
		                    <a href="/emp/fs/mnggasmtinsp?rlvtYm=202307&hshldInfoNo=101101" class="side-menu">
		                        <div class="side-menu__icon"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="activity" data-lucide="activity" class="lucide lucide-activity"><polyline points="22 12 18 12 15 21 9 3 6 12 2 12"></polyline></svg></div>
		                        <div class="side-menu__title"> 가스 검침 </div>
		                    </a>
		                </li>
		            </ul>
		        </li>
		        <li>
		            <a href="javascript:;" class="side-menu">
		            	<div class="side-menu__icon"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="box" data-lucide="box" class="lucide lucide-box"><path d="M21 16V8a2 2 0 00-1-1.73l-7-4a2 2 0 00-2 0l-7 4A2 2 0 003 8v8a2 2 0 001 1.73l7 4a2 2 0 002 0l7-4A2 2 0 0021 16z"></path><polyline points="3.27 6.96 12 12.01 20.73 6.96"></polyline><line x1="12" y1="22.08" x2="12" y2="12"></line></svg></div>
		                <div class="side-menu__title"> 차량통제 관리
		                    <div class="side-menu__sub-icon"> <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="chevron-down" data-lucide="chevron-down" class="lucide lucide-chevron-down"></svg> </div>
		                </div>
		            </a>
		            <ul class="side-menu-ul" style="display: none;">
		                <li>
		                    <a href="/emp/fs/mngvhcleinfo" class="side-menu side-menu--active">
		                        <div class="side-menu__icon"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="activity" data-lucide="activity" class="lucide lucide-activity"><polyline points="22 12 18 12 15 21 9 3 6 12 2 12"></polyline></svg></div>
		                        <div class="side-menu__title"> 입주민차량 </div>
		                    </a>
		                </li>
		                <li>
		                    <a href="/emp/fs/mngvisitvhcle" class="side-menu">
		                        <div class="side-menu__icon"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="activity" data-lucide="activity" class="lucide lucide-activity"><polyline points="22 12 18 12 15 21 9 3 6 12 2 12"></polyline></svg></div>
		                        <div class="side-menu__title"> 방문차량 </div>
		                    </a>
		                </li>
		                <li>
		                    <a href="/emp/fs/mngboombarrier" class="side-menu">
		                        <div class="side-menu__icon"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="activity" data-lucide="activity" class="lucide lucide-activity"><polyline points="22 12 18 12 15 21 9 3 6 12 2 12"></polyline></svg></div>
		                        <div class="side-menu__title"> 주차차단기 관리 </div>
		                    </a>
		                </li>
		            </ul>
		        </li>
		    </ul>
		</nav>
    </div>
    <!-- END: Menu -->
</div>
<!-- BEGIN: Body -->
<div class="bdy col-span-12 lg:col-span-9 2xl:col-span-10">
<h5 class="text-lg font-medium leading-none mt-0">시설/보안 > 검침기록 관리 > 가스 검침</h5>

<!-- latestVO : 가장 최근의 정보를 담고 있는 VO 객체 -->
<!-- pastVO : latestVO의 전년 동월 정보를 담고 있는 VO 객체 -->
<c:forEach var="vo" items="${voList}" varStatus="stat">
	<c:if test="${stat.index == 0}">
		<c:set var="latestVO" value="${vo}" />
		<c:set var="pastYm" value="${latestVO.rlvtYm - 100}" />
		<c:set var="hshldInfoNo" value="${vo.hshldInfoNo}" />
	</c:if>
	<c:if test="${vo.rlvtYm eq pastYm}">
		<c:set var="pastVO" value="${vo}" />
	</c:if>
</c:forEach>
<!-- 총액 계산 -->
<c:set var="sum" value="${0}" />
<c:forEach var="cmnuseManagectVO" items="${cmnuseManagectVOList}" varStatus="stat">
	<c:if test="${stat.index == 0}">
		<c:set var="sum" value="${sum + cmnuseManagectVO.managectWtr + cmnuseManagectVO.managectElcty}" />
	</c:if>
</c:forEach>

<div class="col-span-12 xl:col-span-9">
	<div class="report-box-2 intro-y mt-3">
	    <div class="box grid grid-cols-12">
	        <div class="col-span-12 lg:col-span-4 px-8 py-11 flex flex-col justify-center">
	            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="pie-chart" data-lucide="pie-chart" class="lucide lucide-pie-chart w-10 h-10 text-pending"><path d="M21.21 15.89A10 10 0 118 2.83"></path><path d="M22 12A10 10 0 0012 2v10z"></path></svg>
	            <div class="justify-start flex items-center text-2xl font-bold mt-12">전체 가스 사용량<svg title="23년 07월 기준 전체 가스 사용량" xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="alert-circle" data-lucide="alert-circle" class="lucide lucide-alert-circle tooltip w-4 h-4 ml-1.5"><circle cx="12" cy="12" r="10"></circle><line x1="12" y1="8" x2="12" y2="12"></line><line x1="12" y1="16" x2="12.01" y2="16"></line></svg> </div>
	            <div class="flex items-center justify-start mt-4">
	                <div class="relative text-2xl font-medium pl-10 ml-0.5"><span class="absolute text-xl font-medium top-0.5 left-0 -ml-0.5">㎥</span>
	                	&nbsp;&nbsp;<fmt:formatNumber value="${sum}" />
	                </div>
	                <a class="text-slate-500 ml-4" href=""> <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="refresh-ccw" data-lucide="refresh-ccw" class="lucide lucide-refresh-ccw w-4 h-4"><path d="M3 2v6h6"></path><path d="M21 12A9 9 0 006 5.3L3 8"></path><path d="M21 22v-6h-6"></path><path d="M3 12a9 9 0 0015 6.7l3-2.7"></path></svg> </a>
	            </div>
	            <div class="mt-4 text-slate-500 text-sm">마지막 업데이트 : 1 시간 전</div>
	            <button id="btnDownload" class="btn btn-outline-primary relative justify-start rounded-full mt-12 font-semibold" style="font-size: 15px;">&nbsp;&nbsp;&nbsp;Excel 다운로드
	                <span class="w-8 h-8 absolute flex justify-center items-center text-white rounded-full right-0 top-0 bottom-0 my-auto ml-auto mr-0.5 bg-primary">
	                <svg xmlns="http://www.w3.org/2000/svg" width="18" height="18" fill="currentColor" class="bi bi-arrow-down" viewBox="0 0 16 16">
						<path fill-rule="evenodd" d="M8 1a.5.5 0 0 1 .5.5v11.793l3.146-3.147a.5.5 0 0 1 .708.708l-4 4a.5.5 0 0 1-.708 0l-4-4a.5.5 0 0 1 .708-.708L7.5 13.293V1.5A.5.5 0 0 1 8 1z"/>
					</svg>
	                </span>
	            </button>
	        </div>
	        <div class="col-span-12 lg:col-span-8 p-6 border-t lg:border-t-0 lg:border-l border-slate-200 border-dashed">
		        <div class="flex mt-3">
					<div class="flex font-semibold ml-4 w-60 h-11">
						<select id="dong" name="dong" data-placeholder="검색" class="tom-select w-full mr-1" style="width: 90%; position: relative; z-index: 2;">
					        <option value="동 선택" class="hidden">동 선택</option>
					        <option value="101">101 동</option>
					        <option value="102">102 동</option>
					        <option value="103">103 동</option>
					        <option value="104">104 동</option>
					        <option value="105">105 동</option>
					        <option value="106">106 동</option>
					        <option value="107">107 동</option>
					        <option value="108">108 동</option>
					        <option value="109">109 동</option>
					        <option value="110">110 동</option>
					        <option value="111">111 동</option>
					        <option value="112">112 동</option>
					    </select>
						<select id="ho" name="ho" data-placeholder="검색" class="tom-select w-full">
					        <option value="호 선택" class="hidden">호 선택</option>
					        <option value="101">101 호</option>
					        <option value="102">102 호</option>
					        <option value="103">103 호</option>
					        <option value="201">201 호</option>
					        <option value="202">202 호</option>
					        <option value="203">203 호</option>
					        <option value="301">301 호</option>
					        <option value="302">302 호</option>
					        <option value="303">303 호</option>
					        <option value="401">401 호</option>
					        <option value="402">402 호</option>
					        <option value="403">403 호</option>
					        <option value="501">501 호</option>
					        <option value="502">502 호</option>
					        <option value="503">503 호</option>
					        <option value="601">601 호</option>
					        <option value="602">602 호</option>
					        <option value="603">603 호</option>
					        <option value="701">701 호</option>
					        <option value="702">702 호</option>
					        <option value="703">703 호</option>
					        <option value="801">801 호</option>
					        <option value="802">802 호</option>
					        <option value="803">803 호</option>
					        <option value="901">901 호</option>
					        <option value="902">902 호</option>
					        <option value="903">903 호</option>
					        <option value="1001">1001 호</option>
					        <option value="1002">1002 호</option>
					        <option value="1003">1003 호</option>
					        <option value="1101">1101 호</option>
					        <option value="1102">1102 호</option>
					        <option value="1103">1103 호</option>
					        <option value="1201">1201 호</option>
					        <option value="1202">1202 호</option>
					        <option value="1203">1203 호</option>
					        <option value="1301">1301 호</option>
					        <option value="1302">1302 호</option>
					        <option value="1303">1303 호</option>
					    </select>
					</div>
					<form id="frm" name="frm" method="get" action="/emp/aa/mnghshldmanagect">
						<input type="hidden" id="rlvtYm" name="rlvtYm" value="202307" />
						<input type="hidden" id="hshldInfoNo" name="hshldInfoNo" value="" />
					</form>
		        	<div class="flex ml-auto">
			            <ul class="nav nav-pills w-60 border border-slate-300 border-dashed rounded-md mx-auto p-1 mb-8 font-semibold" role="tablist" style="font-size: 15px;">
			                <li id="latest-report-tab" class="nav-item flex-1" role="presentation">
			                    <button class="nav-link w-full py-2 px-2 font-semibold active" data-tw-toggle="pill" data-tw-target="#latest-report"
			                    	 aria-controls="latest-report-tab" aria-selected="true" type="button" role="tab"> 현재 </button>
			                </li>
			                <li id="past-report-tab" class="nav-item flex-1" role="presentation">
			                    <button class="nav-link w-full py-2 px-2 font-semibold" data-tw-toggle="pill" data-tw-target="#past-report"
			                    	 aria-controls="past-report-tab" aria-selected="false" type="button" role="tab"> 전년 동월 </button>
			                </li>
			            </ul>
		        	</div>
	        	</div>
	            <div class="tab-content px-5 pb-5">
	            	<!-- 전기 검침 정보 -->
	            	<div class="tab-pane grid grid-cols-12 gap-y-8 gap-x-10 active" id="latest-report" role="tabpanel" aria-labelledby="latest-report-tab" style="width: 598px;">
						<div class="col-span-6 sm:col-span-6 md:col-span-4">
						    <div class="mngctTitle font-bold">총 가스 사용량</div>
						    <div class="mt-1.5 flex items-center">
						        <div class="text-base"><fmt:formatNumber value="${latestVO.managectTot}" /></div>
						        <c:set var="high" value="${latestVO.managectTot > pastVO.managectTot ? latestVO.managectTot : pastVO.managectTot}" />
						        <c:set var="low" value="${latestVO.managectTot < pastVO.managectTot ? latestVO.managectTot : pastVO.managectTot}" />
						        <c:set var="gap" value="${((high-low)/low)*100}" />
						        <c:choose>
						        	<c:when test="${latestVO.managectTot == high}">
							        	<div class="text-success flex text-xs font-medium tooltip cursor-pointer ml-2" title="전년 동월 (<fmt:formatNumber value="${pastVO.managectTot}" />㎥) 대비 <fmt:formatNumber value="${gap}" pattern="0.#" />% 증가">
							        		<fmt:formatNumber value="${gap}" pattern="0.#" />%<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="chevron-up" data-lucide="chevron-up" class="lucide lucide-chevron-up w-4 h-4 ml-0.5"><polyline points="18 15 12 9 6 15"></polyline></svg>
							        	</div>
						        	</c:when>
						        	<c:when test="${latestVO.managectTot == low}">
								        <div class="text-danger flex text-xs font-medium tooltip cursor-pointer ml-2" title="전년 동월 (<fmt:formatNumber value="${pastVO.managectTot}" />㎥) 대비 <fmt:formatNumber value="${gap}" pattern="0.#" />% 감소">
								        	<fmt:formatNumber value="${gap}" pattern="0.#" />%<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="chevron-down" data-lucide="chevron-down" class="lucide lucide-chevron-down w-4 h-4 ml-0.5"><polyline points="6 9 12 15 18 9"></polyline></svg>
								        </div>
						        	</c:when>
						        </c:choose>
						    </div>
						</div>
						<div class="col-span-12 sm:col-span-6 md:col-span-4">
						    <div class="mngctTitle font-bold">개별 누적 사용량</div>
						    <div class="mt-1.5 flex items-center">
						        <div class="text-base"><fmt:formatNumber value="${latestVO.managectElcty}" /></div>
						        <c:set var="high" value="${latestVO.managectElcty > pastVO.managectElcty ? latestVO.managectElcty : pastVO.managectElcty}" />
						        <c:set var="low" value="${latestVO.managectElcty < pastVO.managectElcty ? latestVO.managectElcty : pastVO.managectElcty}" />
						        <c:set var="gap" value="${((high-low)/low)*100}" />
						        <c:choose>
						        	<c:when test="${latestVO.managectElcty == high}">
							        	<div class="text-success flex text-xs font-medium tooltip cursor-pointer ml-2" title="전년 동월 (<fmt:formatNumber value="${pastVO.managectElcty}" />㎥) 대비 <fmt:formatNumber value="${gap}" pattern="0.#" />% 증가">
							        		<fmt:formatNumber value="${gap}" pattern="0.#" />%<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="chevron-up" data-lucide="chevron-up" class="lucide lucide-chevron-up w-4 h-4 ml-0.5"><polyline points="18 15 12 9 6 15"></polyline></svg>
							        	</div>
						        	</c:when>
						        	<c:when test="${latestVO.managectElcty == low}">
								        <div class="text-danger flex text-xs font-medium tooltip cursor-pointer ml-2" title="전년 동월 (<fmt:formatNumber value="${pastVO.managectElcty}" />㎥) 대비 <fmt:formatNumber value="${gap}" pattern="0.#" />% 감소">
								        	<fmt:formatNumber value="${gap}" pattern="0.#" />%<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="chevron-down" data-lucide="chevron-down" class="lucide lucide-chevron-down w-4 h-4 ml-0.5"><polyline points="6 9 12 15 18 9"></polyline></svg>
								        </div>
						        	</c:when>
						        </c:choose>
						    </div>
						</div>
						<div class="col-span-12 sm:col-span-6 md:col-span-4">
						    <div class="mngctTitle font-bold">보정 사용량</div>
						    <div class="mt-1.5 flex items-center">
						        <div class="text-base"><fmt:formatNumber value="${latestVO.managectWtr}" /></div>
						        <c:set var="high" value="${latestVO.managectWtr > pastVO.managectWtr ? latestVO.managectWtr : pastVO.managectWtr}" />
						        <c:set var="low" value="${latestVO.managectWtr < pastVO.managectWtr ? latestVO.managectWtr : pastVO.managectWtr}" />
						        <c:set var="gap" value="${((high-low)/low)*100}" />
						        <c:choose>
						        	<c:when test="${latestVO.managectWtr == high}">
							        	<div class="text-success flex text-xs font-medium tooltip cursor-pointer ml-2" title="전년 동월 (<fmt:formatNumber value="${pastVO.managectWtr}" />㎥) 대비 <fmt:formatNumber value="${gap}" pattern="0.#" />% 증가">
							        		<fmt:formatNumber value="${gap}" pattern="0.#" />%<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="chevron-up" data-lucide="chevron-up" class="lucide lucide-chevron-up w-4 h-4 ml-0.5"><polyline points="18 15 12 9 6 15"></polyline></svg>
							        	</div>
						        	</c:when>
						        	<c:when test="${latestVO.managectWtr == low}">
								        <div class="text-danger flex text-xs font-medium tooltip cursor-pointer ml-2" title="전년 동월 (<fmt:formatNumber value="${pastVO.managectWtr}" />㎥) 대비 <fmt:formatNumber value="${gap}" pattern="0.#" />% 감소">
								        	<fmt:formatNumber value="${gap}" pattern="0.#" />%<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="chevron-down" data-lucide="chevron-down" class="lucide lucide-chevron-down w-4 h-4 ml-0.5"><polyline points="6 9 12 15 18 9"></polyline></svg>
								        </div>
						        	</c:when>
						        </c:choose>
						    </div>
						</div>
						<div class="col-span-12 sm:col-span-6 md:col-span-4">
						    <div class="mngctTitle font-bold">당월 지침</div>
						    <div class="mt-1.5 flex items-center">
						        <div class="text-base"><fmt:formatNumber value="${pastVO.managectHeat}" /></div>
						        <c:set var="high" value="${latestVO.managectHeat > pastVO.managectHeat ? latestVO.managectHeat : pastVO.managectHeat}" />
						        <c:set var="low" value="${latestVO.managectHeat < pastVO.managectHeat ? latestVO.managectHeat : pastVO.managectHeat}" />
						        <c:set var="gap" value="${((high-low)/low)*100}" />
						        <c:choose>
						        	<c:when test="${pastVO.managectHeat == high}">
							        	<div class="text-success flex text-xs font-medium tooltip cursor-pointer ml-2" title="당월 (<fmt:formatNumber value="${latestVO.managectHeat}" />㎥) 대비 <fmt:formatNumber value="${gap}" pattern="0.#" />% 높음">
							        		<fmt:formatNumber value="${gap}" pattern="0.#" />%<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="chevron-up" data-lucide="chevron-up" class="lucide lucide-chevron-up w-4 h-4 ml-0.5"><polyline points="18 15 12 9 6 15"></polyline></svg>
							        	</div>
						        	</c:when>
						        	<c:when test="${pastVO.managectHeat == low}">
								        <div class="text-danger flex text-xs font-medium tooltip cursor-pointer ml-2" title="당월 (<fmt:formatNumber value="${latestVO.managectHeat}" />㎥) 대비 <fmt:formatNumber value="${gap}" pattern="0.#" />% 낮음">
								        	<fmt:formatNumber value="${gap}" pattern="0.#" />%<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="chevron-down" data-lucide="chevron-down" class="lucide lucide-chevron-down w-4 h-4 ml-0.5"><polyline points="6 9 12 15 18 9"></polyline></svg>
								        </div>
						        	</c:when>
						        </c:choose>
						    </div>
						</div>
						<div class="col-span-12 sm:col-span-6 md:col-span-4">
						    <div class="mngctTitle font-bold">기본 사용료</div>
						    <div class="mt-1.5 flex items-center">
						        <div class="text-base"><fmt:formatNumber value="${latestVO.managectCln}" /></div>
						        <c:set var="high" value="${latestVO.managectCln > pastVO.managectCln ? latestVO.managectCln : pastVO.managectCln}" />
						        <c:set var="low" value="${latestVO.managectCln < pastVO.managectCln ? latestVO.managectCln : pastVO.managectCln}" />
						        <c:set var="gap" value="${((high-low)/low)*100}" />
						        <c:choose>
						        	<c:when test="${latestVO.managectCln == high}">
							        	<div class="text-success flex text-xs font-medium tooltip cursor-pointer ml-2" title="전년 동월 (<fmt:formatNumber value="${pastVO.managectCln}" />원) 대비 <fmt:formatNumber value="${gap}" pattern="0.#" />% 증가">
							        		<fmt:formatNumber value="${gap}" pattern="0.#" />%<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="chevron-up" data-lucide="chevron-up" class="lucide lucide-chevron-up w-4 h-4 ml-0.5"><polyline points="18 15 12 9 6 15"></polyline></svg>
							        	</div>
						        	</c:when>
						        	<c:when test="${latestVO.managectCln == low}">
								        <div class="text-danger flex text-xs font-medium tooltip cursor-pointer ml-2" title="전년 동월 (<fmt:formatNumber value="${pastVO.managectCln}" />원) 대비 <fmt:formatNumber value="${gap}" pattern="0.#" />% 감소">
								        	<fmt:formatNumber value="${gap}" pattern="0.#" />%<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="chevron-down" data-lucide="chevron-down" class="lucide lucide-chevron-down w-4 h-4 ml-0.5"><polyline points="6 9 12 15 18 9"></polyline></svg>
								        </div>
						        	</c:when>
						        </c:choose>
						    </div>
						</div>
						<div class="col-span-12 sm:col-span-6 md:col-span-4">
						    <div class="mngctTitle font-bold">공급 가액</div>
						    <div class="mt-1.5 flex items-center">
						        <div class="text-base"><fmt:formatNumber value="${latestVO.managectDsnf}" /></div>
						        <c:set var="high" value="${latestVO.managectDsnf > pastVO.managectDsnf ? latestVO.managectDsnf : pastVO.managectDsnf}" />
						        <c:set var="low" value="${latestVO.managectDsnf < pastVO.managectDsnf ? latestVO.managectDsnf : pastVO.managectDsnf}" />
						        <c:set var="gap" value="${((high-low)/low)*100}" />
						        <c:choose>
						        	<c:when test="${latestVO.managectDsnf == high}">
							        	<div class="text-success flex text-xs font-medium tooltip cursor-pointer ml-2" title="전년 동월 (<fmt:formatNumber value="${pastVO.managectDsnf}" />원) 대비 <fmt:formatNumber value="${gap}" pattern="0.#" />% 증가">
							        		<fmt:formatNumber value="${gap}" pattern="0.#" />%<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="chevron-up" data-lucide="chevron-up" class="lucide lucide-chevron-up w-4 h-4 ml-0.5"><polyline points="18 15 12 9 6 15"></polyline></svg>
							        	</div>
						        	</c:when>
						        	<c:when test="${latestVO.managectDsnf == low}">
								        <div class="text-danger flex text-xs font-medium tooltip cursor-pointer ml-2" title="전년 동월 (<fmt:formatNumber value="${pastVO.managectDsnf}" />원) 대비 <fmt:formatNumber value="${gap}" pattern="0.#" />% 감소">
								        	<fmt:formatNumber value="${gap}" pattern="0.#" />%<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="chevron-down" data-lucide="chevron-down" class="lucide lucide-chevron-down w-4 h-4 ml-0.5"><polyline points="6 9 12 15 18 9"></polyline></svg>
								        </div>
						        	</c:when>
						        </c:choose>
						    </div>
						</div>
						<div class="col-span-12 sm:col-span-6 md:col-span-4">
						    <div class="mngctTitle font-bold">전월 지침</div>
						    <div class="mt-1.5 flex items-center">
						        <div class="text-base"><fmt:formatNumber value="${latestVO.managectRepair}" /></div>
						        <c:set var="high" value="${latestVO.managectRepair > pastVO.managectRepair ? latestVO.managectRepair : pastVO.managectRepair}" />
						        <c:set var="low" value="${latestVO.managectRepair < pastVO.managectRepair ? latestVO.managectRepair : pastVO.managectRepair}" />
						        <c:set var="gap" value="${((high-low)/low)*100}" />
						        <c:choose>
						        	<c:when test="${latestVO.managectRepair == high}">
							        	<div class="text-success flex text-xs font-medium tooltip cursor-pointer ml-2" title="전년 동월 (<fmt:formatNumber value="${pastVO.managectRepair}" />㎥) 대비 <fmt:formatNumber value="${gap}" pattern="0.#" />% 증가">
							        		<fmt:formatNumber value="${gap}" pattern="0.#" />%<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="chevron-up" data-lucide="chevron-up" class="lucide lucide-chevron-up w-4 h-4 ml-0.5"><polyline points="18 15 12 9 6 15"></polyline></svg>
							        	</div>
						        	</c:when>
						        	<c:when test="${latestVO.managectRepair == low}">
								        <div class="text-danger flex text-xs font-medium tooltip cursor-pointer ml-2" title="전년 동월 (<fmt:formatNumber value="${pastVO.managectRepair}" />㎥) 대비 <fmt:formatNumber value="${gap}" pattern="0.#" />% 감소">
								        	<fmt:formatNumber value="${gap}" pattern="0.#" />%<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="chevron-down" data-lucide="chevron-down" class="lucide lucide-chevron-down w-4 h-4 ml-0.5"><polyline points="6 9 12 15 18 9"></polyline></svg>
								        </div>
						        	</c:when>
						        </c:choose>
						    </div>
						</div>
						<div class="col-span-12 sm:col-span-6 md:col-span-4">
						    <div class="mngctTitle font-bold">에너지 보조금</div>
						    <div class="mt-1.5 flex items-center">
						        <div class="text-base"><fmt:formatNumber value="${latestVO.managectElvtr}" /></div>
						        <c:set var="high" value="${latestVO.managectElvtr > pastVO.managectElvtr ? latestVO.managectElvtr : pastVO.managectElvtr}" />
						        <c:set var="low" value="${latestVO.managectElvtr < pastVO.managectElvtr ? latestVO.managectElvtr : pastVO.managectElvtr}" />
						        <c:set var="gap" value="${((high-low)/low)*100}" />
						        <c:choose>
						        	<c:when test="${latestVO.managectElvtr == high}">
							        	<div class="text-success flex text-xs font-medium tooltip cursor-pointer ml-2" title="전년 동월 (<fmt:formatNumber value="${pastVO.managectElvtr}" />원) 대비 <fmt:formatNumber value="${gap}" pattern="0.#" />% 증가">
							        		<fmt:formatNumber value="${gap}" pattern="0.#" />%<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="chevron-up" data-lucide="chevron-up" class="lucide lucide-chevron-up w-4 h-4 ml-0.5"><polyline points="18 15 12 9 6 15"></polyline></svg>
							        	</div>
						        	</c:when>
						        	<c:when test="${latestVO.managectElvtr == low}">
								        <div class="text-danger flex text-xs font-medium tooltip cursor-pointer ml-2" title="전년 동월 (<fmt:formatNumber value="${pastVO.managectElvtr}" />원) 대비 <fmt:formatNumber value="${gap}" pattern="0.#" />% 감소">
								        	<fmt:formatNumber value="${gap}" pattern="0.#" />%<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="chevron-down" data-lucide="chevron-down" class="lucide lucide-chevron-down w-4 h-4 ml-0.5"><polyline points="6 9 12 15 18 9"></polyline></svg>
								        </div>
						        	</c:when>
						        </c:choose>
						    </div>
						</div>
						<div class="col-span-12 sm:col-span-6 md:col-span-4">
						    <div class="mngctTitle font-bold">누적 사용 열량</div>
						    <div class="mt-1.5 flex items-center">
						        <div class="text-base">631</div>
					        	<div class="text-success flex text-xs font-medium tooltip cursor-pointer ml-2" title="당월 (631㎥) 대비 0% 높음">
					        		0%<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="chevron-up" data-lucide="chevron-up" class="lucide lucide-chevron-up w-4 h-4 ml-0.5"><polyline points="18 15 12 9 6 15"></polyline></svg>
					        	</div>
						    </div>
						</div>
	            	</div>
	            	<!-- 전년 동월 -->
	            	<div class="tab-pane grid grid-cols-12 gap-y-8 gap-x-10" id="past-report" role="tabpanel" aria-labelledby="past-report-tab" style="width: 598px;">
						<div class="col-span-6 sm:col-span-6 md:col-span-4">
						    <div class="mngctTitle font-bold">총 가스 사용량</div>
						    <div class="mt-1.5 flex items-center">
						        <div class="text-base"><fmt:formatNumber value="${pastVO.managectTot}" /></div>
						        <c:set var="high" value="${latestVO.managectTot > pastVO.managectTot ? latestVO.managectTot : pastVO.managectTot}" />
						        <c:set var="low" value="${latestVO.managectTot < pastVO.managectTot ? latestVO.managectTot : pastVO.managectTot}" />
						        <c:set var="gap" value="${((high-low)/low)*100}" />
						        <c:choose>
						        	<c:when test="${pastVO.managectTot == high}">
							        	<div class="text-success flex text-xs font-medium tooltip cursor-pointer ml-2" title="당월 (<fmt:formatNumber value="${latestVO.managectTot}" />㎥) 대비 <fmt:formatNumber value="${gap}" pattern="0.#" />% 높음">
							        		<fmt:formatNumber value="${gap}" pattern="0.#" />%<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="chevron-up" data-lucide="chevron-up" class="lucide lucide-chevron-up w-4 h-4 ml-0.5"><polyline points="18 15 12 9 6 15"></polyline></svg>
							        	</div>
						        	</c:when>
						        	<c:when test="${pastVO.managectTot == low}">
								        <div class="text-danger flex text-xs font-medium tooltip cursor-pointer ml-2" title="당월 (<fmt:formatNumber value="${latestVO.managectTot}" />㎥) 대비 <fmt:formatNumber value="${gap}" pattern="0.#" />% 낮음">
								        	<fmt:formatNumber value="${gap}" pattern="0.#" />%<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="chevron-down" data-lucide="chevron-down" class="lucide lucide-chevron-down w-4 h-4 ml-0.5"><polyline points="6 9 12 15 18 9"></polyline></svg>
								        </div>
						        	</c:when>
						        </c:choose>
						    </div>
						</div>
						<div class="col-span-12 sm:col-span-6 md:col-span-4">
						    <div class="mngctTitle font-bold">개별 누적 사용량</div>
						    <div class="mt-1.5 flex items-center">
						        <div class="text-base"><fmt:formatNumber value="${pastVO.managectElcty}" /></div>
						        <c:set var="high" value="${latestVO.managectElcty > pastVO.managectElcty ? latestVO.managectElcty : pastVO.managectElcty}" />
						        <c:set var="low" value="${latestVO.managectElcty < pastVO.managectElcty ? latestVO.managectElcty : pastVO.managectElcty}" />
						        <c:set var="gap" value="${((high-low)/low)*100}" />
						        <c:choose>
						        	<c:when test="${pastVO.managectElcty == high}">
							        	<div class="text-success flex text-xs font-medium tooltip cursor-pointer ml-2" title="당월 (<fmt:formatNumber value="${latestVO.managectElcty}" />㎥) 대비 <fmt:formatNumber value="${gap}" pattern="0.#" />% 높음">
							        		<fmt:formatNumber value="${gap}" pattern="0.#" />%<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="chevron-up" data-lucide="chevron-up" class="lucide lucide-chevron-up w-4 h-4 ml-0.5"><polyline points="18 15 12 9 6 15"></polyline></svg>
							        	</div>
						        	</c:when>
						        	<c:when test="${pastVO.managectElcty == low}">
								        <div class="text-danger flex text-xs font-medium tooltip cursor-pointer ml-2" title="당월 (<fmt:formatNumber value="${latestVO.managectElcty}" />㎥) 대비 <fmt:formatNumber value="${gap}" pattern="0.#" />% 낮음">
								        	<fmt:formatNumber value="${gap}" pattern="0.#" />%<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="chevron-down" data-lucide="chevron-down" class="lucide lucide-chevron-down w-4 h-4 ml-0.5"><polyline points="6 9 12 15 18 9"></polyline></svg>
								        </div>
						        	</c:when>
						        </c:choose>
						    </div>
						</div>
						<div class="col-span-12 sm:col-span-6 md:col-span-4">
						    <div class="mngctTitle font-bold">보정 사용량</div>
						    <div class="mt-1.5 flex items-center">
						        <div class="text-base"><fmt:formatNumber value="${pastVO.managectWtr}" /></div>
						        <c:set var="high" value="${latestVO.managectWtr > pastVO.managectWtr ? latestVO.managectWtr : pastVO.managectWtr}" />
						        <c:set var="low" value="${latestVO.managectWtr < pastVO.managectWtr ? latestVO.managectWtr : pastVO.managectWtr}" />
						        <c:set var="gap" value="${((high-low)/low)*100}" />
						        <c:choose>
						        	<c:when test="${pastVO.managectWtr == high}">
							        	<div class="text-success flex text-xs font-medium tooltip cursor-pointer ml-2" title="당월 (<fmt:formatNumber value="${latestVO.managectWtr}" />㎥) 대비 <fmt:formatNumber value="${gap}" pattern="0.#" />% 높음">
							        		<fmt:formatNumber value="${gap}" pattern="0.#" />%<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="chevron-up" data-lucide="chevron-up" class="lucide lucide-chevron-up w-4 h-4 ml-0.5"><polyline points="18 15 12 9 6 15"></polyline></svg>
							        	</div>
						        	</c:when>
						        	<c:when test="${pastVO.managectWtr == low}">
								        <div class="text-danger flex text-xs font-medium tooltip cursor-pointer ml-2" title="당월 (<fmt:formatNumber value="${latestVO.managectWtr}" />㎥) 대비 <fmt:formatNumber value="${gap}" pattern="0.#" />% 낮음">
								        	<fmt:formatNumber value="${gap}" pattern="0.#" />%<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="chevron-down" data-lucide="chevron-down" class="lucide lucide-chevron-down w-4 h-4 ml-0.5"><polyline points="6 9 12 15 18 9"></polyline></svg>
								        </div>
						        	</c:when>
						        </c:choose>
						    </div>
						</div>
						<div class="col-span-12 sm:col-span-6 md:col-span-4">
						    <div class="mngctTitle font-bold">당월 지침</div>
						    <div class="mt-1.5 flex items-center">
						        <div class="text-base"><fmt:formatNumber value="${latestVO.managectHeat}" /></div>
						        <c:set var="high" value="${latestVO.managectHeat > pastVO.managectHeat ? latestVO.managectHeat : pastVO.managectHeat}" />
						        <c:set var="low" value="${latestVO.managectHeat < pastVO.managectHeat ? latestVO.managectHeat : pastVO.managectHeat}" />
						        <c:set var="gap" value="${((high-low)/low)*100}" />
						        <c:choose>
						        	<c:when test="${latestVO.managectHeat == high}">
							        	<div class="text-success flex text-xs font-medium tooltip cursor-pointer ml-2" title="전년 동월 (<fmt:formatNumber value="${pastVO.managectHeat}" />㎥) 대비 <fmt:formatNumber value="${gap}" pattern="0.#" />% 증가">
							        		<fmt:formatNumber value="${gap}" pattern="0.#" />%<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="chevron-up" data-lucide="chevron-up" class="lucide lucide-chevron-up w-4 h-4 ml-0.5"><polyline points="18 15 12 9 6 15"></polyline></svg>
							        	</div>
						        	</c:when>
						        	<c:when test="${latestVO.managectHeat == low}">
								        <div class="text-danger flex text-xs font-medium tooltip cursor-pointer ml-2" title="전년 동월 (<fmt:formatNumber value="${pastVO.managectHeat}" />㎥) 대비 <fmt:formatNumber value="${gap}" pattern="0.#" />% 감소">
								        	<fmt:formatNumber value="${gap}" pattern="0.#" />%<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="chevron-down" data-lucide="chevron-down" class="lucide lucide-chevron-down w-4 h-4 ml-0.5"><polyline points="6 9 12 15 18 9"></polyline></svg>
								        </div>
						        	</c:when>
						        </c:choose>
						    </div>
						</div>
						<div class="col-span-12 sm:col-span-6 md:col-span-4">
						    <div class="mngctTitle font-bold">기본 사용료</div>
						    <div class="mt-1.5 flex items-center">
						        <div class="text-base"><fmt:formatNumber value="${pastVO.managectCln}" /></div>
						        <c:set var="high" value="${latestVO.managectCln > pastVO.managectCln ? latestVO.managectCln : pastVO.managectCln}" />
						        <c:set var="low" value="${latestVO.managectCln < pastVO.managectCln ? latestVO.managectCln : pastVO.managectCln}" />
						        <c:set var="gap" value="${((high-low)/low)*100}" />
						        <c:choose>
						        	<c:when test="${pastVO.managectCln == high}">
							        	<div class="text-success flex text-xs font-medium tooltip cursor-pointer ml-2" title="당월 (<fmt:formatNumber value="${latestVO.managectCln}" />원) 대비 <fmt:formatNumber value="${gap}" pattern="0.#" />% 높음">
							        		<fmt:formatNumber value="${gap}" pattern="0.#" />%<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="chevron-up" data-lucide="chevron-up" class="lucide lucide-chevron-up w-4 h-4 ml-0.5"><polyline points="18 15 12 9 6 15"></polyline></svg>
							        	</div>
						        	</c:when>
						        	<c:when test="${pastVO.managectCln == low}">
								        <div class="text-danger flex text-xs font-medium tooltip cursor-pointer ml-2" title="당월 (<fmt:formatNumber value="${latestVO.managectCln}" />원) 대비 <fmt:formatNumber value="${gap}" pattern="0.#" />% 낮음">
								        	<fmt:formatNumber value="${gap}" pattern="0.#" />%<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="chevron-down" data-lucide="chevron-down" class="lucide lucide-chevron-down w-4 h-4 ml-0.5"><polyline points="6 9 12 15 18 9"></polyline></svg>
								        </div>
						        	</c:when>
						        </c:choose>
						    </div>
						</div>
						<div class="col-span-12 sm:col-span-6 md:col-span-4">
						    <div class="mngctTitle font-bold">공급 가액</div>
						    <div class="mt-1.5 flex items-center">
						        <div class="text-base"><fmt:formatNumber value="${pastVO.managectDsnf}" /></div>
						        <c:set var="high" value="${latestVO.managectDsnf > pastVO.managectDsnf ? latestVO.managectDsnf : pastVO.managectDsnf}" />
						        <c:set var="low" value="${latestVO.managectDsnf < pastVO.managectDsnf ? latestVO.managectDsnf : pastVO.managectDsnf}" />
						        <c:set var="gap" value="${((high-low)/low)*100}" />
						        <c:choose>
						        	<c:when test="${pastVO.managectDsnf == high}">
							        	<div class="text-success flex text-xs font-medium tooltip cursor-pointer ml-2" title="당월 (<fmt:formatNumber value="${latestVO.managectDsnf}" />원) 대비 <fmt:formatNumber value="${gap}" pattern="0.#" />% 높음">
							        		<fmt:formatNumber value="${gap}" pattern="0.#" />%<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="chevron-up" data-lucide="chevron-up" class="lucide lucide-chevron-up w-4 h-4 ml-0.5"><polyline points="18 15 12 9 6 15"></polyline></svg>
							        	</div>
						        	</c:when>
						        	<c:when test="${pastVO.managectDsnf == low}">
								        <div class="text-danger flex text-xs font-medium tooltip cursor-pointer ml-2" title="당월 (<fmt:formatNumber value="${latestVO.managectDsnf}" />원) 대비 <fmt:formatNumber value="${gap}" pattern="0.#" />% 낮음">
								        	<fmt:formatNumber value="${gap}" pattern="0.#" />%<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="chevron-down" data-lucide="chevron-down" class="lucide lucide-chevron-down w-4 h-4 ml-0.5"><polyline points="6 9 12 15 18 9"></polyline></svg>
								        </div>
						        	</c:when>
						        </c:choose>
						    </div>
						</div>
						<div class="col-span-12 sm:col-span-6 md:col-span-4">
						    <div class="mngctTitle font-bold">전월 지침</div>
						    <div class="mt-1.5 flex items-center">
						        <div class="text-base"><fmt:formatNumber value="${pastVO.managectRepair}" /></div>
						        <c:set var="high" value="${latestVO.managectRepair > pastVO.managectRepair ? latestVO.managectRepair : pastVO.managectRepair}" />
						        <c:set var="low" value="${latestVO.managectRepair < pastVO.managectRepair ? latestVO.managectRepair : pastVO.managectRepair}" />
						        <c:set var="gap" value="${((high-low)/low)*100}" />
						        <c:choose>
						        	<c:when test="${pastVO.managectRepair == high}">
							        	<div class="text-success flex text-xs font-medium tooltip cursor-pointer ml-2" title="당월 (<fmt:formatNumber value="${latestVO.managectRepair}" />㎥) 대비 <fmt:formatNumber value="${gap}" pattern="0.#" />% 높음">
							        		<fmt:formatNumber value="${gap}" pattern="0.#" />%<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="chevron-up" data-lucide="chevron-up" class="lucide lucide-chevron-up w-4 h-4 ml-0.5"><polyline points="18 15 12 9 6 15"></polyline></svg>
							        	</div>
						        	</c:when>
						        	<c:when test="${pastVO.managectRepair == low}">
								        <div class="text-danger flex text-xs font-medium tooltip cursor-pointer ml-2" title="당월 (<fmt:formatNumber value="${latestVO.managectRepair}" />㎥) 대비 <fmt:formatNumber value="${gap}" pattern="0.#" />% 낮음">
								        	<fmt:formatNumber value="${gap}" pattern="0.#" />%<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="chevron-down" data-lucide="chevron-down" class="lucide lucide-chevron-down w-4 h-4 ml-0.5"><polyline points="6 9 12 15 18 9"></polyline></svg>
								        </div>
						        	</c:when>
						        </c:choose>
						    </div>
						</div>
						<div class="col-span-12 sm:col-span-6 md:col-span-4">
						    <div class="mngctTitle font-bold">에너지 보조금</div>
						    <div class="mt-1.5 flex items-center">
						        <div class="text-base"><fmt:formatNumber value="${pastVO.managectElvtr}" /></div>
						        <c:set var="high" value="${latestVO.managectElvtr > pastVO.managectElvtr ? latestVO.managectElvtr : pastVO.managectElvtr}" />
						        <c:set var="low" value="${latestVO.managectElvtr < pastVO.managectElvtr ? latestVO.managectElvtr : pastVO.managectElvtr}" />
						        <c:set var="gap" value="${((high-low)/low)*100}" />
						        <c:choose>
						        	<c:when test="${pastVO.managectElvtr == high}">
							        	<div class="text-success flex text-xs font-medium tooltip cursor-pointer ml-2" title="당월 (<fmt:formatNumber value="${latestVO.managectElvtr}" />원) 대비 <fmt:formatNumber value="${gap}" pattern="0.#" />% 높음">
							        		<fmt:formatNumber value="${gap}" pattern="0.#" />%<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="chevron-up" data-lucide="chevron-up" class="lucide lucide-chevron-up w-4 h-4 ml-0.5"><polyline points="18 15 12 9 6 15"></polyline></svg>
							        	</div>
						        	</c:when>
						        	<c:when test="${pastVO.managectElvtr == low}">
								        <div class="text-danger flex text-xs font-medium tooltip cursor-pointer ml-2" title="당월 (<fmt:formatNumber value="${latestVO.managectElvtr}" />원) 대비 <fmt:formatNumber value="${gap}" pattern="0.#" />% 낮음">
								        	<fmt:formatNumber value="${gap}" pattern="0.#" />%<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="chevron-down" data-lucide="chevron-down" class="lucide lucide-chevron-down w-4 h-4 ml-0.5"><polyline points="6 9 12 15 18 9"></polyline></svg>
								        </div>
						        	</c:when>
						        </c:choose>
						    </div>
						</div>
						<div class="col-span-12 sm:col-span-6 md:col-span-4">
						    <div class="mngctTitle font-bold">누적 사용 열량</div>
						    <div class="mt-1.5 flex items-center">
						        <div class="text-base">631</div>
					        	<div class="text-success flex text-xs font-medium tooltip cursor-pointer ml-2" title="당월 (631㎥) 대비 0% 높음">
					        		0%<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="chevron-up" data-lucide="chevron-up" class="lucide lucide-chevron-up w-4 h-4 ml-0.5"><polyline points="18 15 12 9 6 15"></polyline></svg>
					        	</div>
						    </div>
						</div>
	            	</div>
	        	</div>
	        	<div class="mt-3 text-right">
			    	<a id="btnDet" href="javascript:;" class="btn btn-outline-secondary w-25 h-10 ml-auto font-bold" style="font-size: 15px;">자세히보기</a>
			    	<a href="/emp/aa/mnghshldmanagect/register" class="btn btn-primary w-25 h-10 ml-1 font-bold" style="font-size: 15px;">검침기록 등록</a>
	        	</div>
	        </div>
    	</div>
	</div>
</div>
<div class="flex justify-center mt-10" style="justify-content: space-between;">
	<div class="mngctList col-span-12 md:col-span-6 lg:col-span-4">
	    <div class="intro-y block sm:flex items-center h-10">
	        <h2 class="text-xl font-bold truncate mr-5">전체 에너지 사용량 내역</h2>
	    </div>
	    <div class="intro-y box p-5 mt-2">
	        <div class="flex text-slate-600 border-b border-slate-200 border-dashed pb-3 mb-3 font-semibold" style="font-size: 16px;">
	            <div>연월</div>
	            <div class="ml-auto">kWh</div>
	        </div>
	        <c:forEach var="cmnuseManagectVO" items="${cmnuseManagectVOList}" varStatus="stat">
	        	<c:if test="${stat.index < 6}">
			        <div class="flex items-center mb-5">
			            <div class="flex items-center font-medium" style="font-size: 15px;">
			                <div>${cmnuseManagectVO.strYm}</div>
			            </div>
			            <div class="ml-auto font-semibold" style="font-size: 15px;"><fmt:formatNumber value="${cmnuseManagectVO.managectTot}" /></div>
			        </div>
		        </c:if>
	        </c:forEach>
	        <a href="/emp/aa/mngcmnusemanagect/register?rlvtYm=202301" class="btn btn-outline-secondary w-full border-slate-300 dark:border-darkmode-300 border-dashed relative justify-start mb-2">
	            <span class="truncate mr-5">이전 내역 보기</span>
	            <span class="w-8 h-8 absolute flex justify-center items-center right-0 top-0 bottom-0 my-auto ml-auto mr-0.5"> <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="arrow-right" data-lucide="arrow-right" class="lucide lucide-arrow-right w-4 h-4"><line x1="5" y1="12" x2="19" y2="12"></line><polyline points="12 5 19 12 12 19"></polyline></svg> </span>
	        </a>
	    </div>
	</div>
	<div class="mngctList col-span-12 md:col-span-6 lg:col-span-4">
	    <div class="intro-y block sm:flex items-center h-10" style="position: relative; z-index: 1;">
	        <h2 class="text-xl font-bold truncate mr-5">개별세대 가스 요금 총액 내역</h2>
	    </div>
	    <div class="intro-y box p-5 mt-2">
	        <div class="flex text-slate-600 border-b border-slate-200 border-dashed pb-3 mb-3 font-semibold" style="font-size: 16px;">
	            <div>연월</div>
	            <div class="ml-auto">금액 (원)</div>
	        </div>
	        <c:forEach var="cmnuseManagectVO" items="${cmnuseManagectVOList}" varStatus="stat">
	        	<c:if test="${stat.index < 6}">
			        <div class="flex items-center mb-5">
			            <div class="flex items-center font-medium" style="font-size: 15px;">
			                <div>${cmnuseManagectVO.strYm}</div>
			            </div>
			            <div class="ml-auto font-semibold" style="font-size: 15px;"><fmt:formatNumber value="${cmnuseManagectVO.managectElcty}" /></div>
			        </div>
		        </c:if>
	        </c:forEach>
	        <a href="/emp/aa/mngcmnusemanagect/register?rlvtYm=202301" class="btn btn-outline-secondary w-full border-slate-300 border-dashed relative justify-start mb-2">
	            <span class="truncate mr-5">이전 내역 보기</span>
	            <span class="w-8 h-8 absolute flex justify-center items-center right-0 top-0 bottom-0 my-auto ml-auto mr-0.5"> <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="arrow-right" data-lucide="arrow-right" class="lucide lucide-arrow-right w-4 h-4"><line x1="5" y1="12" x2="19" y2="12"></line><polyline points="12 5 19 12 12 19"></polyline></svg> </span>
	        </a>
	    </div>
	</div>
	<div class="mngctList col-span-12 md:col-span-6 lg:col-span-4">
	    <div class="intro-y block sm:flex items-center h-10">
	        <h2 class="text-xl font-bold truncate mr-5">공용시설 가스 요금 총액 내역</h2>
	    </div>
	    <div class="intro-y box p-5 mt-2">
	        <div class="flex text-slate-600 border-b border-slate-200 border-dashed pb-3 mb-3 font-semibold" style="font-size: 16px;">
	            <div>연월</div>
	            <div class="ml-auto">금액 (원)</div>
	        </div>
	        <c:forEach var="cmnuseManagectVO" items="${cmnuseManagectVOList}" varStatus="stat">
	        	<c:if test="${stat.index < 6}">
			        <div class="flex items-center mb-5">
			            <div class="flex items-center font-medium" style="font-size: 15px;">
			                <div>${cmnuseManagectVO.strYm}</div>
			            </div>
			            <div class="ml-auto font-semibold" style="font-size: 15px;"><fmt:formatNumber value="${cmnuseManagectVO.managectWtr}" /></div>
			        </div>
		        </c:if>
	        </c:forEach>
	        <a href="/emp/aa/mngcmnusemanagect/register?rlvtYm=202301" class="btn btn-outline-secondary w-full border-slate-300 dark:border-darkmode-300 border-dashed relative justify-start mb-2">
	            <span class="truncate mr-5">이전 내역 보기</span>
	            <span class="w-8 h-8 absolute flex justify-center items-center right-0 top-0 bottom-0 my-auto ml-auto mr-0.5"> <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="arrow-right" data-lucide="arrow-right" class="lucide lucide-arrow-right w-4 h-4"><line x1="5" y1="12" x2="19" y2="12"></line><polyline points="12 5 19 12 12 19"></polyline></svg> </span>
	        </a>
	    </div>
	</div>
</div>


</div>
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
option {
 	font-size: 16px;
}
.item {
 	font-size: 17px;
}
</style>
<script type="text/javascript" src="/resources/js/jquery-3.6.4.min.js"></script>
<script type="text/javascript">
$(function(){
	$("#main_menu").html("시설/보안");
	$("#sub_menu").html("검침기록 관리");

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
</script>

