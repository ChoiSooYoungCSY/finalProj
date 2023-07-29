<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<sec:authentication property="principal.userVO" var="userVO" />
<c:set var="empId" value="${userVO.empVO.empId}" />
<!-- BEGIN: Body -->
<%-- ${selectAllSchedule} --%>
<div class="col-span-12">
	<div class="relative">
		<div class="grid grid-cols-12 gap-3" style="min-height: 115vh;">
			<div class="2xl:pl-6 grid grid-cols-12 gap-x-6 2xl:gap-x-0 gap-y-6">
				<div
					class="report-box-4 w-full h-full grid grid-cols-12 gap-3 xl:absolute -mt-8 xl:mt-0 pb-6 xl:pb-0 top-0 right-0 z-30 xl:z-auto">
					<div class="col-span-4 col-start-1 z-30">
						<div class="h-full flex flex-col">
							<div class="report-box-4__content intro-x">
								<!-- BEGIN : 관리자 프로필 -->
								<div class="max-h-full box mt-0 items-center justify-center scrollbar-hidden" style="padding: 5%; height: 260px;">
									<div class="pb-2 border-b border-slate-200">
										<div class="my-auto mx-auto bg-white pl-4 rounded-md w-full mb-5">
											<div class="intro-x mt-0 flex">
												<div class="w-28 h-28 image-fit mt-2 mr-8">
													<img alt="profileImage" class="rounded-full" data-action="zoom" src="/resources/images/emp/${userVO.empVO.empImg}">
												</div>
												<div class="mt-3 w-60">
													<div class="flex items-center">
														<div class="font-extrabold" style="font-size: 25px;">${userVO.empVO.empNm}</div>
														<c:if test="${applicationScope.state == null}">
															<c:set var="state" value="업무종료" scope="application" />
														</c:if>
														<div id="state_msg" class="flex px-3 pt-2 ml-auto h-9 rounded font-bold
														<c:choose>
															<c:when test="${applicationScope.state == '업무중'}">
																alert-success-soft
															</c:when>
															<c:when test="${applicationScope.state == '업무종료'}">
																alert-danger-soft
															</c:when>
															<c:when test="${applicationScope.state == '외근'}">
																alert-warning-soft
															</c:when>
															<c:when test="${applicationScope.state == '출장'}">
																alert-warning-soft
															</c:when>
															<c:when test="${applicationScope.state == '휴가'}">
																alert-dark-soft
															</c:when>
														</c:choose>
															" style="font-size: 17px;">${applicationScope.state}</div>
													</div>
													<div class="font-semibold mt-2" style="font-size: 19px;">${userVO.empVO.deptNm} ${userVO.empVO.jbgdNm}<br /></div>
													<div class="mt-5" style="font-size: 20px;">
														결재대기 <span style="color: #283593;">2</span>건 | 메일 <span style="color:#283593;">1</span>건
													</div>
												</div>
											</div>
										</div>
									</div>
									<div>
										<div class="intro-x mt-5 text-center flex text-lg">
											<button id="work_in" type="button">
												<span class="btn btn-primary py-2 px-4 xl:w-32 xl:mr-3 align-top" style="width: 118px;">출근하기</span>
											</button>
											<button id="work_out" type="button">
												<span class="btn btn-outline-danger py-2 px-0 xl:w-32 mt-1 xl:mr-3  xl:mt-0 align-top font-bold" style="width: 118px;">퇴근하기</span>
											</button>
											<div class="dropdown" data-tw-placement="bottom-start">
												<button id="state_change" type="button" class="dropdown-toggle" aria-expanded="false" data-tw-toggle="dropdown">
													<span class="btn btn-outline-primary py-2 pl-3 pr-1 xl:w-32 mt-1 xl:mt-0 align-top font-bold" style="width: 118px">
														상태변경<i data-lucide="chevron-down" class="w-4 h-4 ml-1"></i></span>
												</button>
												<div class="dropdown-menu w-40 font-extrabold text-lg">
												    <ul class="dropdown-content">
												        <li><a href="javascript:fn_state('업무중')" class="dropdown-item">업무중</a></li>
												        <li><a href="javascript:fn_state('업무종료')" class="dropdown-item">업무종료</a></li>
												        <li><a href="javascript:fn_state('외근')" class="dropdown-item">외근</a></li>
												        <li><a href="javascript:fn_state('출장')" class="dropdown-item">출장</a></li>
												        <li><a href="javascript:fn_state('휴가')" class="dropdown-item">휴가</a></li>
												    </ul>
												</div>
											</div>
										</div>
									</div>
								</div>
								<!-- END : 관리자 프로필 -->
								<!-- BEGIN: 근태 -->
								<div class="intro-x box mt-3 col-span-4 2xl:col-span-4"
									style="height: 300px;">
									<div
										class="flex items-center px-3 py-3 border-b border-slate-200/60"
										style="height: 53px;">
										<h2 class="font-bold text-base mr-auto"
											style="font-size: 19px;">근태</h2>
										<a href="#"
											class="ml-auto text-primary flex items-center font-bold">
											<svg xmlns="http://www.w3.org/2000/svg" width="24"
												height="24" viewBox="0 0 24 24" fill="none"
												stroke="currentColor" stroke-width="2"
												stroke-linecap="round" stroke-linejoin="round"
												icon-name="plus" data-lucide="plus"
												class="lucide lucide-plus w-4 h-4 mr-1">
												<line x1="12" y1="5" x2="12" y2="19"></line>
												<line x1="5" y1="12" x2="19" y2="12"></line></svg>자세히 보기
										</a>
									</div>
									<div class="p-5">
										<c:if test="${applicationScope.dclzH == null and applicationScope.dclzM == null}">
											<c:set var="dclzH" value="0" scope="application" />
											<c:set var="dclzM" value="0" scope="application" />
										</c:if>
										<div id="current_time" class="font-semibold text-slate-500 mt-2" style="font-size: 17px;"></div>
										<div class="text-3xl font-semibold mt-5">
											<span id="dclz_h">${applicationScope.dclzH}</span><span class="ml-1 mr-1.5" style="font-size: 20px;">시간</span>
											<span id="dclz_m">${applicationScope.dclzM}</span><span class="ml-1" style="font-size: 20px;">분</span>
										</div>
										<div class="progress h-3 mt-5">
										    <div class="progress-bar w-3/4" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100"></div>
										</div>
										<c:if test="${applicationScope.workInTime == null and applicationScope.workOutTime == null }">
											<c:set var="workInTime" value="미등록" scope="application" />
											<c:set var="workOutTime" value="미등록" scope="application" />
										</c:if>
										<div class="flex text-xl font-semibold mt-5">
											<div>출근시간</div>
											<div id="work_in_time" class="ml-auto font-bold text-primary">${applicationScope.workInTime}</div>
										</div>
										<div class="flex text-xl font-semibold mt-3">
											<div>퇴근시간</div>
											<div id="work_out_time" class="ml-auto font-bold text-danger">${applicationScope.workOutTime}</div>
										</div>
									</div>
								</div>
								<!-- END: 근태 -->
								<!-- BEGIN : 일정 -->
								<div class="mt-3">
									<div class="box">
										<div
											class="flex items-center p-4 border-b border-slate-200/60">
											<h2 class="truncate mr-5 font-bold" style="font-size: 19px;">일정</h2>
											<div class="ml-auto text-primary flex items-center font-bold">
												<div class="flex items-center">
													<div class="w-2 h-2 bg-primary rounded-full mr-3"></div>
													<span class="font-bold text-lg">공개</span>
												</div>
												<div class="flex items-center ml-3">
													<div class="w-2 h-2 bg-pending rounded-full mr-3"></div>
													<span class="font-bold text-lg">개인</span>
												</div>
											</div>
										</div>
										<div class="p-2">
											<div id="myCalendar" class="mb-2" style="margin-top:5px;"></div>
										</div>
										<div class="border-t border-slate-200/60 px-5 py-3">
                                 <div class="flex items-center">
                                    <div class="w-2 h-2 bg-primary rounded-full mr-3"></div>
                                    <span class="font-bold text-lg">입주자 대표 회의</span>
                                    <span class="font-bold ml-auto">10:00</span>
                                 </div>
                                 <div class="flex items-center">
                                    <div class="w-2 h-2 bg-pending rounded-full mr-3"></div>
                                    <span class="font-bold text-lg">대덕구 공동주택 관리자 간담회</span>
                                    <span class="font-bold ml-auto">13:00</span>
                                 </div>
                              </div>
									</div>
								</div>
								<!-- END: 일정 -->
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-span-8 col-start-5 z-10">
				<div class="mt-0 mb-3 grid grid-cols-12 sm:gap-0 intro-y flex">
					<!-- BEGIN : 공지 팝업 -->
					<div class="mt-0 intro-y col-span-12">
						<div
							class="alert alert-dismissible show box bg-primary text-white flex items-center mb-3"
							style="padding: 12px; padding-left: 3px;" role="alert">
							<span style="font-size: 16px;">
								<button
									class="rounded-md bg-white bg-opacity-20 hover:bg-opacity-30 px-2 py-1 -my-3 ml-2"
									style="font-size: 14px; letter-spacing: 1px;">공지사항</button>&nbsp;&nbsp;
								2023년 07월 공용관리비가 게시되었습니다.&nbsp;&nbsp; <a href=""
								class="underline ml-1" target="blank">확인하기</a>
							</span>
							<button type="button" class="btn-close text-white"
								data-tw-dismiss="alert" aria-label="Close">
								<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
									viewBox="0 0 24 24" fill="none" stroke="currentColor"
									stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
									icon-name="x" data-lucide="x" class="lucide lucide-x w-4 h-4">
									<line x1="18" y1="6" x2="6" y2="18"></line>
									<line x1="6" y1="6" x2="18" y2="18"></line></svg>
							</button>
						</div>
					</div>
					<!-- END : 공지 팝업 -->
					<!-- BEGIN : 나의 업무 -->
					<div class="intro-y mb-3 col-span-12">
						<div class="box flex">
							<div class="h-full justify-center" style="width: 560px;">
								<div
									class="flex items-center pl-8 pr-0 py-0 border-b border-slate-200/60"
									style="height: 53px;">
									<h2 class="font-bold text-base mr-3" style="font-size: 19px;">나의
										업무</h2>
									<a href="javascript:;"
										class="text-primary flex items-center font-bold"
										data-tw-toggle="modal" data-tw-target="#task_reg"> <svg
											xmlns="http://www.w3.org/2000/svg" width="24" height="24"
											viewBox="0 0 24 24" fill="none" stroke="currentColor"
											stroke-width="2" stroke-linecap="round"
											stroke-linejoin="round" icon-name="plus" data-lucide="plus"
											class="lucide lucide-plus w-4 h-4 mr-1">
											<line x1="12" y1="5" x2="12" y2="19"></line>
											<line x1="5" y1="12" x2="19" y2="12"></line></svg> 등록하기
									</a>
									<ul class="nav nav-link-tabs w-auto ml-auto hidden sm:flex"
										role="tablist" style="height: 53px;">
										<li id="progress-tab" class="nav-item text-lg"
											role="presentation"><a href="javascript:;"
											class="nav-link py-3 active" data-tw-target="#progress"
											aria-controls="progress" aria-selected="true" role="tab"
											style="height: 53px;">진행중</a></li>
										<li id="finish-tab" class="nav-item text-lg"
											role="presentation"><a href="javascript:;"
											class="nav-link py-3" data-tw-target="#finish"
											aria-selected="false" role="tab" style="height: 53px;">완료</a></li>
									</ul>
								</div>
								<div class="scroll pl-5 py-5 pr-3"
									style="max-height: 360px; overflow-y: auto; overflow-x: hidden;">
									<div class="tab-content">
										<!-- 진행중 목록 -->
										<c:set var="allSchedule" value="${selectAllSchedule}" />
										<fmt:formatDate value="${now}" pattern="yyyy-MM-dd hh:mm" />
										<c:set var="ymd" value="<%=new java.util.Date()%>" />

										<div id="progress" class="tab-pane active" role="tabpanel"
											aria-labelledby="progress-tab" style="width: 528px;">
											<c:forEach var="scheduleVO" items="${allSchedule}"
												varStatus="status">
												<c:set var="scheduleDate" value="${scheduleVO.schdlYmd}" />
												<c:set var="endTime" value="${scheduleVO.endTm}" />

												<fmt:parseDate var="eventTime"
													value="${scheduleDate} ${endTime}"
													pattern="yyyy-MM-dd HH:mm" />
												<fmt:formatDate var="eventTimeDate" value="${eventTime}"
													pattern="yyyyMMddHHmm" />
												<fmt:formatDate var="nowDate" value="${ymd}"
													pattern="yyyyMMddHHmm" />
												<fmt:formatDate var="nowYmd" value="${ymd}"
													pattern="yyyyMMdd" />
												<fmt:parseDate var="eventYmd" value="${scheduleDate}"
													pattern="yyyy-MM-dd" />
												<fmt:formatDate var="eventYmd" value="${eventYmd}"
													pattern="yyyyMMdd" />

												<c:set var="eventTimeMillis" value="${eventTime.time}" />
												<c:set var="nowMillis" value="${ymd.time}" />

												<c:if
													test="${eventTimeMillis > nowMillis and nowYmd eq eventYmd}">
													<div class="task flex items-center mb-2 p-2 zoom-in"
														draggable="true">
														<div class="border-l-4 border-primary pl-5">
															<input type="hidden" value="${scheduleVO.scheNo}" /> <a
																id="task_title" href="javascript:;"
																class="font-semibold" style="font-size: 20px;">${scheduleVO.schdlCn}
																<c:if test="${scheduleVO.rlsYn eq 'Y'}">(공개)</c:if>
															</a>
															<div id="task_date"
																class="flex items-center mt-2 text-slate-500 font-semibold"
																style="font-size: 16px;">
																${scheduleVO.schdlYmd}&nbsp;<span id="task_time"
																	class="font-bold text-primary" style="font-size: 17px;">${scheduleVO.bgngTm}
																	~ ${scheduleVO.endTm}</span>&nbsp; <a
																	class="text-slate-500 font-semibold zoom-in ml-1 mr-1"
																	onclick="javascript:fn_mod(this)">수정</a> <a
																	class="text-danger zoom-in"
																	onclick="javascript:fn_del(this)"><svg
																		xmlns="http://www.w3.org/2000/svg" width="18"
																		height="18" viewBox="0 0 24 24" fill="none"
																		stroke="currentColor" stroke-width="2"
																		stroke-linecap="round" stroke-linejoin="round"
																		icon-name="x-square" data-lucide="x-square"
																		class="lucide lucide-x-square block mx-auto">
																		<rect x="3" y="3" width="18" height="18" rx="2" ry="2"></rect>
																		<line x1="9" y1="9" x2="15" y2="15"></line>
																		<line x1="15" y1="9" x2="9" y2="15"></line></svg></a>
															</div>
														</div>
														<div class="form-check form-switch ml-auto">
															<input class="form-check-input" type="checkbox">
														</div>
													</div>
												</c:if>
											</c:forEach>
										</div>
										<!-- 완료 목록 -->
										<div id="finish" class="tab-pane" role="tabpanel"
											aria-labelledby="finish-tab" style="width: 528px;">
											<c:forEach var="scheduleVO" items="${allSchedule}"
												varStatus="status">
												<c:set var="scheduleDate" value="${scheduleVO.schdlYmd}" />
												<c:set var="endTime" value="${scheduleVO.endTm}" />

												<fmt:parseDate var="eventTime"
													value="${scheduleDate} ${endTime}"
													pattern="yyyy-MM-dd HH:mm" />
												<fmt:formatDate var="eventTimeDate" value="${eventTime}"
													pattern="yyyyMMddHHmm" />
												<fmt:formatDate var="nowDate" value="${ymd}"
													pattern="yyyyMMddHHmm" />
												<fmt:formatDate var="nowYmd" value="${ymd}"
													pattern="yyyyMMdd" />
												<fmt:parseDate var="eventYmd" value="${scheduleDate}"
													pattern="yyyy-MM-dd" />
												<fmt:formatDate var="eventYmd" value="${eventYmd}"
													pattern="yyyyMMdd" />

												<c:set var="eventTimeMillis" value="${eventTime.time}" />
												<c:set var="nowMillis" value="${ymd.time}" />

												<c:if
													test="${eventTimeMillis < nowMillis and nowYmd eq eventYmd}">
													<div class="task flex items-center mb-2 p-2 zoom-in"
														draggable="true">
														<div class="border-l-4 border-primary pl-5">
															<input type="hidden" value="${scheduleVO.scheNo}" /> <a
																id="task_title" href="javascript:;"
																class="font-semibold" style="font-size: 20px;">${scheduleVO.schdlCn}
																<c:if test="${scheduleVO.rlsYn eq 'Y'}">(공개)</c:if>
															</a>
															<div id="task_date"
																class="flex items-center mt-2 text-slate-500 font-semibold"
																style="font-size: 16px;">
																${scheduleVO.schdlYmd}&nbsp;<span id="task_time"
																	class="font-bold text-primary" style="font-size: 17px;">${scheduleVO.bgngTm}
																	~ ${scheduleVO.endTm}</span>&nbsp; <a
																	class="text-slate-500 font-semibold zoom-in ml-1 mr-1"
																	onclick="javascript:fn_mod(this)">수정</a> <a
																	class="text-danger zoom-in"
																	onclick="javascript:fn_del(this)"><svg
																		xmlns="http://www.w3.org/2000/svg" width="18"
																		height="18" viewBox="0 0 24 24" fill="none"
																		stroke="currentColor" stroke-width="2"
																		stroke-linecap="round" stroke-linejoin="round"
																		icon-name="x-square" data-lucide="x-square"
																		class="lucide lucide-x-square block mx-auto">
																		<rect x="3" y="3" width="18" height="18" rx="2" ry="2"></rect>
																		<line x1="9" y1="9" x2="15" y2="15"></line>
																		<line x1="15" y1="9" x2="9" y2="15"></line></svg></a>
															</div>
														</div>
														<div class="form-check form-switch ml-auto">
															<input class="form-check-input" type="checkbox">
														</div>
													</div>
												</c:if>
											</c:forEach>
										</div>
									</div>
								</div>
							</div>
							<div
								class="px-8 py-7 flex flex-col justify-center flex-2 border-l border-slate-200 border-dashed">
								<div class="flex items-center">
									<div class="text-primary font-bold" style="font-size: 18px;">
										<a href="/emp/mail/inbox">전체 메일함</a>
									</div>
									<div
										class="bg-warning/20 text-pending rounded font-bold px-2 ml-3"
										style="font-size: 13px;">new</div>
								</div>
								<div class="mt-2 mb-5 flex items-center">
									<div class="text-base font-semibold" style="font-size: 17px;">1
										/ 30 건</div>
								</div>
								<div class="flex items-center">
									<div class="text-primary font-bold" style="font-size: 18px;">
										<a href="/emp/mail/inbox">미결 문서</a>
									</div>
									<div
										class="bg-warning/20 text-pending rounded font-bold px-2 ml-3"
										style="font-size: 13px;">new</div>
								</div>
								<div class="mt-2 mb-5 flex items-center">
									<div class="text-base font-semibold" style="font-size: 17px;">2
										건</div>
								</div>
								<div class="flex items-center">
									<div class="text-primary font-bold" style="font-size: 18px;">
										<a href="/emp/mail/inbox">상신 문서</a>
									</div>
								</div>
								<div class="mt-2 mb-5 flex items-center">
									<div class="text-base font-semibold" style="font-size: 17px;">0
										건</div>
								</div>
								<div class="flex items-center">
									<div class="text-primary font-bold" style="font-size: 18px;">
										<a href="/emp/mail/inbox">참조 문서</a>
									</div>
									<div
										class="bg-warning/20 text-pending rounded font-bold px-2 ml-3"
										style="font-size: 13px;">new</div>
								</div>
								<div class="mt-2 mb-5 flex items-center">
									<div class="text-base font-semibold" style="font-size: 17px;">3
										건</div>
								</div>
								<div class="flex items-center">
									<div class="text-primary font-bold" style="font-size: 18px;">
										오늘 일정</div>
									<div
										class="bg-warning/20 text-pending rounded font-bold px-2 ml-3"
										style="font-size: 13px;">new</div>
								</div>
								<div class="mt-2 flex items-center">
									<div id="cnt_task" class="text-base font-semibold"
										style="font-size: 17px;">3 건</div>
								</div>
							</div>
						</div>
					</div>
					<!-- END : 나의 업무 -->
					<div class="flex col-span-12">
						<!-- BEGIN : 공지사항 -->
						<div class="col-span-12 box mt-0" style="width: 421px;">
							<div
								class="flex flex-col sm:flex-row items-center p-3 border-b border-slate-200/60">
								<h2 class="font-bold text-base mr-auto" style="font-size: 19px;">&nbsp;&nbsp;공지사항</h2>
								<a href="/emp/cmnt/empntcbbs"
									class="ml-auto text-primary truncate flex items-center font-bold">
									<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
										viewBox="0 0 24 24" fill="none" stroke="currentColor"
										stroke-width="2" stroke-linecap="round"
										stroke-linejoin="round" icon-name="plus" data-lucide="plus"
										class="lucide lucide-plus w-4 h-4 mr-1">
										<line x1="12" y1="5" x2="12" y2="19"></line>
										<line x1="5" y1="12" x2="19" y2="12"></line></svg>자세히 보기
								</a>
							</div>
							<div class="p-1 pt-1" id="striped-rows-table"
								style="font-size: 16px; height: 233px;">
								<table id="ntc_tbl" class="table table-striped font-semibold">
									<tr>
										<td class="text-center">119</td>
										<td>8월 관리사무소 주요업무 및 민원처리 보고</td>
									</tr>
									<tr>
										<td class="text-center">118</td>
										<td>2023년 8월 1일부 열요금 조정 안내</td>
									</tr>
									<tr>
										<td class="text-center">117</td>
										<td>103동 동대표 해임 투표 결과 보고</td>
									</tr>
									<tr>
										<td class="text-center">116</td>
										<td>8월 저수조 청소 안내</td>
									</tr>
									<tr>
										<td class="text-center">115</td>
										<td>8월 소독 실시 안내</td>
									</tr>
								</table>
							</div>
						</div>
						<!-- END : 공지사항 -->
						<!-- BEGIN : 전자결재 -->
						<div class="col-span-12 box mt-0 ml-auto" style="width: 421px;">
							<div
								class="flex flex-col sm:flex-row items-center p-3 border-b border-slate-200/60">
								<h2 class="font-bold text-base mr-auto" style="font-size: 19px;">&nbsp;&nbsp;결재
									대기 문서</h2>
								<a href="/emp/atrz/mydoc"
									class="ml-auto text-primary truncate flex items-center font-bold">
									<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
										viewBox="0 0 24 24" fill="none" stroke="currentColor"
										stroke-width="2" stroke-linecap="round"
										stroke-linejoin="round" icon-name="plus" data-lucide="plus"
										class="lucide lucide-plus w-4 h-4 mr-1">
										<line x1="12" y1="5" x2="12" y2="19"></line>
										<line x1="5" y1="12" x2="19" y2="12"></line></svg>자세히 보기
								</a>
							</div>
							<div class="p-1 pt-1" id="striped-rows-table"
								style="font-size: 16px; height: 233px;">
								<table id="ntc_tbl" class="table table-striped font-semibold">
									<tr>
										<td class="text-center">35</td>
										<td>23년 07월 관리비 정산보고서</td>
									</tr>
									<tr>
										<td class="text-center">34</td>
										<td>시설/보안 과장 출장품의서</td>
									</tr>
									<tr>
										<td class="text-center">33</td>
										<td>시설/보안 부서 구매품의서</td>
									</tr>
									<tr>
										<td class="text-center">32</td>
										<td>에너지 소비효율 개선검토 보고서</td>
									</tr>
									<tr>
										<td class="text-center">31</td>
										<td>인사/행정 부서 지출결의서</td>
									</tr>
								</table>
							</div>
						</div>
					</div>
					<!-- END : 전자결재 -->
					<!-- BEGIN : 에너지 사용 현황 -->
					<div class="intro-y box mt-3 col-span-8"
						style="width: 150%; height: 100%;">
						<div
							class="flex flex-col sm:flex-row items-center p-3 border-b border-slate-200/60 dark:border-darkmode-400">
							<h2 class="font-bold text-base mr-auto" style="font-size: 19px;">&nbsp;&nbsp;에너지
								사용 현황</h2>
							<a href="/emp/aa/mngcmnusemanagect"
								class="ml-auto text-primary truncate flex items-center font-bold">
								<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
									viewBox="0 0 24 24" fill="none" stroke="currentColor"
									stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
									icon-name="plus" data-lucide="plus"
									class="lucide lucide-plus w-4 h-4 mr-1">
									<line x1="12" y1="5" x2="12" y2="19"></line>
									<line x1="5" y1="12" x2="19" y2="12"></line></svg> 자세히 보기
							</a>
						</div>
						<div class="p-0 flex">
							<div class="ml-6" role="tabpanel"
								aria-labelledby="active-users-tab" style="width: 236px;">
								<div class="relative zoom-in"
									onclick="javascript:location.href='/emp/aa/mngcmnusemanagect/register?rlvtYm=202307';">
									<div class="h-[190px]">
										<canvas class="mt-3" id="report-donut-chart" width="236"
											height="138"
											style="display: block; box-sizing: border-box; height: 138px; width: 236px;"></canvas>
									</div>
									<div
										class="flex flex-col justify-center items-center absolute w-full h-full -top-1.5 left-0">
										<div class="font-semibold text-lg font-medium">23.07 기준</div>
										<div class="text-slate-500 mt-0">￦ 120,750,885</div>
									</div>
								</div>
								<div class="w-52 sm:w-auto mx-auto mt-0.5"
									style="font-size: 15px;">
									<div class="flex items-center">
										<div class="w-2 h-2 bg-primary rounded-full mr-3"></div>
										<span class="font-semibold">전력 사용료</span> <span
											class="font-medium ml-auto">62%</span>
									</div>
									<div class="flex items-center mt-0.5">
										<div class="w-2 h-2 bg-pending rounded-full mr-3"></div>
										<span class="font-semibold">수도 사용료</span> <span
											class="font-medium ml-auto">33%</span>
									</div>
									<div class="flex items-center mt-0.5">
										<div class="w-2 h-2 bg-warning rounded-full mr-3"></div>
										<span class="font-semibold">가스 사용료</span> <span
											class="font-medium ml-auto">10%</span>
									</div>
								</div>
							</div>
							<div class="mt-3 ml-7">
								<div class="h-[180px]">
									<canvas id="report-pie-chart" width="236" height="180"
										style="display: block; box-sizing: border-box; height: 180px; width: 236px;"></canvas>
								</div>
								<div class="w-52 sm:w-auto mx-auto mt-4"
									style="font-size: 15px;">
									<div class="flex items-center">
										<div class="w-2 h-2 bg-primary rounded-full mr-3"></div>
										<span class="font-semibold">84B ㎡</span> <span
											class="font-medium ml-auto">41%</span>
									</div>
									<div class="flex items-center mt-0.5">
										<div class="w-2 h-2 bg-pending rounded-full mr-3"></div>
										<span class="font-semibold">84A ㎡</span> <span
											class="font-medium ml-auto">37%</span>
									</div>
									<div class="flex items-center mt-0.5">
										<div class="w-2 h-2 bg-warning rounded-full mr-3"></div>
										<span class="font-semibold">75 ㎡</span> <span
											class="font-medium ml-auto">22%</span>
									</div>
								</div>
							</div>
							<div class="mt-5 ml-7">
								<div class="h-[170px]">
									<canvas id="report-bar-chart" class="border-b broder-slate-200"
										width="250" height="170"
										style="display: block; box-sizing: border-box; height: 170px; width: 250px;"></canvas>
								</div>
								<div class="text-center text-lg font-bold mt-4">실시간 에너지
									사용량 현황</div>
								<div id="current_time_energy"
									class="text-center font-semibold text-slate-500 mt-1"
									style="font-size: 17px;"></div>
							</div>
						</div>
					</div>
					<!-- END : 에너지 사용 현황 -->
				</div>
			</div>
		</div>
	</div>
</div>
<!-- END: Body -->

<!-- BEGIN: 업무 등록 Modal -->
<div id="task_reg" class="modal" tabindex="-1" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<h2 class="font-bold text-xl mr-auto">업무 등록</h2>
			</div>
			<div class="modal-body">
				<div class="font-semibold text-lg">
					<div class="col-span-12 sm:col-span-6">
						<input id="reg_content" type="text" class="form-control text-lg">
					</div>
				</div>
			</div>
			<div class="modal-footer" style="font-size: 16px;">
				<input id="reg_time" type="datetime-local"
					class="form-control text-lg w-60 h-9 pl-1 absolute left-5" /> <a
					id="reg_confirm" class="btn btn-primary font-semibold w-20 ml-auto">등록</a>
				<a data-tw-dismiss="modal"
					class="btn btn-outline-danger font-semibold w-20 mr-1">취소</a>
			</div>
		</div>
	</div>
</div>
<!-- END: 업무 등록 Modal -->
<!-- BEGIN: 업무 수정 Modal -->
<div id="task_mod" class="modal" tabindex="-1" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<h2 class="font-bold text-xl mr-auto">업무 수정</h2>
			</div>
			<div class="modal-body">
				<div class="font-semibold text-lg">
					<div class="col-span-12 sm:col-span-6">
						<input id="mod_content" type="text" class="form-control text-lg">
					</div>
				</div>
			</div>
			<div class="modal-footer" style="font-size: 16px;">
				<input id="mod_time" type="datetime-local"
					class="form-control text-lg w-60 h-9 pl-1 absolute left-5" /> <a
					id="mod_confirm" class="btn btn-primary font-semibold w-20 ml-auto">수정</a>
				<a data-tw-dismiss="modal"
					class="btn btn-outline-danger font-semibold w-20 mr-1">취소</a>
			</div>
		</div>
	</div>
</div>
<!-- END: 업무 수정 Modal -->
<style>
.task {
	cursor: move;
}

.ui-sortable-helper {
	background-color: #ffffff;
	outline: 3px ridge rgb(30, 58, 138);
	border-radius: 5px;
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
</style>
<link rel="stylesheet"
	href="https://code.jquery.com/ui/1.13.0/themes/base/jquery-ui.css">
<script type="text/javascript" src="/resources/js/jquery-3.6.4.min.js"></script>
<script src="https://code.jquery.com/ui/1.13.1/jquery-ui.min.js"
	integrity="sha256-eTyxS0rkjpLEo16uXTS0uVCS4815lc40K2iVpWDvdSY="
	crossorigin="anonymous"></script>
<script type="text/javascript"
	src="/resources/fullcalendar-6.1.8/packages/core/locales-all.global.js"></script>
<script type="text/javascript"
	src="/resources/fullcalendar-6.1.8/dist/index.global.js"></script>
<script type="text/javascript">
$(function(){
    // 1초마다 updateTime 함수 호출
    setInterval(updateTime, 1000);
    setInterval(updateTimeForEnergy, 1000);

    // 출, 퇴근 시간을 저장할 전역변수
    let work_in_time = "${applicationScope.workInTime}";
    let work_out_time = "${applicationScope.workOutTime}";

    // 출근하기 버튼 이벤트 핸들러
    $("#work_in").on("click", function() {
    	if (work_in_time != "") {
    		if (!confirm("출근을 등록하시겠습니까?")) {
    			return;
    		}
    	}
		let now = new Date();
		let hours = now.getHours();
		let minutes = now.getMinutes();
		let seconds = now.getSeconds();
		work_in_time = padZero(hours) + ":" + padZero(minutes) + ":" + padZero(seconds);

		// 서버로 출근시간 전송
		jQuery.ajax({
			url : "/emp/state",
			contentType : "application/json;charset=utf-8",
			data : {"workInTime" : work_in_time},
			type : "get",
			dataType : "text",
			success : function(result) {
				console.log("result : " + result);
			}
		});

    	$("#work_in_time").text(work_in_time);
		fn_state("업무중");
	});

    // 퇴근하기 버튼 이벤트 핸들러
    $("#work_out").on("click", function() {
    	if (!confirm("퇴근하시겠습니까?")) {return;}
		let now = new Date();
		let hours = now.getHours();
		let minutes = now.getMinutes();
		let seconds = now.getSeconds();
		work_out_time = padZero(hours) + ":" + padZero(minutes) + ":" + padZero(seconds);

		// 퇴근하기 버튼 제어
		let in_time = work_in_time.replace(":", "").substring(0,4);
		let out_time = work_out_time.replace(":", "").substring(0,4);
		console.log(in_time, out_time);
		if (work_in_time == "" || out_time - in_time < 1) {
			alert("퇴근은 출근 1분 후 부터 가능합니다.");
			return;
		}

		$("#work_out_time").text(work_out_time);
		fn_state("업무종료");

		// 근무시간 계산
		let dclz_h = out_time.substring(0,2) - in_time.substring(0,2);
		let dclz_m = out_time.substring(2,4) - in_time.substring(2,4);
		console.log(dclz_h, dclz_m);
		$("#dclz_h").html(dclz_h);
		$("#dclz_m").html(dclz_m);

		// 서버로 퇴근시간, 계산된 근무시간 전송
		jQuery.ajax({
			url : "/emp/state",
			contentType : "application/json;charset=utf-8",
			data : {"workOutTime" : work_out_time, "dclzH" : dclz_h, "dclzM" : dclz_m},
			type : "get",
			dataType : "text",
			success : function(result) {
				console.log("result : " + result);
			}
		});
	});

	// 나의 업무 - 토글 이벤트 핸들러
	$(".form-check-input").on("change", fn_task_toggle);

	// 일정 등록 모달 - 확인 버튼 이벤트 핸들러
	$("#reg_confirm").on("click", function(e){
		console.log(e.target);
		let myModal = tailwind.Modal.getInstance(document.querySelector("#task_reg"));

		let content = $("#reg_content").val();
		let str_date = $("#reg_time").val();

		if (content == "" || str_date == "") {
			alert("내용과 시간을 모두 입력해주세요.");
			return;
		}

		let date = str_date.split("T")[0].slice(2);
		let time = str_date.split("T")[1];
		console.log(date, time);

		let html = `
			<div class="task flex items-center mb-2 p-2 zoom-in">
		        <div class="border-l-4 border-primary pl-5">
			        <a id="task_title" href="javascript:;" class="font-semibold" style="font-size: 20px;">\${content}</a>
			        <div id="task_date" class="flex items-center mt-2 text-slate-500 font-semibold" style="font-size: 16px;">
			        	\${date}&nbsp;<span id="task_time" class="font-bold text-primary" style="font-size: 17px;">\${time}</span>&nbsp;
			        	<a class="text-slate-500 font-semibold zoom-in ml-1 mr-1" onclick="javascript:fn_mod(this)">수정</a>
			        	<a class="text-danger zoom-in" onclick="javascript:fn_del(this)"><svg xmlns="http://www.w3.org/2000/svg" width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="x-square" data-lucide="x-square" class="lucide lucide-x-square block mx-auto"><rect x="3" y="3" width="18" height="18" rx="2" ry="2"></rect><line x1="9" y1="9" x2="15" y2="15"></line><line x1="15" y1="9" x2="9" y2="15"></line></svg></a>
			        </div>
			    </div>
			    <div class="form-check form-switch ml-auto">
			        <input class="form-check-input" type="checkbox">
			    </div>
		    </div>
		`;

		$("#progress").append(html);
		$(".form-check-input").on("change", fn_task_toggle);
		$("#reg_content").val("");
		$("#reg_time").val("");

		// 오늘 일정 개수 업데이트
		let cnt_task = $("#progress").children().length;
		$("#cnt_task").html(`\${cnt_task} 건`);

		myModal.hide();
	});

	// 업무 목록 sortable
	let $j = jQuery.noConflict();
	$j("#progress").sortable();
	$j("#finish").sortable();

	// 오늘 일정 개수 업데이트
	let cnt_task = $("#progress").children().length;
	$("#cnt_task").html(`\${cnt_task} 건`);


	var calendarEl = document.getElementById('myCalendar');
	let scheduleList = ${writeValueAsString};
	let scheduleData = [];
	for (let i = 0; i < scheduleList.length; i++) {
	  let data = new Object();
	  data.id = scheduleList[i]['scheNo'];
	  data.start = scheduleList[i]['schdlYmd'];
	  if (scheduleList[i]['rlsYn'] == 'Y') {
	    data.color = 'rgba(34, 62, 140, 1)';
	    data.display= 'background';
	  } else {
	    data.color = 'rgba(255, 127, 0, 1)';
		data.display= 'background';
	  }

	  scheduleData.push(data);
	}

	calendarRender(scheduleData);

	function calendarRender(schedulData) {
	  let calendar = new FullCalendar.Calendar(calendarEl, {
		headerToolbar: {
	    	left: '',
	    	center: 'title',
	    	right: ''
	    },
	    defaultDate: new Date(),
	    locale: 'ko',
	    navLinks: false, // 날짜/주 이름을 클릭하여 다른 뷰로 이동할 수 있도록 합니다.
	    businessHours: false, // 영업 시간을 표시합니다.
	    editable: true,
	    selectable: true,
	    dayMaxEvents: true,
	    events: schedulData,
	    eventContent: function (info) {
	      // 이벤트를 숨깁니다. 배경색으로만 표시됩니다.
	      return '';
	    },
	    dayCellContent: function (info) {
	        var number = document.createElement("a");
	        number.classList.add("fc-daygrid-day-number");
	        number.innerHTML = info.dayNumberText.replace("일", '');
	        if (info.view.type === "dayGridMonth") {
	          return {
	            html: number.outerHTML
	          };
	        }
	        return {
	          domNodes: []
	        };
	    }
	  });

	  calendar.render();
	};

});

// 나의 업무 - 토글 이벤트 핸들러
function fn_task_toggle(e) {
	let obj = e.target;
	console.log(obj);
	let task = $(obj).closest(".task");

    if ($(obj).is(":checked")){
		$(task).remove();
		$("#finish").append(task);
    } else {
		$(task).remove();
		$("#progress").append(task);
    }

	// 오늘 일정 개수 업데이트
	let cnt_task = $("#progress").children().length;
	$("#cnt_task").html(`\${cnt_task} 건`);
}

// 상태변경 버튼 이벤트 핸들러
function fn_state(state) {
	let myDropdown = tailwind.Dropdown.getInstance(document.querySelector("#state_change"));
	console.log(state);

	// 서버로 업무 상태 전송
	jQuery.ajax({
		url : "/emp/state",
		contentType : "application/json;charset=utf-8",
		data : {"state" : state},
		type : "get",
		dataType : "text",
		success : function(result) {
			console.log("result : " + result);
		}
	});

	$("#state_msg").html(state);
	if (state == "업무중") {
		$("#state_msg").removeClass("alert-warning-soft");
		$("#state_msg").removeClass("alert-danger-soft");
		$("#state_msg").removeClass("alert-dark-soft");
		$("#state_msg").addClass("alert-success-soft");
	} else if (state == "업무종료") {
		$("#state_msg").removeClass("alert-success-soft");
		$("#state_msg").removeClass("alert-warning-soft");
		$("#state_msg").removeClass("alert-dark-soft");
		$("#state_msg").addClass("alert-danger-soft");
	} else if (state == "외근" || state == "출장") {
		$("#state_msg").removeClass("alert-success-soft");
		$("#state_msg").removeClass("alert-danger-soft");
		$("#state_msg").removeClass("alert-dark-soft");
		$("#state_msg").addClass("alert-warning-soft");
	} else {
		$("#state_msg").removeClass("alert-success-soft");
		$("#state_msg").removeClass("alert-danger-soft");
		$("#state_msg").removeClass("alert-warning-soft");
		$("#state_msg").addClass("alert-dark-soft");
	}
	myDropdown.hide();
}

// 근태 - 현재 시간 업데이트 함수
function updateTime() {
    let now = new Date();
    let year = now.getFullYear();
    let month = now.getMonth() + 1;
    let day = now.getDate();
    let dayOfWeek = now.toLocaleDateString("ko-KR", { weekday: "short" });
    let hours = now.getHours();
    let minutes = now.getMinutes();
    let seconds = now.getSeconds();

    let formattedTime = `
    	\${year}년 \${month}월 \${day}일 (\${dayOfWeek}) \${hours < 10 ? "0" + hours : hours}:\${minutes < 10 ? "0" + minutes : minutes}:\${seconds < 10 ? "0" + seconds : seconds}`;
    $("#current_time").text(formattedTime);
}

// 에너지 사용 현황 - 현재 시간 업데이트 함수
function updateTimeForEnergy() {
	let now = new Date();
	let year = now.getFullYear().toString().slice(2);
	let month = String(now.getMonth() + 1).padStart(2, "0");
	let day = String(now.getDate()).padStart(2, "0");
	let hours = String(now.getHours()).padStart(2, "0");
	let minutes = String(now.getMinutes()).padStart(2, "0");
	let seconds = String(now.getSeconds()).padStart(2, "0");

	let formattedTime = `\${year}-\${month}-\${day} \${hours}:\${minutes}:\${seconds}`;
	$("#current_time_energy").text(formattedTime);
}

// 시간과 분이 한 자리 숫자인 경우 앞에 0을 추가하는 함수
function padZero(value) {
	return value < 10 ? "0" + value : value;
}






// 업무 목록 삭제 이벤트 핸들러
function fn_del(obj) {
	let task = $(obj).closest(".task");
	if (confirm("삭제하시겠습니까?")) {
		task.remove();
	}
}

//업무 목록 수정 이벤트 핸들러
function fn_mod(obj) {
	let modModal = tailwind.Modal.getInstance(document.querySelector("#task_mod"));
	let task = $(obj).closest(".task");
	let title = task.find("#task_title").text();
	console.log(task.find("#task_date").text().trim());
	let date = task.find("#task_date").text().trim().substring(0,8);
	let time = task.find("#task_date").text().trim().substring(9,14);
	let setTime = "20" + date + "T" + time;
	console.log(setTime);

	$("#mod_content").val(title);
	$("#mod_time").val(setTime);
	modModal.show();

	$("#mod_confirm").on("click", function(){
		let mod_title = $("#mod_content").val();
		let mod_str_time = $("#mod_time").val();

		if (mod_title == "" || mod_str_time == "") {
			alert("내용과 시간을 모두 입력해주세요.");
			return;
		}

		let mod_date = mod_str_time.split("T")[0].slice(2);
		let mod_time = mod_str_time.split("T")[1];
		console.log(mod_date, mod_time);

		task.find("#task_title").text(mod_title);
		task.find("#task_date").html(`
        	\${mod_date}&nbsp;<span id="task_time" class="font-bold text-primary" style="font-size: 17px;">\${mod_time}</span>&nbsp;
        	<a class="text-slate-500 font-semibold zoom-in ml-1 mr-1" onclick="javascript:fn_mod(this)">수정</a>
        	<a class="text-danger zoom-in" onclick="javascript:fn_del(this)"><svg xmlns="http://www.w3.org/2000/svg" width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="x-square" data-lucide="x-square" class="lucide lucide-x-square block mx-auto"><rect x="3" y="3" width="18" height="18" rx="2" ry="2"></rect><line x1="9" y1="9" x2="15" y2="15"></line><line x1="15" y1="9" x2="9" y2="15"></line></svg></a>
		`);
		modModal.hide();
	});
}

</script>





















