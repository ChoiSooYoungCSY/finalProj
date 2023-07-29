<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>

<div class="col-span-12 lg:col-span-3 2xl:col-span-2">
    <!-- BEGIN: Menu -->
    <div class="intro-y box bg-primary p-4 mt-0 text-lg">
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
		                    <a href=/emp/fs/mngboombarrier class="side-menu">
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

<h5 class="text-lg font-medium leading-none mt-3">시설/보안 > 공용시설 관리 > 도서관</h5>

	<div class="intro-y box p-5 mt-5">
		<div class="flex flex-col sm:flex-row sm:items-end xl:items-start items-center justify-center">
			<form id="tabulator-html-filter-form" class="xl:flex sm:mr-auto justify-center"
				style="text-align: center; margin: auto;" action="/emp/fs/mnglibrary">
				<div class="sm:flex items-center sm:mr-4">
					<select name="cond" id="cond" aria-controls="dataTable"
						class="form-select w-full sm:w-24 2xl:w-full mt-2 sm:mt-0 sm:w-auto"
						style="height: 38.13px; font-size: 16px;">
						<option value="" disabled="" selected="" hidden="">도서검색</option>
						<option value="bookNo"
							<c:if test="${param.cond=='bookNo'}">selected</c:if>>번호</option>
						<option value="bookSj"
							<c:if test="${param.cond=='bookSj'}">selected</c:if>>제목</option>
						<option value="authr"
							<c:if test="${param.cond=='authr'}">selected</c:if>>저자</option>
					</select>
				</div>
				<div class="sm:flex items-center sm:mr-4 mt-2 xl:mt-0"
					style="display: none;">
					<select id="tabulator-html-filter-type"
						class="form-select w-full mt-2 sm:mt-0 sm:w-auto">
						<option value="like" selected="selected">like</option>
					</select>
				</div>
				<div class="sm:flex items-center sm:mr-4 mt-2 xl:mt-0">
					<input id="keyword" type="text" name="keyword"
						class="form-control sm:w-40 2xl:w-full mt-2 sm:mt-0"
						placeholder="검색어를 입력해주세요" aria-controls="dataTable" value="${param.keyword}" />
				</div>
				<div class="mt-2 xl:mt-0">
					<button id="tabulator-html-filter-go" type="submit"
						class="btn btn-primary w-full sm:w-16 font-medium"
						style="background-color: rgb(30, 58, 138);">검색</button>
				</div>
			</form>
		</div>

		<div class="col-span-12 lg:col-span-7 2xl:col-span-8">
<%-- 			<p>${data.content}</p> --%>
			<div class="grid grid-cols-12 gap-5">
				<c:forEach var="bookVO" items="${data.content}" varStatus="stat">
					<div class="intro-y col-span-12 sm:col-span-6 2xl:col-span-4">
						<div class="box">
							<div class="p-5">
								<div class="h-40 2xl:h-56 image-fit rounded-md overflow-hidden">
									<a href="/emp/fs/mnglibrary/empBookDetail?bookNo=${bookVO.bookNo}" class="block font-medium text-base">
									<img alt="Midone - HTML Admin Template" class="rounded-md"	src="/imageView?filename=${bookVO.bookImg}">

<%-- 										<c:choose> --%>
<%-- 											<c:when test="${bookVO.loanmem==1}"> --%>
<!-- 												<span class="absolute top-0 bg-red-500 bg-opacity-80 text-white text-xs m-5 px-2 py-1 rounded z-10 loanbtn">대출중</span> -->
<%-- 											</c:when> --%>
<%-- 											<c:when test="${bookVO.invntry le bookVO.loanflag}"> --%>
<!-- 												<span class="absolute top-0 bg-green-500 bg-opacity-80 text-white text-xs m-5 px-2 py-1 rounded z-10 loanbtn">대출불가</span> -->
<%-- 											</c:when> --%>
<%-- 											<c:otherwise> --%>
<!-- 												<span class="absolute top-0 bg-green-500 bg-opacity-80 text-white text-xs m-5 px-2 py-1 rounded z-10 loanbtn">대출가능</span> -->
<%-- 											</c:otherwise> --%>
<%-- 										</c:choose> --%>


									<div class="absolute bottom-0 text-white px-5 pb-6 z-10">
										도서번호 : ${bookVO.bookNo}
										</a>
									</div>
								</div>
								<div class="text-slate-600 dark:text-slate-500 mt-5">
									<div class="flex items-center">
										<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
											viewBox="0 0 24 24" fill="none" stroke="currentColor"
											stroke-width="2" stroke-linecap="round"
											stroke-linejoin="round" icon-name="link" data-lucide="link"
											class="lucide lucide-link w-4 h-4 mr-2">
										<path
												d="M10 13a5 5 0 007.54.54l3-3a5 5 0 00-7.07-7.07l-1.72 1.71"></path>
										<path
												d="M14 11a5 5 0 00-7.54-.54l-3 3a5 5 0 007.07 7.07l1.71-1.71"></path></svg>
										제목 : ${bookVO.bookSj}
									</div>
									<div class="flex items-center mt-2">
										<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
											viewBox="0 0 24 24" fill="none" stroke="currentColor"
											stroke-width="2" stroke-linecap="round"
											stroke-linejoin="round" icon-name="pen-tool"
											data-lucide="pen-tool"
											class="lucide lucide-pen-tool w-4 h-4 mr-2">
									<path d="M12 19l7-7 3 3-7 7-3-3z"></path>
										<path d="M18 13l-1.5-7.5L2 2l3.5 14.5L13 18l5-5z"></path>
										<path d="M2 2l7.586 7.586"></path>
											<circle cx="11" cy="11" r="2"></circle></svg>
										저자 : ${bookVO.authr}
									</div>
									<div class="flex items-center mt-2">
										<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
											viewBox="0 0 24 24" fill="none" stroke="currentColor"
											stroke-width="2" stroke-linecap="round"
											stroke-linejoin="round" icon-name="award" data-lucide="award"
											class="lucide lucide-award w-4 h-4 mr-2">
										<polyline points="9 11 12 14 22 4"></polyline>
										<path
												d="M21 12v7a2 2 0 01-2 2H5a2 2 0 01-2-2V5a2 2 0 012-2h11"></path></svg>
										재고 : ${bookVO.invntry-bookVO.loanflag}
									</div>
								</div>
							</div>

						</div>
					</div>
				</c:forEach>
			</div>


			<!-- BEGIN: Pagination 페이징처리 -->
			<div class="intro-y flex flex-wrap sm:flex-row sm:flex-nowrap items-center mt-6">
				<nav class="w-full sm:w-auto sm:mr-auto">
					<ul class="pagination">
						<li class="page-item"><a class="page-link"
							href="/emp/fs/mnglibrary?currentPage=1"> <svg
									xmlns="http://www.w3.org/2000/svg" width="24" height="24"
									viewBox="0 0 24 24" fill="none" stroke="currentColor"
									stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
									icon-name="chevrons-left"
									class="lucide lucide-chevrons-left w-4 h-4"
									data-lucide="chevrons-left">
									<polyline points="11 17 6 12 11 7"></polyline>
									<polyline points="18 17 13 12 18 7"></polyline></svg>
						</a></li>
						<li class="page-item"><a class="page-link"
										<c:if test="${data.startPage>=5}">
										href="/emp/fs/mnglibrary?cond=${param.cond}&keyword=${param.keyword }&size=${param.size}&currentPage=${data.startPage-5}"
										</c:if>
										<c:if test="${data.startPage<6}">
										href="#"
										</c:if>
									> <svg
									xmlns="http://www.w3.org/2000/svg" width="24" height="24"
									viewBox="0 0 24 24" fill="none" stroke="currentColor"
									stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
									icon-name="chevron-left"
									class="lucide lucide-chevron-left w-4 h-4"
									data-lucide="chevron-left">
									<polyline points="15 18 9 12 15 6"></polyline></svg>
						</a></li>
						<c:forEach var="pNo" begin="${data.startPage}" end="${data.endPage}" step="1">
						<li class="page-item">
							<a class="page-link" href="/emp/fs/mnglibrary?cond=${param.cond}&keyword=${param.keyword }&size=${param.size}&currentPage=${pNo}">${pNo}</a>
						</li>
						</c:forEach>
						<li class="page-item"><a class="page-link"
								<c:if test='${data.endPage == data.totalPages}'>
								href="#"
								</c:if>
								<c:if test='${data.endPage < data.totalPages}'>
								href="/emp/fs/mnglibrary?cond=${param.cond}&keyword=${param.keyword }&size=${param.size}&currentPage=${data.startPage+5}"
								</c:if>
								>
						<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
									viewBox="0 0 24 24" fill="none" stroke="currentColor"
									stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
									icon-name="chevron-right"
									class="lucide lucide-chevron-right w-4 h-4"
									data-lucide="chevron-right">
									<polyline points="9 18 15 12 9 6"></polyline></svg>
						</a></li>
						<li class="page-item"><a class="page-link" href="/emp/fs/mnglibrary?cond=${param.cond}&keyword=${param.keyword }&size=${param.size}&currentPage=${data.totalPages}"> <svg
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
				<select class="w-20 form-select box mt-3 sm:mt-0" id="sel">
					<option value="10"
						<c:if test="${param.size=='10'}">selected</c:if>
					>10</option>
					<option value="25"
						<c:if test="${param.size=='25'}">selected</c:if>
					>25</option>
					<option value="35"
						<c:if test="${param.size=='35'}">selected</c:if>
					>35</option>
					<option value="50"
						<c:if test="${param.size=='50'}">selected</c:if>
					>50</option>
				</select>
			</div>
			<!-- END: Pagination -->
		</div>
	</div>
	<br>
	<!-- 책 등록하기 -->
		<div style="display: flex; justify-content: right; align-items: right;">
			<a href="/emp/fs/mnglibrary/register" class="btn btn-primary btn-icon-split">
				<button class="btn btn-primary btn-sm">도서등록</button>
			</a>
		</div>


<!-- END: Body -->

<script type="text/javascript" src="/resources/js/jquery-3.6.4.min.js"></script>
<script type="text/javascript">
$(function(){
	$("#main_menu").html("시설/보안");
	$("#sub_menu").html("공용시설 관리");

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

