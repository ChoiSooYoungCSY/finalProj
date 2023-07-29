<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page import="java.text.SimpleDateFormat"%>
<%@ page import="java.util.Date"%>
<sec:authentication property="principal.userVO" var="userVO" />
<c:set var="empId" value="${userVO.empVO.empId}" />

<div class="col-span-12 lg:col-span-3 2xl:col-span-2">
    <!-- BEGIN: Menu -->
    <div class="intro-y box bg-primary p-4 mt-0 text-lg">
    	<nav class="side-nav pt-1">
		    <ul>
		        <li class="mb-4">
		            <a id="btnNew" href="javascript:;" class="side-menu btn btn-outline-primary shadow-md font-bold zoom-in"
		            	style="letter-spacing: 1px;font-size: 19px;color:rgb(30, 58, 138);background-color: white;">
		                새 결재 진행
		            </a>
		        </li>
		        <li>
		            <a href="/emp/atrz/mydoc?empId=${userVO.empVO.empId}" class="side-menu">
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
<c:set var="ymd" value="<%=new java.util.Date()%>" />
<%-- ${atrzDocVO} --%>

<!-- 결재문서 상세정보-->
<div class="go_content go_renew" id="content">
	<div class="content_page report_detail w-full">
		<div class="font-bold text-2xl mb-1" style="letter-spacing: 1.5px;">${atrzDocVO.atrzDocSj}</div>
		<!-- BEGIN : 툴바 -->
		<div class="tool_bar flex font-semibold text-lg w-full items-center border-b border-slate-300 pt-6 pb-2 mb-5">
			<!-- 결재 관련 버튼은 결재권자이면서 결재 상태가 대기, 합의, 반려, 반송인 사람에게만 보이도록 함 -->
			<c:forEach var="atrzVO" items="${atrzDocVO.atrzVOList}" varStatus="stat">
				<c:if test="${(atrzVO.sanctnerId == empId) and (atrzVO.atrzSttsCd == 'ATRZ01' or atrzVO.atrzSttsCd == 'ATRZ03' or atrzVO.atrzSttsCd == 'ATRZ04' or atrzVO.atrzSttsCd == 'ATRZ05' or atrzVO.atrzSttsCd == 'ATRZ06')}">
					<div class="flex items-center">
						<a id="atrz02" class="draft btn btn-primary flex mr-1.5 items-center zoom-in px-2 py-0.5" data-role="button">
							<svg xmlns="http://www.w3.org/2000/svg" width="22" height="22" fill="currentColor" class="bi bi-check-lg" viewBox="0 0 16 16"><path d="M12.736 3.97a.733.733 0 0 1 1.047 0c.286.289.29.756.01 1.05L7.88 12.01a.733.733 0 0 1-1.065.02L3.217 8.384a.757.757 0 0 1 0-1.06.733.733 0 0 1 1.047 0l3.052 3.093 5.4-6.425a.247.247 0 0 1 .02-.022Z"/></svg>
							<span class="txt ml-1">결재 승인</span>
						</a>
						<a id="atrz03" class="draft btn btn-danger flex mr-1.5 items-center zoom-in px-2 py-0.5" data-role="button">
							<svg xmlns="http://www.w3.org/2000/svg" width="22" height="22" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="x" data-lucide="x" class="lucide lucide-x block mx-auto"><line x1="18" y1="6" x2="6" y2="18"></line><line x1="6" y1="6" x2="18" y2="18"></line></svg>
							<span class="txt ml-1">반려</span>
						</a>
						<a id="atrz04" class="draft btn btn-outline-primary bg-white font-bold flex mr-1.5 items-center zoom-in px-2 py-0.5" data-role="button">
							<svg xmlns="http://www.w3.org/2000/svg" width="18" height="18" fill="currentColor" class="bi bi-clock" viewBox="0 0 16 16"><path d="M8 3.5a.5.5 0 0 0-1 0V9a.5.5 0 0 0 .252.434l3.5 2a.5.5 0 0 0 .496-.868L8 8.71V3.5z"/><path d="M8 16A8 8 0 1 0 8 0a8 8 0 0 0 0 16zm7-8A7 7 0 1 1 1 8a7 7 0 0 1 14 0z"/></svg>
							<span class="txt ml-1">보류</span>
						</a>
						<a id="atrz05" class="draft btn btn-outline-primary bg-white font-bold flex mr-3 items-center zoom-in px-2 py-0.5" data-role="button">
							<svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="rotate-ccw" data-lucide="rotate-ccw" class="lucide lucide-rotate-ccw block mx-auto"><path d="M3 2v6h6"></path><path d="M3 13a9 9 0 103-7.7L3 8"></path></svg>
							<span class="txt ml-1">반송</span>
						</a>
					</div>
				</c:if>
			</c:forEach>
			<div class="optional flex ml-auto items-center">
				<!-- 상신 취소, 문서 수정 버튼은 기안자에게만 보이도록 함 -->
				<c:if test="${atrzDocVO.frstWrterId == empId}">
					<div id="cancle_modify" class="flex items-center">
						<a id="cancel_draft" class="btn_tool flex mr-3 items-center zoom-in" data-role="button">
							<svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="x-circle" data-lucide="x-circle" class="lucide lucide-x-circle block mx-auto"><circle cx="12" cy="12" r="10"></circle><line x1="15" y1="9" x2="9" y2="15"></line><line x1="9" y1="9" x2="15" y2="15"></line></svg>
							<span class="txt ml-1">상신 취소</span>
						</a>
						<a id="mod_draft" class="btn_tool flex mr-2 items-center zoom-in" data-role="button">
							<svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="edit" data-lucide="edit" class="lucide lucide-edit block mx-auto"><path d="M11 4H4a2 2 0 00-2 2v14a2 2 0 002 2h14a2 2 0 002-2v-7"></path><path d="M18.5 2.5a2.121 2.121 0 013 3L12 15l-4 1 1-4 9.5-9.5z"></path></svg>
							<span class="txt ml-1">문서 수정</span>
						</a>
					</div>
				</c:if>
				<a id="info_draft" class="btn btn-outline-primary bg-white flex items-center zoom-in px-2 py-0.5 font-bold" data-tw-toggle="modal" data-tw-target="#modal_atrz_info" data-role="button">
					<svg xmlns="http://www.w3.org/2000/svg" width="18" height="18" fill="currentColor" class="bi bi-info-circle" viewBox="0 0 16 16"><path d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z"/><path d="m8.93 6.588-2.29.287-.082.38.45.083c.294.07.352.176.288.469l-.738 3.468c-.194.897.105 1.319.808 1.319.545 0 1.178-.252 1.465-.598l.088-.416c-.2.176-.492.246-.686.246-.275 0-.375-.193-.304-.533L8.93 6.588zM9 4.5a1 1 0 1 1-2 0 1 1 0 0 1 2 0z"/></svg>
					<span class="txt ml-1">결재선 정보</span>
				</a>
				<a id="act_list" href="/emp/atrz/mydoc?empId=${empId}" class="btn_tool flex items-center ml-8 mr-3 zoom-in" data-role="button">
					<svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="align-justify" data-lucide="align-justify" class="lucide lucide-align-justify block mx-auto"><line x1="3" y1="6" x2="21" y2="6"></line><line x1="3" y1="12" x2="21" y2="12"></line><line x1="3" y1="18" x2="21" y2="18"></line></svg>
					<span class="txt ml-1">목록</span>
				</a>
				<a id="act_document_preview" class="btn_tool flex items-center zoom-in" data-role="button">
					<svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="printer" data-lucide="printer" class="lucide lucide-printer block mx-auto"><polyline points="6 9 6 2 18 2 18 9"></polyline><path d="M6 18H4a2 2 0 01-2-2v-5a2 2 0 012-2h16a2 2 0 012 2v5a2 2 0 01-2 2h-2"></path><rect x="6" y="14" width="12" height="8"></rect></svg>
					<span class="txt ml-1">인쇄</span>
				</a>
			</div>
		</div>
		<!-- END : 툴바 -->
		<div>
			<!-- 문서 내용 삽입 -->
			<!-- 결재선 정보 삽입 -->
			<div id="doc_container">
			</div>
			<!-- BEGIN : 첨부파일 -->
			<div id="attachView" class="box mt-2 p-2">
				<div class="w-full flex-1 border-2 border-dashed rounded-md pt-4" style="height: 175px;">
			        <div id="fileShow" class="grid grid-cols-6 gap-20 pl-4 pr-5 h-28">
			        </div>
			        <div class="mt-2 flex items-center justify-center cursor-pointer h-10 pb-3"><label class="cursor-pointer items-center flex w-full h-10" for="fileUpload">
			            <input id="fileUpload" type="file" name="file" class="relative opacity-0 cursor-pointer mr-36">
						<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="save" data-lucide="save" class="lucide lucide-save text-primary mr-2"><path d="M19 21H5a2 2 0 01-2-2V5a2 2 0 012-2h11l5 5v11a2 2 0 01-2 2z"></path><polyline points="17 21 17 13 7 13 7 21"></polyline><polyline points="7 3 7 8 15 8"></polyline></svg>
				        <span class="text-primary mr-1 text-xl font-semibold">첨부파일</span></label>
			        </div>
			    </div>
			</div>
		    <!-- END : 첨부파일 -->
			<!-- BEGIN : 툴바 -->
			<div class="tool_bar flex font-semibold text-lg w-full items-center border-b border-slate-300 pt-6 pb-2 mb-5">
				<!-- 결재 관련 버튼은 결재권자이면서 결재 상태가 대기, 합의, 반려, 반송, 보류인 사람에게만 보이도록 함 -->
				<c:forEach var="atrzVO" items="${atrzDocVO.atrzVOList}" varStatus="stat">
					<c:if test="${(atrzVO.sanctnerId == empId) and (atrzVO.atrzSttsCd == 'ATRZ01' or atrzVO.atrzSttsCd == 'ATRZ03' or atrzVO.atrzSttsCd == 'ATRZ04' or atrzVO.atrzSttsCd == 'ATRZ05' or atrzVO.atrzSttsCd == 'ATRZ06')}">
						<div class="flex items-center">
							<a id="atrz02" class="draft btn btn-primary flex mr-1.5 items-center zoom-in px-2 py-0.5" data-role="button">
								<svg xmlns="http://www.w3.org/2000/svg" width="22" height="22" fill="currentColor" class="bi bi-check-lg" viewBox="0 0 16 16"><path d="M12.736 3.97a.733.733 0 0 1 1.047 0c.286.289.29.756.01 1.05L7.88 12.01a.733.733 0 0 1-1.065.02L3.217 8.384a.757.757 0 0 1 0-1.06.733.733 0 0 1 1.047 0l3.052 3.093 5.4-6.425a.247.247 0 0 1 .02-.022Z"/></svg>
								<span class="txt ml-1">결재 승인</span>
							</a>
							<a id="atrz03" class="draft btn btn-danger flex mr-1.5 items-center zoom-in px-2 py-0.5" data-role="button">
								<svg xmlns="http://www.w3.org/2000/svg" width="22" height="22" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="x" data-lucide="x" class="lucide lucide-x block mx-auto"><line x1="18" y1="6" x2="6" y2="18"></line><line x1="6" y1="6" x2="18" y2="18"></line></svg>
								<span class="txt ml-1">반려</span>
							</a>
							<a id="atrz04" class="draft btn btn-outline-primary bg-white font-bold flex mr-1.5 items-center zoom-in px-2 py-0.5" data-role="button">
								<svg xmlns="http://www.w3.org/2000/svg" width="18" height="18" fill="currentColor" class="bi bi-clock" viewBox="0 0 16 16"><path d="M8 3.5a.5.5 0 0 0-1 0V9a.5.5 0 0 0 .252.434l3.5 2a.5.5 0 0 0 .496-.868L8 8.71V3.5z"/><path d="M8 16A8 8 0 1 0 8 0a8 8 0 0 0 0 16zm7-8A7 7 0 1 1 1 8a7 7 0 0 1 14 0z"/></svg>
								<span class="txt ml-1">보류</span>
							</a>
							<a id="atrz05" class="draft btn btn-outline-primary bg-white font-bold flex mr-3 items-center zoom-in px-2 py-0.5" data-role="button">
								<svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="rotate-ccw" data-lucide="rotate-ccw" class="lucide lucide-rotate-ccw block mx-auto"><path d="M3 2v6h6"></path><path d="M3 13a9 9 0 103-7.7L3 8"></path></svg>
								<span class="txt ml-1">반송</span>
							</a>
						</div>
					</c:if>
				</c:forEach>
				<div class="optional flex ml-auto items-center">
					<!-- 상신 취소, 문서 수정 버튼은 기안자에게만 보이도록 함 -->
					<c:if test="${atrzDocVO.frstWrterId == empId}">
						<div id="cancle_modify" class="flex items-center">
							<a id="cancel_draft" class="btn_tool flex mr-3 items-center zoom-in" data-role="button">
								<svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="x-circle" data-lucide="x-circle" class="lucide lucide-x-circle block mx-auto"><circle cx="12" cy="12" r="10"></circle><line x1="15" y1="9" x2="9" y2="15"></line><line x1="9" y1="9" x2="15" y2="15"></line></svg>
								<span class="txt ml-1">상신 취소</span>
							</a>
							<a id="mod_draft" class="btn_tool flex mr-2 items-center zoom-in" data-role="button">
								<svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="edit" data-lucide="edit" class="lucide lucide-edit block mx-auto"><path d="M11 4H4a2 2 0 00-2 2v14a2 2 0 002 2h14a2 2 0 002-2v-7"></path><path d="M18.5 2.5a2.121 2.121 0 013 3L12 15l-4 1 1-4 9.5-9.5z"></path></svg>
								<span class="txt ml-1">문서 수정</span>
							</a>
						</div>
					</c:if>
					<a id="info_draft" class="btn btn-outline-primary bg-white flex items-center zoom-in px-2 py-0.5 font-bold" data-tw-toggle="modal" data-tw-target="#modal_atrz_info" data-role="button">
						<svg xmlns="http://www.w3.org/2000/svg" width="18" height="18" fill="currentColor" class="bi bi-info-circle" viewBox="0 0 16 16"><path d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z"/><path d="m8.93 6.588-2.29.287-.082.38.45.083c.294.07.352.176.288.469l-.738 3.468c-.194.897.105 1.319.808 1.319.545 0 1.178-.252 1.465-.598l.088-.416c-.2.176-.492.246-.686.246-.275 0-.375-.193-.304-.533L8.93 6.588zM9 4.5a1 1 0 1 1-2 0 1 1 0 0 1 2 0z"/></svg>
						<span class="txt ml-1">결재선 정보</span>
					</a>
					<a id="act_list" href="/emp/atrz/mydoc?empId=${empId}" class="btn_tool flex items-center ml-8 mr-3 zoom-in" data-role="button">
						<svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="align-justify" data-lucide="align-justify" class="lucide lucide-align-justify block mx-auto"><line x1="3" y1="6" x2="21" y2="6"></line><line x1="3" y1="12" x2="21" y2="12"></line><line x1="3" y1="18" x2="21" y2="18"></line></svg>
						<span class="txt ml-1">목록</span>
					</a>
					<a id="act_document_preview" class="btn_tool flex items-center zoom-in" data-role="button">
						<svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="printer" data-lucide="printer" class="lucide lucide-printer block mx-auto"><polyline points="6 9 6 2 18 2 18 9"></polyline><path d="M6 18H4a2 2 0 01-2-2v-5a2 2 0 012-2h16a2 2 0 012 2v5a2 2 0 01-2 2h-2"></path><rect x="6" y="14" width="12" height="8"></rect></svg>
						<span class="txt ml-1">인쇄</span>
					</a>
				</div>
			</div>
			<!-- END : 툴바 -->
		</div>
	</div>
</div>



</div>
<!-- END: Body -->

<!-- BEGIN: 결재선 정보 Modal -->
<div id="modal_atrz_info" class="modal" tabindex="-1" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content" style="width: 650px; height: 450px;">
            <div class="modal-body p-5 text-center justify-center">
				<div class="text-2xl font-bold mt-2 mb-1 justify-center">결재선 정보</div>
				<div class="flex">
					<div class="scroll" style="max-height: 450px; overflow-y: auto; overflow-x: hidden">
						<table id="tbl_atrz_line" class="table mt-4 ml-2 font-bold text-center text-lg" style="width: 615px;">
							<thead class="table-light bg-slate-200" style="font-weight: bold;">
							    <tr>
							        <th class="bg-slate-200 w-20">순서</th>
							        <th class="bg-slate-200 w-20">구분</th>
							        <th class="bg-slate-200 w-32">결재자</th>
							        <th class="bg-slate-200 w-36">직책</th>
							        <th class="bg-slate-200 w-48">의견</th>
							    </tr>
							</thead>
							<tbody id="tbd_atrz_line_info" class="font-bold">
								<c:forEach var="atrzVO" items="${atrzDocVO.atrzVOList}" varStatus="stat">
							        <tr id="${atrzVO.atrzOrdr}">
							        	<c:choose>
							        		<c:when test="${atrzVO.atrzOrdr == 200}">
							        			<td>-</td>
							        		</c:when>
							        		<c:otherwise>
							        			<td>${stat.index + 1}</td>
							        		</c:otherwise>
							        	</c:choose>
							            <td>${atrzVO.atrzSttsNm}</td>
							            <td>${atrzVO.empNm}</td>
							            <td>${atrzVO.position}</td>
							            <td>${atrzVO.returnRsn}</td>
							    	</tr>
								</c:forEach>
							</tbody>
						</table>
				    </div>
					<div class="text-lg font-bold text-right mr-1 absolute bottom-5 right-5">
						<a id="btnConfirm" data-tw-dismiss="modal" class="btn btn-primary font-bold h-11" style="width: 65px;"> 확인 </a>
					</div>
				</div>
            </div>
        </div>
    </div>
</div>
<!-- END: 결재정보창 Modal -->
<!-- BEGIN: 결재 승인 Modal -->
<div id="modal_atrz02" class="modal" tabindex="-1" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h2 id="dratf_title" class="font-bold text-xl mr-auto">결재 승인</h2>
            </div>
            <div class="modal-body py-2">
				<div class="font-bold text-lg mb-2">의견</div>
                <div class="font-semibold text-lg">
					<div class="col-span-12 sm:col-span-6">
						<textarea id="returnRsn_ATRZ02" rows="3" cols="5" class="form-control text-lg px-2 py-1"></textarea>
	                </div>
                </div>
            </div>
            <div class="modal-footer flex items-center" style="font-size: 16px;">
            	<a id="confirm_ATRZ02" class="draft_confirm btn btn-primary font-semibold w-20 ml-auto mr-2">확인</a>
            	<a data-tw-dismiss="modal" class="btn btn-outline-danger font-semibold w-20">취소</a>
            </div>
        </div>
    </div>
</div>
<!-- END: 결재 승인 Modal -->
<!-- BEGIN: 반려 Modal -->
<div id="modal_atrz03" class="modal" tabindex="-1" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h2 id="dratf_title" class="font-bold text-xl mr-auto">반려</h2>
            </div>
            <div class="modal-body py-2">
				<div class="font-bold text-lg mb-2">의견</div>
                <div class="font-semibold text-lg">
					<div class="col-span-12 sm:col-span-6">
						<textarea id="returnRsn_ATRZ03" rows="3" cols="5" class="form-control text-lg px-2 py-1"></textarea>
	                </div>
                </div>
            </div>
            <div class="modal-footer flex items-center" style="font-size: 16px;">
            	<a id="confirm_ATRZ03" class="draft_confirm btn btn-primary font-semibold w-20 ml-auto mr-2">확인</a>
            	<a data-tw-dismiss="modal" class="btn btn-outline-danger font-semibold w-20">취소</a>
            </div>
        </div>
    </div>
</div>
<!-- END: 반려 Modal -->
<!-- BEGIN: 보류 Modal -->
<div id="modal_atrz04" class="modal" tabindex="-1" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h2 id="dratf_title" class="font-bold text-xl mr-auto">보류</h2>
            </div>
            <div class="modal-body py-2">
				<div class="font-bold text-lg mb-2">의견</div>
                <div class="font-semibold text-lg">
					<div class="col-span-12 sm:col-span-6">
						<textarea id="returnRsn_ATRZ04" rows="3" cols="5" class="form-control text-lg px-2 py-1"></textarea>
	                </div>
                </div>
            </div>
            <div class="modal-footer flex items-center" style="font-size: 16px;">
            	<a id="confirm_ATRZ04" class="draft_confirm btn btn-primary font-semibold w-20 ml-auto mr-2">확인</a>
            	<a data-tw-dismiss="modal" class="btn btn-outline-danger font-semibold w-20">취소</a>
            </div>
        </div>
    </div>
</div>
<!-- END: 보류 Modal -->
<!-- BEGIN: 반송 Modal -->
<div id="modal_atrz05" class="modal" tabindex="-1" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h2 id="dratf_title" class="font-bold text-xl mr-auto">반송</h2>
            </div>
            <div class="modal-body py-2">
				<div class="font-bold text-lg mb-2">의견</div>
                <div class="font-semibold text-lg">
					<div class="col-span-12 sm:col-span-6">
						<textarea id="returnRsn_ATRZ05" rows="3" cols="5" class="form-control text-lg px-2 py-1"></textarea>
	                </div>
                </div>
            </div>
            <div class="modal-footer flex items-center" style="font-size: 16px;">
            	<a id="confirm_ATRZ05" class="draft_confirm btn btn-primary font-semibold w-20 ml-auto mr-2">확인</a>
            	<a data-tw-dismiss="modal" class="btn btn-outline-danger font-semibold w-20">취소</a>
            </div>
        </div>
    </div>
</div>
<!-- END: 반송 Modal -->
<script type="text/javascript" src="/resources/js/jquery-3.6.4.min.js"></script>
<script type="text/javascript" src="/resources/ckeditor/ckeditor.js"></script>
<!-- <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js" integrity="sha512-894YE6QWD5I59HgZOGReFYm4dnWc1Qt5NtvYSaNcOP+u1T9qYdvdihz0PPSiiqn/+/3e7Jo4EaG7TubfWGUrMQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script> -->
<!-- 조직도 트리 -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js" integrity="sha512-uto9mlQzrs59VwILcLiRYeLKPPbS/bT71da/OEBYEwcdNUk8jYIy+D176RYoop1Da+f9mvkYrmj5MCLZWEtQuA==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jstree/3.2.1/jstree.min.js"></script>
<!-- jsPDF -->
<script type="text/javascript" src="/resources/js/html2canvas.js"></script>
<script type="text/javascript" src="/resources/js/jspdf.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.css" integrity="sha512-aOG0c6nPNzGk+5zjwyJaoRUgCdOrfSDhmMID2u4+OIslr0GjpLKo7Xm0Ao3xmpM4T8AmIouRkqwj1nrdVsLKEQ==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jstree/3.2.1/themes/default/style.min.css" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" />
<link rel="stylesheet" href="/resources/icewall/dist/css/datepicker.css">
<style type="text/css">
@media print {
	.main {
		padding: 0;
	}
	#doc {
	  margin-left: 0;
	  align-content: flex-start;
	  justify-content: flex-start;
	}
}
@page {
	size : auto;
	margin-left : 0mm;
	padding-left: 0mm;
}
#j1_1_anchor, #j1_3_anchor, #j1_8_anchor, #j1_13_anchor {
	font-weight: bolder;
}
#tbl_atrz_line th {
	padding-left: 0px;
	padding-right: 0px;
	font-weight: bolder;
}
#tbl_atrz_line td {
	padding: 1px;
	height: 50px;
}
.ui-sortable-helper {
 	background-color: #ffffff;
 	outline: 2px ridge rgb(30,58,138);
 	border-radius: 5px;
 	padding-left: 140px;
}
.scroll::-webkit-scrollbar {
    width: 5px;
}
.scroll::-webkit-scrollbar-track {
    background-color: darkgrey;
    border-radius: 100px;
}
.scroll::-webkit-scrollbar-thumb {
    box-shadow: inset 0 0 6px rgba(0, 0, 0, 0.3);
    border-radius: 100px;
}
.stamp {
	top: -5000px;
	opacity: 0;
	transform-origin: bottom center;
	animation: stampAnimation 1.3s ease forwards;
}
@keyframes stampAnimation {
	50% {
		opacity: 1;
		transform: rotate(0) scale(1.3);
	}
	100% {
		opacity: 1;
		transform: rotate(0) scale(1);
	}
}
</style>
<script type="text/javascript">
$(function(){
	// 문서내용, 결재선 정보 세팅
	let bef_atrzDocCn = `${atrzDocVO.atrzDocCn}`;

	document.querySelector("#doc_container").insertAdjacentHTML("afterbegin", bef_atrzDocCn.replace("_csrf", ""));
	$("#frm_doc_content").find("input").attr("name", "");
	$("img").removeClass("stamp");

	// 문서번호 세팅
	let atrzDocId = "${atrzDocVO.atrzDocId}";
	$("#atrzDocId").val(atrzDocId);

	// 휴가사유 세팅
	let giveRsn = $("#giveRsn").val();
	$("#tr_giveRsn").css("height", "311px");
	$("#td_giveRsn").css("padding", "15px");
	$("#td_giveRsn").text(giveRsn);
	console.log(giveRsn);

	// input 태그 비활성화
	$("input").attr("readonly", "readonly");
	$("input").attr("disabled", "disabled");

	// 결재 승인 버튼 이벤트 핸들러
   	const modal_atrz02 = tailwind.Modal.getInstance(document.querySelector("#modal_atrz02"));
	$("#atrz02").on("click", function(){ modal_atrz02.show(); });
	$("#confirm_ATRZ02").on("click", fn_udt_atrz02);

	// 반려 버튼 이벤트 핸들러
   	const modal_atrz03 = tailwind.Modal.getInstance(document.querySelector("#modal_atrz03"));
	$("#atrz03").on("click", function(){ modal_atrz03.show(); });
	$("#confirm_ATRZ03").on("click", fn_udt_atrz03);

	// 보류 버튼 이벤트 핸들러
 	const modal_atrz04 = tailwind.Modal.getInstance(document.querySelector("#modal_atrz04"));
	$("#atrz04").on("click", function(){ modal_atrz04.show(); });
	$("#confirm_ATRZ04").on("click", fn_udt_atrz03); // 반려와 동일한 로직의 함수 실행

	// 반송 버튼 이벤트 핸들러
   	const modal_atrz05 = tailwind.Modal.getInstance(document.querySelector("#modal_atrz05"));
	$("#atrz05").on("click", function(){ modal_atrz05.show(); });
	$("#confirm_ATRZ05").on("click", fn_udt_atrz03); // 반려와 동일한 로직의 함수 실행

	// 미리보기 버튼 이벤트 핸들러 (PDF 프린트)
	$("#act_document_preview").on("click", previewAndPrint);
});

// 결재 승인 - 확인 버튼 이벤트 핸들러
function fn_udt_atrz02() {
	let empId = "${empId}";
	let modal_atrz02 = tailwind.Modal.getInstance(document.querySelector("#modal_atrz02"));
	let today = new Date();
	let year = today.getFullYear().toString().slice(-2);
	let month = ("0" + (today.getMonth() + 1)).slice(-2);
	let day = ("0" + today.getDate()).slice(-2);
    let atrzDate = year + "/" + month + "/" + day;
	let stamp_img = `<img src="/resources/images/atrz/\${empId}.png" alt="Stamp" class="stamp ml-auto mr-auto" style="height: 73px; width: 73px;" />`;

	// 결재 도장, 결재일 삽입
	$(`td[data-value='\${empId}']`).html(stamp_img);
	$(`td[data-value='\${empId}_date']`).css("font-size", "15px");
	$(`td[data-value='\${empId}_date']`).html(atrzDate);
	modal_atrz02.hide();

	let atrzDocId = "${atrzDocVO.atrzDocId}"; // 문서 아이디
	let returnRsn = $("#returnRsn_ATRZ02").val();    // 의견
	let atrzDocCn = $("#doc_container")[0].innerHTML; // 문서 내용 + 결재선 프로필
	let sanctnerId = empId;
	let data = {"atrzDocId" : atrzDocId, "atrzDocCn" : atrzDocCn, "atrzVOList" : [{"atrzDocId" : atrzDocId, "returnRsn" : returnRsn, "sanctnerId" : sanctnerId}]};
	console.log("data", data);

	jQuery.ajax({
		url : "/emp/atrz/updateatrz02",
		data : JSON.stringify(data),
		contentType : "application/json;charset=utf-8",
		type : "post",
		beforeSend:function(xhr){
			xhr.setRequestHeader("${_csrf.headerName}","${_csrf.token}");
		},
		success : function(result){
			console.log(result);
			if (result == "2") {
				// alert("기안문서를 승인하였습니다.");
				location.reload();
			} else {
				alert("다시 시도해주세요.");
			}
		}
	});
}

// 반려, 반송, 보류 - 확인 버튼 이벤트 핸들러
function fn_udt_atrz03(e) {

	let atrzSttsCd = e.target.id.split("_")[1];
	let empId = "${empId}";
	let modal_atrz03 = tailwind.Modal.getInstance(document.querySelector("#modal_atrz03"));
	// 바로 전 결재권자의 id
	let prevId = $(`td[data-value=\${empId}]`).prev().data("value");
	// 바로 전 결재권자의 결재순서
	let prevOrdr = jQuery(`td[data-value=\${prevId}]`).index() + 1;
	// 바로 전 결재권자의 이름
	let prevNm = $(`a[data-value=\${prevId}]`).html();
	console.log(prevId, prevOrdr, prevNm);

	// 이전 결재자의 도장, 날짜 제거
	$(`td[data-value=\${prevId}]`).html(prevNm);
	$(`td[data-value=\${prevId}_date]`).html("");

	let atrzDocId = "${atrzDocVO.atrzDocId}"; // 문서 아이디
	let returnRsn = $(`#returnRsn_\${atrzSttsCd}`).val();     // 의견
	let atrzDocCn = $("#doc_container")[0].innerHTML; // 문서 내용 + 결재선 프로필
	let sanctnerId = empId;
	let data = {"atrzDocId" : atrzDocId, "atrzDocCn" : atrzDocCn, "atrzVOList" : [{"atrzDocId" : atrzDocId, "returnRsn" : returnRsn, "atrzSttsCd" : atrzSttsCd, "sanctnerId" : sanctnerId, "prevId" : prevId, "prevOrdr" : prevOrdr}]};
	console.log("data", data);

	jQuery.ajax({
		url : "/emp/atrz/updateatrz03",
		data : JSON.stringify(data),
		contentType : "application/json;charset=utf-8",
		type : "post",
		beforeSend:function(xhr){
			xhr.setRequestHeader("${_csrf.headerName}","${_csrf.token}");
		},
		success : function(result){
			console.log(result);
			if (result == "3") {
				if (atrzSttsCd == "ATRZ03") {
					alert("문서가 반려되었습니다.");
				} else if (atrzSttsCd == "ATRZ05") {
					alert("문서가 반송되었습니다.");
				}
				location.reload();
			} else {
				alert("다시 시도해주세요.");
			}
		}
	});
}

// 미리보기, 출력 기능 함수
function previewAndPrint() {
    let printContents = $("#doc").html();
    let originalContents = $("body").html();

    $("body").html(printContents);
    $(".main").css("padding-left", "0");
    window.print();

    $("body").html(originalContents);
    $(".main").css("padding-left", "15%");
    $("#act_document_preview").on("click", previewAndPrint);
}


</script>






















