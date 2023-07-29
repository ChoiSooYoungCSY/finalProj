<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<div class="col-span-12 lg:col-span-3 2xl:col-span-2">
    <!-- BEGIN: Menu -->
    <div class="intro-y box bg-primary p-4 mt-0 text-lg" style="height: 100%;">
    	<nav class="side-nav pt-1">
		    <ul>
		        <li class="mb-4">
		            <a id="btnNew" href="javascript:;" class="side-menu btn btn-outline-primary shadow-md font-bold zoom-in"
		            	data-tw-toggle="modal" data-tw-target="#selectDocForm"  style="letter-spacing: 1px;font-size: 19px;color:rgb(30, 58, 138);background-color: white;">
		                새 결재 진행
		            </a>
		        </li>
		        <li>
		            <a href="" class="side-menu">
		                <div class="side-menu__icon"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="home" data-lucide="home" class="lucide lucide-home"><path d="M3 9l9-7 9 7v11a2 2 0 01-2 2H5a2 2 0 01-2-2z"></path></svg></div>
		                <div class="side-menu__title"> 내 문서함 </div>
		            </a>
		        </li>
		        <li>
		            <a href="" class="side-menu">
		                <div class="side-menu__icon"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="box" data-lucide="box" class="lucide lucide-box"><path d="M21 16V8a2 2 0 00-1-1.73l-7-4a2 2 0 00-2 0l-7 4A2 2 0 003 8v8a2 2 0 001 1.73l7 4a2 2 0 002 0l7-4A2 2 0 0021 16z"></path><polyline points="3.27 6.96 12 12.01 20.73 6.96"></polyline><line x1="12" y1="22.08" x2="12" y2="12"></line></svg></div>
		                <div class="side-menu__title"> 상신함 </div>
		            </a>
		        </li>
		        <li>
		            <a href="" class="side-menu">
		                <div class="side-menu__icon"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="box" data-lucide="box" class="lucide lucide-box"><path d="M21 16V8a2 2 0 00-1-1.73l-7-4a2 2 0 00-2 0l-7 4A2 2 0 003 8v8a2 2 0 001 1.73l7 4a2 2 0 002 0l7-4A2 2 0 0021 16z"></path><polyline points="3.27 6.96 12 12.01 20.73 6.96"></polyline><line x1="12" y1="22.08" x2="12" y2="12"></line></svg></div>
		                <div class="side-menu__title"> 진행중 </div>
		            </a>
		        </li>
		        <li>
		            <a href="" class="side-menu">
		                <div class="side-menu__icon"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="box" data-lucide="box" class="lucide lucide-box"><path d="M21 16V8a2 2 0 00-1-1.73l-7-4a2 2 0 00-2 0l-7 4A2 2 0 003 8v8a2 2 0 001 1.73l7 4a2 2 0 002 0l7-4A2 2 0 0021 16z"></path><polyline points="3.27 6.96 12 12.01 20.73 6.96"></polyline><line x1="12" y1="22.08" x2="12" y2="12"></line></svg></div>
		                <div class="side-menu__title"> 완료함 </div>
		            </a>
		        </li>
		        <li>
		            <a href="" class="side-menu">
		                <div class="side-menu__icon"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="box" data-lucide="box" class="lucide lucide-box"><path d="M21 16V8a2 2 0 00-1-1.73l-7-4a2 2 0 00-2 0l-7 4A2 2 0 003 8v8a2 2 0 001 1.73l7 4a2 2 0 002 0l7-4A2 2 0 0021 16z"></path><polyline points="3.27 6.96 12 12.01 20.73 6.96"></polyline><line x1="12" y1="22.08" x2="12" y2="12"></line></svg></div>
		                <div class="side-menu__title"> 반려함 </div>
		            </a>
		        </li>
		        <hr style="width: 95%; margin-top: 7%; margin-bottom: 7%" />
		        <li>
		            <a href="" class="side-menu">
		                <div class="side-menu__icon"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="box" data-lucide="box" class="lucide lucide-box"><path d="M21 16V8a2 2 0 00-1-1.73l-7-4a2 2 0 00-2 0l-7 4A2 2 0 003 8v8a2 2 0 001 1.73l7 4a2 2 0 002 0l7-4A2 2 0 0021 16z"></path><polyline points="3.27 6.96 12 12.01 20.73 6.96"></polyline><line x1="12" y1="22.08" x2="12" y2="12"></line></svg></div>
		                <div class="side-menu__title"> 미결함 </div>
		            </a>
		        </li>
		        <li>
		            <a href="" class="side-menu">
		                <div class="side-menu__icon"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="box" data-lucide="box" class="lucide lucide-box"><path d="M21 16V8a2 2 0 00-1-1.73l-7-4a2 2 0 00-2 0l-7 4A2 2 0 003 8v8a2 2 0 001 1.73l7 4a2 2 0 002 0l7-4A2 2 0 0021 16z"></path><polyline points="3.27 6.96 12 12.01 20.73 6.96"></polyline><line x1="12" y1="22.08" x2="12" y2="12"></line></svg></div>
		                <div class="side-menu__title"> 예결중 </div>
		            </a>
		        </li>
		        <li>
		            <a href="" class="side-menu">
		                <div class="side-menu__icon"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="box" data-lucide="box" class="lucide lucide-box"><path d="M21 16V8a2 2 0 00-1-1.73l-7-4a2 2 0 00-2 0l-7 4A2 2 0 003 8v8a2 2 0 001 1.73l7 4a2 2 0 002 0l7-4A2 2 0 0021 16z"></path><polyline points="3.27 6.96 12 12.01 20.73 6.96"></polyline><line x1="12" y1="22.08" x2="12" y2="12"></line></svg></div>
		                <div class="side-menu__title"> 대결함 </div>
		            </a>
		        </li>
		        <li>
		            <a href="" class="side-menu">
		                <div class="side-menu__icon"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="box" data-lucide="box" class="lucide lucide-box"><path d="M21 16V8a2 2 0 00-1-1.73l-7-4a2 2 0 00-2 0l-7 4A2 2 0 003 8v8a2 2 0 001 1.73l7 4a2 2 0 002 0l7-4A2 2 0 0021 16z"></path><polyline points="3.27 6.96 12 12.01 20.73 6.96"></polyline><line x1="12" y1="22.08" x2="12" y2="12"></line></svg></div>
		                <div class="side-menu__title"> 기결함 </div>
		            </a>
		        </li>
		        <hr style="width: 95%; margin-top: 7%; margin-bottom: 7%" />
		        <li>
		            <a href="" class="side-menu">
		                <div class="side-menu__icon"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="box" data-lucide="box" class="lucide lucide-box"><path d="M21 16V8a2 2 0 00-1-1.73l-7-4a2 2 0 00-2 0l-7 4A2 2 0 003 8v8a2 2 0 001 1.73l7 4a2 2 0 002 0l7-4A2 2 0 0021 16z"></path><polyline points="3.27 6.96 12 12.01 20.73 6.96"></polyline><line x1="12" y1="22.08" x2="12" y2="12"></line></svg></div>
		                <div class="side-menu__title"> 수신함 </div>
		            </a>
		        </li>
		        <li>
		            <a href="" class="side-menu">
		                <div class="side-menu__icon"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="box" data-lucide="box" class="lucide lucide-box"><path d="M21 16V8a2 2 0 00-1-1.73l-7-4a2 2 0 00-2 0l-7 4A2 2 0 003 8v8a2 2 0 001 1.73l7 4a2 2 0 002 0l7-4A2 2 0 0021 16z"></path><polyline points="3.27 6.96 12 12.01 20.73 6.96"></polyline><line x1="12" y1="22.08" x2="12" y2="12"></line></svg></div>
		                <div class="side-menu__title"> 참조함 </div>
		            </a>
		        </li>
		        <hr style="width: 95%; margin-top: 7%; margin-bottom: 7%" />
		        <li>
		            <a href="" class="side-menu">
		                <div class="side-menu__icon"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="box" data-lucide="box" class="lucide lucide-box"><path d="M21 16V8a2 2 0 00-1-1.73l-7-4a2 2 0 00-2 0l-7 4A2 2 0 003 8v8a2 2 0 001 1.73l7 4a2 2 0 002 0l7-4A2 2 0 0021 16z"></path><polyline points="3.27 6.96 12 12.01 20.73 6.96"></polyline><line x1="12" y1="22.08" x2="12" y2="12"></line></svg></div>
		                <div class="side-menu__title"> 임시보관함 </div>
		            </a>
		        </li>
		    </ul>
		</nav>
    </div>
    <!-- END: Menu -->
</div>
<!-- BEGIN: Body -->
<div class="bdy col-span-12 lg:col-span-9 2xl:col-span-10">
<sec:authentication property="principal.userVO" var="userVO" />
<c:set var="empId" value="${userVO.empVO.empId}" />

	<!-- BEGIN: 결재 문서 -->
	<div class="intro-y col-span-12 flex flex-wrap sm:flex-nowrap items-center mb-3">
	    <div class="hidden md:block">
	    	<h5 class="text-2xl font-bold leading-none mt-0">결재 문서</h5>
	    </div>
		<!-- BEGIN: 검색 -->
	    <div class="flex w-full sm:w-auto mt-0 ml-auto">
	        <div class="w-56 relative text-slate-500 mr-2">
	            <input type="text" name="keyword" class="form-control w-40 box ml-16" placeholder="Search...">
	            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="search" class="lucide lucide-search w-4 h-4 absolute my-auto inset-y-0 mr-3 right-0" data-lucide="search"><circle cx="11" cy="11" r="8"></circle><line x1="21" y1="21" x2="16.65" y2="16.65"></line></svg>
	        </div>
	        <button id="search" class="btn btn-primary shadow-md" style="letter-spacing: 1px;font-size: 16px;">검색</button>
	    </div>
	    <!-- END: 검색 -->
	</div>
	<div class="box h-12 pt-2 pb-1 mb-2 font-semibold text-lg items-center">
		<div class="flex border-b border-slate-200/60 items-center mb-1 px-3 pb-1">
			<div class="ml-12 justify-center">기안일</div>
			<div class="justify-center" style="margin-left: 126px;">결재양식</div>
			<div class="justify-center" style="margin-left: 200px;">제목</div>
			<div class="justify-center" style="margin-left: 200px;">문서번호</div>
			<div class="justify-center" style="margin-left: 85px;">결재상태</div>
		</div>
	</div>
	<c:if test="${fn:length(atrz01List) == 0}">
		<div class="docList mt-0 mb-1 py-1 box col-span-12 zoom-in">
			<div class="flex h-12 items-center justify-center px-5 border-t border-b border-slate-200/60 font-bold text-lg">
				결재 문서가 없습니다.
	      	</div>
		</div>
	</c:if>
	<c:forEach var="atrzDocVO" items="${atrz01List}" varStatus="stat">
		<div class="docList mt-0 mb-1 py-1 box col-span-12 zoom-in" onclick="javascript:fn_detail('${atrzDocVO.atrzDocId}')">
			<div class="flex h-12 items-center px-5 border-t border-b border-slate-200/60 font-bold text-lg">
				<div class="ml-4 w-40 justify-center" style="font-size: 16px;">${fn:substring(atrzDocVO.fsrtWritingTm, 0, 10)}</div>
				<div class="ml-9 w-40 justify-center">${atrzDocVO.docFormSj}</div>
				<div class="ml-0 w-80 justify-center">${atrzDocVO.atrzDocSj}</div>
				<div class="ml-5 w-40 justify-center" style="font-size: 16px;">${atrzDocVO.atrzDocId}</div>
				<div class="ml-auto mr-auto w-20 my-1 text-center">
					<c:choose>
						<c:when test="${atrzDocVO.atrzSttsCd == 'ATRZ01' or  atrzDocVO.atrzSttsCd == 'ATRZ06'}">
					       	<a href="javascript:;" id="btnReg" class="btn btn-warning text-white w-14 h-7 p-0" style="font-size: 15px;">미결</a>
						</c:when>
						<c:when test="${atrzDocVO.atrzSttsCd == 'ATRZ02'}">
					       	<a href="javascript:;" id="btnReg" class="btn btn-secondary font-extrabold text-black w-14 h-7" style="font-size: 16px;">완료</a>
						</c:when>
						<c:when test="${atrzDocVO.atrzSttsCd == 'ATRZ03'}">
					       	<a href="javascript:;" id="btnReg" class="btn btn-danger text-white w-14 h-7" style="font-size: 15px;">반려</a>
						</c:when>
						<c:when test="${atrzDocVO.atrzSttsCd == 'ATRZ04'}">
					       	<a href="javascript:;" id="btnReg" class="btn btn-danger text-white w-14 h-7" style="font-size: 15px;">보류</a>
						</c:when>
						<c:when test="${atrzDocVO.atrzSttsCd == 'ATRZ05'}">
					       	<a href="javascript:;" id="btnReg" class="btn btn-danger text-white w-14 h-7" style="font-size: 15px;">반송</a>
						</c:when>
					</c:choose>
				</div>
	      	</div>
		</div>
	</c:forEach>
	<!-- END: 결재 문서 -->

	<!-- BEGIN: 기안 문서 -->
	<div class="intro-y col-span-12 flex flex-wrap sm:flex-nowrap items-center mt-14 mb-3">
	    <div class="hidden md:block">
	    	<h5 class="text-2xl font-bold leading-none mt-0">기안 문서</h5>
	    </div>
		<!-- BEGIN: 검색 -->
	    <div class="flex w-full sm:w-auto mt-0 ml-auto">
	        <div class="w-56 relative text-slate-500 mr-2">
	            <input type="text" name="keyword" class="form-control w-40 box ml-16" placeholder="Search...">
	            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="search" class="lucide lucide-search w-4 h-4 absolute my-auto inset-y-0 mr-3 right-0" data-lucide="search"><circle cx="11" cy="11" r="8"></circle><line x1="21" y1="21" x2="16.65" y2="16.65"></line></svg>
	        </div>
	        <button id="search" class="btn btn-primary shadow-md" style="letter-spacing: 1px;font-size: 16px;">검색</button>
	    </div>
	    <!-- END: 검색 -->
	</div>
	<div class="box h-12 pt-2 pb-1 mb-2 font-semibold text-lg items-center">
		<div class="flex border-b border-slate-200/60 items-center mb-1 px-3 pb-1">
			<div class="ml-12 justify-center">기안일</div>
			<div class="justify-center" style="margin-left: 126px;">결재양식</div>
			<div class="justify-center" style="margin-left: 200px;">제목</div>
			<div class="justify-center" style="margin-left: 200px;">문서번호</div>
			<div class="justify-center" style="margin-left: 85px;">결재상태</div>
		</div>
	</div>
	<c:if test="${fn:length(atrzDocVOList) == 0}">
		<div class="docList mt-0 mb-1 py-1 box col-span-12 zoom-in">
			<div class="flex h-12 items-center justify-center px-5 border-t border-b border-slate-200/60 font-bold text-lg">
				기안 문서가 없습니다.
	      	</div>
		</div>
	</c:if>
	<c:forEach var="atrzDocVO" items="${atrzDocVOList}" varStatus="stat">
		<div class="docList mt-0 mb-1 py-1 box col-span-12 zoom-in" onclick="javascript:fn_detail('${atrzDocVO.atrzDocId}')">
			<div class="flex h-12 items-center px-5 border-t border-b border-slate-200/60 font-bold text-lg">
				<div class="ml-4 w-40 justify-center" style="font-size: 16px;">${fn:substring(atrzDocVO.fsrtWritingTm, 0, 10)}</div>
				<div class="ml-9 w-40 justify-center">${atrzDocVO.docFormSj}</div>
				<div class="ml-0 w-80 justify-center">${atrzDocVO.atrzDocSj}</div>
				<div class="ml-5 w-40 justify-center" style="font-size: 16px;">${atrzDocVO.atrzDocId}</div>
				<div class="ml-auto mr-auto w-20 my-1 text-center">
					<c:choose>
						<c:when test="${atrzDocVO.atrzSttsCd == 'ATRZ01' or  atrzDocVO.atrzSttsCd == 'ATRZ06' or atrzDocVO.atrzSttsCd == 'ATRZ07'}">
					       	<a href="javascript:;" id="btnReg" class="btn btn-warning text-white w-14 h-7 p-0" style="font-size: 15px;">진행중</a>
						</c:when>
						<c:when test="${atrzDocVO.atrzSttsCd == 'ATRZ02'}">
					       	<a href="javascript:;" id="btnReg" class="btn btn-secondary font-extrabold text-black w-14 h-7" style="font-size: 16px;">완료</a>
						</c:when>
						<c:when test="${atrzDocVO.atrzSttsCd == 'ATRZ03'}">
					       	<a href="javascript:;" id="btnReg" class="btn btn-danger text-white w-14 h-7" style="font-size: 15px;">반려</a>
						</c:when>
						<c:when test="${atrzDocVO.atrzSttsCd == 'ATRZ04'}">
					       	<a href="javascript:;" id="btnReg" class="btn btn-danger text-white w-14 h-7" style="font-size: 15px;">보류</a>
						</c:when>
						<c:when test="${atrzDocVO.atrzSttsCd == 'ATRZ05'}">
					       	<a href="javascript:;" id="btnReg" class="btn btn-danger text-white w-14 h-7" style="font-size: 15px;">반송</a>
						</c:when>
					</c:choose>
				</div>
	      	</div>
		</div>
	</c:forEach>
	<!-- END: 기안 문서 -->

	<!-- BEGIN: 참조 문서 -->
	<div class="intro-y col-span-12 flex flex-wrap sm:flex-nowrap items-center mt-14 mb-3">
	    <div class="hidden md:block">
	    	<h5 class="text-2xl font-bold leading-none mt-0">참조 문서</h5>
	    </div>
		<!-- BEGIN: 검색 -->
	    <div class="flex w-full sm:w-auto mt-0 ml-auto">
	        <div class="w-56 relative text-slate-500 mr-2">
	            <input type="text" name="keyword" class="form-control w-40 box ml-16" placeholder="Search...">
	            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="search" class="lucide lucide-search w-4 h-4 absolute my-auto inset-y-0 mr-3 right-0" data-lucide="search"><circle cx="11" cy="11" r="8"></circle><line x1="21" y1="21" x2="16.65" y2="16.65"></line></svg>
	        </div>
	        <button id="search" class="btn btn-primary shadow-md" style="letter-spacing: 1px;font-size: 16px;">검색</button>
	    </div>
	    <!-- END: 검색 -->
	</div>
	<div class="box h-12 pt-2 pb-1 mb-2 font-semibold text-lg items-center">
		<div class="flex border-b border-slate-200/60 items-center mb-1 px-3 pb-1">
			<div class="ml-12 justify-center">기안일</div>
			<div class="justify-center" style="margin-left: 126px;">결재양식</div>
			<div class="justify-center" style="margin-left: 200px;">제목</div>
			<div class="justify-center" style="margin-left: 200px;">문서번호</div>
			<div class="justify-center" style="margin-left: 85px;">결재상태</div>
		</div>
	</div>
	<c:if test="${fn:length(atrz07List) == 0}">
		<div class="docList mt-0 mb-1 py-1 box col-span-12 zoom-in">
			<div class="flex h-12 items-center justify-center px-5 border-t border-b border-slate-200/60 font-bold text-lg">
				참조 문서가 없습니다.
	      	</div>
		</div>
	</c:if>
	<c:forEach var="atrzDocVO" items="${atrz07List}" varStatus="stat">
		<div class="docList mt-0 mb-1 py-1 box col-span-12 zoom-in" onclick="javascript:fn_detail('${atrzDocVO.atrzDocId}')">
			<div class="flex h-12 items-center px-5 border-t border-b border-slate-200/60 font-bold text-lg">
				<div class="ml-4 w-40 justify-center" style="font-size: 16px;">${fn:substring(atrzDocVO.fsrtWritingTm, 0, 10)}</div>
				<div class="ml-9 w-40 justify-center">${atrzDocVO.docFormSj}</div>
				<div class="ml-0 w-80 justify-center">${atrzDocVO.atrzDocSj}</div>
				<div class="ml-5 w-40 justify-center" style="font-size: 16px;">${atrzDocVO.atrzDocId}</div>
				<div class="ml-auto mr-auto w-20 my-1 text-center">
	       			<a href="javascript:;" id="btnReg" class="btn btn-outline-danger w-14 h-7" style="font-size: 15px; font-weight: bold;">참조</a>
				</div>
	      	</div>
		</div>
	</c:forEach>
	<!-- END: 참조 문서 -->

</div>
<!-- END: Body -->

<!-- BEGIN: Modal -->
<div id="selectDocForm" class="modal" tabindex="-1" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content" style="width: 700px; height: 618px;">
            <div class="modal-body p-5 text-center justify-center">
				<div class="text-2xl font-bold mt-1 justify-center">결재양식 선택</div>
				<div class="mt-4 box p-5 pb-0 bg-slate-200 justify-center" style="height: 530px;">
					<div class="flex w-full mt-0 h-10 items-center">
				        <div class="w-56 relative text-slate-500 mr-2">
				            <input id="jstree_search" type="text" name="keyword" class="form-control w-56 box pr-10 font-semibold h-9" placeholder="문서 제목" style="font-size: 15px;">
				            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="search" class="lucide lucide-search w-4 h-4 absolute my-auto inset-y-0 mr-3 right-0" data-lucide="search"><circle cx="11" cy="11" r="8"></circle><line x1="21" y1="21" x2="16.65" y2="16.65"></line></svg>
				        </div>
				        <button id="jstree_search_btn" class="btn btn-primary shadow-md h-9" style="letter-spacing: 1px;font-size: 16px;">검색</button>
				    </div>
				    <div class="flex" style="width: 110%;">
						<div class="mt-1 mr-0" style="width: 40%;">
							<div id="jstree" class="font-semibold text-lg"></div>
						</div>
						<div class="p-3 text-lg font-semibold border-l border-slate-300">
							<table id="tbl" class="table pt-3" style="width: 350px;">
								<thead>
									<tr>
										<p colspan="2" class="font-bold pt-6 pb-5 text-center whitespace-nowrap" style="font-size: 21px;">상세정보</p>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td style="padding-left: 27px;">제목</td>
										<td id="td_title">구매품의서</td>
									</tr>
									<tr>
										<td class="whitespace-nowrap" style="padding-left: 27px;">전사문서함</td>
										<td class="whitespace-nowrap"></td>
									</tr>
									<tr>
										<td style="padding-left: 27px;">보존연한</td>
										<td>5년</td>
									</tr>
									<tr>
										<td style="padding-left: 27px;">기안부서</td>
										<td style="padding: 0px;">
											<select id="deptId" class="form-control h-8 pl-2" style="width: 112px;font-size: 17px;letter-spacing: 1px;">
												<option value="pa">인사/행정</option>
												<option value="aa">경리/회계</option>
												<option value="fs">시설/보안</option>
											</select>
										</td>
									</tr>
									<tr>
										<td style="padding-left: 27px;">부서문서함</td>
										<td>미지정</td>
									</tr>
								</tbody>
							</table>
							<div class="text-lg font-bold text-right mr-1" style="margin-top: 85px;">
								<a id="btnConfirm" class="btn btn-primary font-bold h-11" style="width: 65px;"> 확인 </a>
								<a id="btnCancle" class="btn btn-outline-danger font-bold ml-1 h-11" style="width: 65px;"> 취소 </a>
							</div>
						</div>
				    </div>
				</div>
            </div>
        </div>
    </div>
</div>
<!-- END: Modal -->

<style type="text/css">
#jstree {
	width: 10%;
	height: 20%;
}
#tbl {
	width: 390px;
}
#tbl td {
	padding: 10px;
	font-size: 18px;
	height: 40px;
}
</style>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jstree/3.2.1/themes/default/style.min.css" />
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/1.12.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jstree/3.2.1/jstree.min.js"></script>
<!-- <script type="text/javascript" src="/resources/js/jquery-3.6.4.min.js"></script> -->
<script type="text/javascript">
$(function(){
	$("#main_menu").html("전자결재");
	$("#sub_menu").html("내 문서함");

	$(".side-nav > ul > li > .side-menu").on("click", function(){
		// 좌측 메뉴 선택 시 효과 적용
		$(".side-menu").removeClass("side-menu--active");
		$(this).addClass("side-menu--active");

		// 메뉴 경로 표시 (좌측 메뉴)
		var sub = $(this).find(".side-menu__title").text();
		console.log(sub.trim());
		$("#sub_menu").html(sub.trim());
	});

	// 문서양식 선택 트리
	console.log(${json});

	let $j = jQuery.noConflict();

	//데이터 변환
	const nodes = ${json};
	const data = [];

	// parent를 기준으로 데이터 정리
	const parents = {};
	nodes.forEach(node => {
		if (!parents[node.parent]) {
			parents[node.parent] = [];
		}
		parents[node.parent].push(node.child);
	});

	// jstree에서 사용할 수 있는 형태로 데이터 변환
	Object.keys(parents).forEach(parent => {
		const children = parents[parent].map(child => {
			return {text : child, type : "file"};
		});
		data.push({
			text : parent,
			children : children
		});
	});
	console.log(data);

	$j("#jstree").jstree({
		"core": {
			"check_callback" : true,
			"data" : data
		},
		"types" : {
			"default" : {
				"icon" : "fa fa-folder text-primary"
			},
			"file" : {
				"icon" : "fa-solid fa-file text-warning"
			}
		},
		"plugins" : ["types", "dnd", "search"]
	});

	// 조직도 전체 펼치기
	$("#btnNew").on("click", function(){
		$j("#jstree").jstree("open_all");
	});

    // 조직도 내 검색 기능
    $("#jstree_search").on("keyup", function () {
		let keyword = $(this).val();
		console.log(keyword);
		$j('#jstree').jstree(true).search(keyword);
    });

    // 노드 선택 이벤트 핸들러
	$j("#jstree").on("select_node.jstree", function(e, data) {
		// 선택된 노드의 id와 텍스트
		let nodeId = data.node.id;
		let nodeText = data.node.text;
		console.log("data : ", data);
		console.log("nodeId : ", nodeId);
		console.log("nodeText : ", nodeText);

		if (data.node.parent != "#") {
			$("#td_title").html(nodeText);
		}
    });

    // 취소 버튼 이벤트 핸들러
    $("#btnCancle").on("click", function(){
	   	let modal = tailwind.Modal.getInstance(document.querySelector("#selectDocForm"));
	   	modal.hide();
    });

    // 확인 버튼 이벤트 핸들러
    $("#btnConfirm").on("click", function(){
		let docFormSj = $("#td_title").html();
		console.log(docFormSj);
		location.href = "/emp/atrz/register?docFormSj=" + docFormSj;
    });
});

// 상세보기 페이지 이동
function fn_detail(atrzDocId) {
	console.log(atrzDocId);
	location.href = "/emp/atrz/detail?atrzDocId=" + atrzDocId;
}
</script>



















