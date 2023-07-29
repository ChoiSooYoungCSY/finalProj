<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


<!-- BEGIN: Body -->
<div class="col-span-12 lg:col-span-9 2xl:col-span-12">
	<div class="content">
		<!-- BEGIN: Profile Info -->
		<sec:authorize access="hasRole('ROLE_MEMBER')">
			<sec:authentication property="principal.userVO" var="userVO" />
			<div class="intro-y box px-5 pt-5 mt-3">
				<div
					class="flex flex-col lg:flex-row border-b border-slate-200/60 dark:border-darkmode-400 pb-5 -mx-5">
					<div
						class="flex flex-1 px-5 items-center justify-center lg:justify-start">
						<div
							class="w-20 h-20 sm:w-24 sm:h-24 flex-none lg:w-32 lg:h-32 image-fit relative">
							<img alt="Midone - HTML Admin Template" class="rounded-full"
								src="/resources/images/member/${userVO.memberVO.memImg}">
							<div
								class="absolute mb-1 mr-1 flex items-center justify-center bottom-0 right-0 bg-primary rounded-full p-2">
								<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
									viewBox="0 0 24 24" fill="none" stroke="currentColor"
									stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
									icon-name="camera"
									class="lucide lucide-camera w-4 h-4 text-white"
									data-lucide="camera">
								<path
										d="M14.5 4h-5L7 7H4a2 2 0 00-2 2v9a2 2 0 002 2h16a2 2 0 002-2V9a2 2 0 00-2-2h-3l-2.5-3z"></path>
								<circle cx="12" cy="13" r="3"></circle></svg>
							</div>
						</div>
						<div class="ml-5">
							<div
								class="w-24 sm:w-40 truncate sm:whitespace-normal font-medium text-lg" id="profileUserName">${userVO.memberVO.memNm}(${userVO.memberVO.memId})</div>
							<div class="truncate sm:whitespace-normal flex items-center mt-2"
								style="font-size: 16px;">
								<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
									viewBox="0 0 24 24" fill="none" stroke="currentColor"
									stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
									icon-name="mail" data-lucide="mail"
									class="lucide lucide-mail w-5 h-5 mr-2">
								<path
										d="M4 4h16c1.1 0 2 .9 2 2v12c0 1.1-.9 2-2 2H4c-1.1 0-2-.9-2-2V6c0-1.1.9-2 2-2z"></path>
								<polyline points="22,6 12,13 2,6"></polyline></svg>
								${userVO.memberVO.email}
							</div>
							<div class="truncate sm:whitespace-normal flex items-center mt-2"
								style="font-size: 16px;">
								<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
									viewBox="0 0 24 24" fill="none" stroke="currentColor"
									stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
									icon-name="user-check" data-lucide="user-check"
									class="lucide lucide-user-checke w-5 h-5 mr-2">
									<path
										d="M22 16.92v3a2 2 0 01-2.18 2 19.79 19.79 0 01-8.63-3.07 19.5 19.5 0 01-6-6 19.79 19.79 0 01-3.07-8.67A2 2 0 014.11 2h3a2 2 0 012 1.72 12.84 12.84 0 00.7 2.81 2 2 0 01-.45 2.11L8.09 9.91a16 16 0 006 6l1.27-1.27a2 2 0 012.11-.45 12.84 12.84 0 002.81.7A2 2 0 0122 16.92z"></path></svg>
								<fmt:parseDate value="${userVO.memberVO.memBrthdy}" var="birth"
									pattern="yyyyMMdd" />
								<fmt:formatDate value="${birth}" pattern="yyyy년 MM월 dd일" />
							</div>

						</div>
					</div>
					<div
						class="mt-7  flex-1 px-5 border-l border-r border-slate-200/60 dark:border-darkmode-400 border-t lg:border-t-0 pt-5 lg:pt-0">
						<div class="font-medium text-center lg:text-left lg:mt-0"
							style="font-size: 18px;">맞춤 추천을 위한 상세 정보</div>
						<div
							class="flex flex-col justify-center items-center lg:items-start mt-0">
							<div class="truncate sm:whitespace-normal flex items-center mt-2"
								style="font-size: 17px;">성별 : ${userVO.memberVO.sexDstn}</div>
							<div class="truncate sm:whitespace-normal flex items-center mt-2"
								style="font-size: 17px;">관심 : ${userVO.memberVO.memIntrst}
							</div>
							<div class="truncate sm:whitespace-normal flex items-center mt-2"
								style="font-size: 17px;">가족 : 본인 외 ${userVO.memberVO.familyVOList.size()}명
							</div>
						</div>
					</div>
				</div>
				<ul
					class="nav nav-link-tabs flex-col sm:flex-row justify-center lg:justify-center text-center"
					role="tablist">
					<li id="rstrnt-tab" class="nav-item" role="presentation"><a
						href="#" class="nav-link py-4 active" data-tw-target="#rstrnt"
						aria-controls="dashboard" aria-selected="true" role="tab">맛집
							추천시스템</a></li>
					<li id="account-and-profile-tab" class="nav-item"
						role="presentation"><a href="#" class="nav-link py-4"
						data-tw-target="#picnic" aria-selected="false" role="tab">나들이
							장소 추천 시스템</a></li>
					<li id="activities-tab" class="nav-item" role="presentation">
						<a href="#" class="nav-link py-4" data-tw-target="#scndhd"
						aria-selected="false" role="tab">중고장터 게시글 추천시스템</a>
					</li>
					<li id="club-tab" class="nav-item" role="presentation"><a
						href="#" class="nav-link py-4" data-tw-target="#club"
						aria-selected="false" role="tab">동호회 추천시스템</a></li>
					<li id="book-tab" class="nav-item" role="presentation"><a
						href="#" class="nav-link py-4" data-tw-target="#book"
						aria-selected="false" role="tab">도서 추천시스템</a></li>
				</ul>
			</div>
		</sec:authorize>
		<!-- END: Profile Info -->
		<div class="intro-y tab-content mt-5">
			<div id="dashboard" class="tab-pane active" role="tabpanel"
				aria-labelledby="dashboard-tab">
				<div class="grid grid-cols-12 gap-6">
					<!-- BEGIN: Top Categories -->
					<div class="intro-y box col-span-12 lg:col-span-6">
						<div
							class="flex items-center p-5 border-b border-slate-200/60 dark:border-darkmode-400">
							<h2 class="font-medium text-base mr-auto" id="firstHead">Top
								Categories</h2>
							<div class="dropdown ml-auto">
								<a class="dropdown-toggle w-5 h-5 block" href="javascript:;"
									aria-expanded="false" data-tw-toggle="dropdown"> <svg
										xmlns="http://www.w3.org/2000/svg" width="24" height="24"
										viewBox="0 0 24 24" fill="none" stroke="currentColor"
										stroke-width="2" stroke-linecap="round"
										stroke-linejoin="round" icon-name="more-horizontal"
										data-lucide="more-horizontal"
										class="lucide lucide-more-horizontal w-5 h-5 text-slate-500">
										<circle cx="12" cy="12" r="1"></circle>
										<circle cx="19" cy="12" r="1"></circle>
										<circle cx="5" cy="12" r="1"></circle></svg>
								</a>
								<div class="dropdown-menu w-40">
									<ul class="dropdown-content">
										<li><a href="" class="dropdown-item"> <svg
													xmlns="http://www.w3.org/2000/svg" width="24" height="24"
													viewBox="0 0 24 24" fill="none" stroke="currentColor"
													stroke-width="2" stroke-linecap="round"
													stroke-linejoin="round" icon-name="plus" data-lucide="plus"
													class="lucide lucide-plus w-4 h-4 mr-2">
													<line x1="12" y1="5" x2="12" y2="19"></line>
													<line x1="5" y1="12" x2="19" y2="12"></line></svg> Add Category
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
						<div class="p-1">
							<canvas id="firstChart"></canvas>
						</div>
					</div>
					<!-- END: Top Categories -->
					<!-- BEGIN: Top Categories -->
					<div class="intro-y box col-span-12 lg:col-span-6">
						<div
							class="flex items-center p-5 border-b border-slate-200/60 dark:border-darkmode-400">
							<h2 class="font-medium text-base mr-auto" id="secondHead">Top
								Categories</h2>
							<div class="dropdown ml-auto">
								<a class="dropdown-toggle w-5 h-5 block" href="javascript:;"
									aria-expanded="false" data-tw-toggle="dropdown"> <svg
										xmlns="http://www.w3.org/2000/svg" width="24" height="24"
										viewBox="0 0 24 24" fill="none" stroke="currentColor"
										stroke-width="2" stroke-linecap="round"
										stroke-linejoin="round" icon-name="more-horizontal"
										data-lucide="more-horizontal"
										class="lucide lucide-more-horizontal w-5 h-5 text-slate-500">
										<circle cx="12" cy="12" r="1"></circle>
										<circle cx="19" cy="12" r="1"></circle>
										<circle cx="5" cy="12" r="1"></circle></svg>
								</a>
								<div class="dropdown-menu w-40">
									<ul class="dropdown-content">
										<li><a href="" class="dropdown-item"> <svg
													xmlns="http://www.w3.org/2000/svg" width="24" height="24"
													viewBox="0 0 24 24" fill="none" stroke="currentColor"
													stroke-width="2" stroke-linecap="round"
													stroke-linejoin="round" icon-name="plus" data-lucide="plus"
													class="lucide lucide-plus w-4 h-4 mr-2">
													<line x1="12" y1="5" x2="12" y2="19"></line>
													<line x1="5" y1="12" x2="19" y2="12"></line></svg> Add Category
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
						<div class="p-1">
							<canvas id="secondChart"></canvas>
						</div>
					</div>
					<!-- END: Top Categories -->
					<!-- BEGIN: General Statistic -->
					<div class="intro-y box col-span-12">
						<div
							class="flex items-center px-5 py-5 sm:py-3 border-b border-slate-200/60 dark:border-darkmode-400 mt-3 mb-3">
							<i class="bi bi-info-circle tooltip mr-4" id="hiddenRecomInfo" title=""></i>
							<h2 class="font-medium text-base mr-auto" id="recomInfo"></h2>
							<div class="dropdown ml-auto sm:hidden">
								<a class="dropdown-toggle w-5 h-5 block" href="javascript:;"
									aria-expanded="false" data-tw-toggle="dropdown"> <svg
										xmlns="http://www.w3.org/2000/svg" width="24" height="24"
										viewBox="0 0 24 24" fill="none" stroke="currentColor"
										stroke-width="2" stroke-linecap="round"
										stroke-linejoin="round" icon-name="more-horizontal"
										data-lucide="more-horizontal"
										class="lucide lucide-more-horizontal w-6 h-6 text-slate-500">
										<circle cx="12" cy="12" r="1"></circle>
										<circle cx="19" cy="12" r="1"></circle>
										<circle cx="5" cy="12" r="1"></circle></svg>
								</a>
							</div>
						</div>
						<div class="grid grid-cols-1 2xl:grid-cols-7 gap-6 p-5">
							<div class="2xl:col-span-2">
								<div class="grid grid-cols-2 gap-6">
									<div
										class="col-span-2 sm:col-span-1 2xl:col-span-2 box dark:bg-darkmode-500 p-1" style="width: 300px; height: 300px;">
										<canvas id="miniChart" style="width: 300px; height: 250px;"></canvas>
									</div>
								</div>
							</div>
							<div class="2xl:col-span-5 w-full">
								<div id="single-item-slider" class="p-5" style="height: 300px;">
									<div class="preview">
										<div class="mx-6">
											<div class="single-item">
												<div class="h-full px-2 rec01">
<!-- 													첫번째 추천 항목이 들어갈 자리 -->
												</div>
												<div class="h-full px-2 rec02">
<!-- 													두번째 추천 항목이 들어갈 자리 -->
												</div>
												<div class="h-full px-2 rec03">
<!-- 													세번째 추천 항목이 들어갈 자리 -->
												</div>
											</div>
										</div>
									</div>
									<div class="source-code hidden">
										<button data-target="#copy-single-item-slider"
											class="copy-code btn py-1 px-2 btn-outline-secondary">
											<i data-lucide="file" class="w-4 h-4 mr-2"></i> Copy example
											code
										</button>
										<div class="overflow-y-auto mt-3 rounded-md">
											<pre id="copy-single-item-slider" class="source-preview"> <code
													class="html"> HTMLOpenTagdiv class=&quot;mx-6&quot;HTMLCloseTag HTMLOpenTagdiv class=&quot;single-item&quot;HTMLCloseTag HTMLOpenTagdiv class=&quot;h-32 px-2&quot;HTMLCloseTag HTMLOpenTagdiv class=&quot;h-full bg-slate-100 dark:bg-darkmode-400 rounded-md&quot;HTMLCloseTag HTMLOpenTagh3 class=&quot;h-full font-medium flex items-center justify-center text-2xl&quot;HTMLCloseTag1HTMLOpenTag/h3HTMLCloseTag HTMLOpenTag/divHTMLCloseTag HTMLOpenTag/divHTMLCloseTag HTMLOpenTagdiv class=&quot;h-32 px-2&quot;HTMLCloseTag HTMLOpenTagdiv class=&quot;h-full bg-slate-100 dark:bg-darkmode-400 rounded-md&quot;HTMLCloseTag HTMLOpenTagh3 class=&quot;h-full font-medium flex items-center justify-center text-2xl&quot;HTMLCloseTag2HTMLOpenTag/h3HTMLCloseTag HTMLOpenTag/divHTMLCloseTag HTMLOpenTag/divHTMLCloseTag HTMLOpenTagdiv class=&quot;h-32 px-2&quot;HTMLCloseTag HTMLOpenTagdiv class=&quot;h-full bg-slate-100 dark:bg-darkmode-400 rounded-md&quot;HTMLCloseTag HTMLOpenTagh3 class=&quot;h-full font-medium flex items-center justify-center text-2xl&quot;HTMLCloseTag3HTMLOpenTag/h3HTMLCloseTag HTMLOpenTag/divHTMLCloseTag HTMLOpenTag/divHTMLCloseTag HTMLOpenTagdiv class=&quot;h-32 px-2&quot;HTMLCloseTag HTMLOpenTagdiv class=&quot;h-full bg-slate-100 dark:bg-darkmode-400 rounded-md&quot;HTMLCloseTag HTMLOpenTagh3 class=&quot;h-full font-medium flex items-center justify-center text-2xl&quot;HTMLCloseTag4HTMLOpenTag/h3HTMLCloseTag HTMLOpenTag/divHTMLCloseTag HTMLOpenTag/divHTMLCloseTag HTMLOpenTagdiv class=&quot;h-32 px-2&quot;HTMLCloseTag HTMLOpenTagdiv class=&quot;h-full bg-slate-100 dark:bg-darkmode-400 rounded-md&quot;HTMLCloseTag HTMLOpenTagh3 class=&quot;h-full font-medium flex items-center justify-center text-2xl&quot;HTMLCloseTag5HTMLOpenTag/h3HTMLCloseTag HTMLOpenTag/divHTMLCloseTag HTMLOpenTag/divHTMLCloseTag HTMLOpenTagdiv class=&quot;h-32 px-2&quot;HTMLCloseTag HTMLOpenTagdiv class=&quot;h-full bg-slate-100 dark:bg-darkmode-400 rounded-md&quot;HTMLCloseTag HTMLOpenTagh3 class=&quot;h-full font-medium flex items-center justify-center text-2xl&quot;HTMLCloseTag6HTMLOpenTag/h3HTMLCloseTag HTMLOpenTag/divHTMLCloseTag HTMLOpenTag/divHTMLCloseTag HTMLOpenTag/divHTMLCloseTag HTMLOpenTag/divHTMLCloseTag </code> </pre>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- END: General Statistic -->
				</div>
			</div>
		</div>
	</div>

</div>
<!-- END: Body -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/4.3.0/chart.min.js" integrity="sha512-mlz/Fs1VtBou2TrUkGzX4VoGvybkD9nkeXWJm3rle0DPHssYYx4j+8kIS15T78ttGfmOjH0lLaBXGcShaVkdkg==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<script src="https://code.highcharts.com/highcharts.js"></script>
<script src="https://code.highcharts.com/modules/exporting.js"></script>
<script src="https://code.highcharts.com/modules/accessibility.js"></script>
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
<script type="text/javascript" src="/resources/js/jquery-3.6.4.min.js"></script>
<script type="text/javascript">
var firstCan = $("#firstChart");
var secondCan = $("#secondChart");
var miniCan = $("#miniChart");

var firstChart = null;
var secondChart = null;
var miniChart = null;
	$(document).ready(function() {
		// 페이지가 로드되면 해당 요소를 클릭
		jQuery(".nav-link.active").click();
		jQuery(".tns-controls button").eq(0).click();
		console.log($("#profileUserName").html());
	});

	$(".nav-item").on("click",function(e){
		let userProfilName = $("#profileUserName").html();
		console.log(e.target);
		console.log($(e.target).attr("data-tw-target"));
		let recomKeyword = $(e.target).attr("data-tw-target").replace("#","");
		if(recomKeyword == 'rstrnt'){
			$("#hiddenRecomInfo").attr("title",userProfilName+"님의 연령대와 성별 그리고 날씨를 기반으로 한 근처맛집 AI 추천입니다.");
			$("#recomInfo").html(userProfilName+"님을 위한 근처맛집  AI 추천입니다.");
			console.log(firstChart);
			if(firstChart != null){
				firstChart.destroy();
			}
			//첫번째 차트 시작
			let rstrntCount = ${rstrntCount};
			console.log(rstrntCount);
			rstrntCount = rstrntCount['rstrntCount'];
			$("#firstHead").html("식당 분류별 주변 식당수 (총 "+rstrntCount+")");
			console.log(rstrntCount);
			let rstrntSeLabels = [];
			let rstrntSeCnt = [];
			let rstrntCntBySe =${rstrntCntBySe};
			console.log("rstrntCntBySe",rstrntCntBySe);
			for (let i=0; i<rstrntCntBySe.length; i++){
				rstrntSeLabels.push(rstrntCntBySe[i]['rstrntSeNm']);
				rstrntSeCnt.push(rstrntCntBySe[i]['rstrntCntBySe']);
			}
			console.log("rstrntSeLabels",rstrntSeLabels);
			console.log("rstrntCntBySe",rstrntCntBySe);

			let firstdata = {
					  labels: rstrntSeLabels,
					  datasets: [{
					    label: '등록된 주변 식당수 ' + rstrntCount,
					    data: rstrntSeCnt,
					    backgroundColor: [
					      'rgba(255, 99, 132, 0.5)',
					      'rgba(255, 159, 64, 0.5)',
					      'rgba(255, 205, 86, 0.5)',
					      'rgba(75, 192, 192, 0.5)',
					      'rgba(54, 162, 235, 0.5)',
					      'rgba(153, 102, 255, 0.5)',
					      'rgba(201, 203, 207, 0.5)'
					    ],
					    borderColor: [
					      'rgb(255, 99, 132)',
					      'rgb(255, 159, 64)',
					      'rgb(255, 205, 86)',
					      'rgb(75, 192, 192)',
					      'rgb(54, 162, 235)',
					      'rgb(153, 102, 255)',
					      'rgb(201, 203, 207)'
					    ],
					    borderWidth: 1
					  }]
					};
			firstChart = new Chart(firstCan, {
				    type: 'bar',
				    data: firstdata,
				    options: {
				      scales: {
				        y: {
				          beginAtZero: true
				        },
				        x: {
				            display: false // X축 라벨 숨기기
				          }
				      },
				      plugins:{
			                legend: {
			                    display: false
			                },
			            }
				    }
			});
			console.log(firstChart);
			//첫번째 차트 종료
			//두번째 차트 시작
			if(secondChart != null){
				secondChart.destroy();
			}
			let rstrntReviewCnt = ${rstrntReviewCnt};
			let totalReviewCnt = rstrntReviewCnt['reviewCnt'];
			$("#secondHead").html("주변 식당 중 리뷰 탑 10 (총 리뷰수 "+totalReviewCnt+")");

			let bestRstrntLabel = [];
			let reviewCntData = [];
			let bestReviewCntRstrnt = ${bestReviewCntRstrnt};
			for (let i=0; i<bestReviewCntRstrnt.length; i++){
				bestRstrntLabel.push(bestReviewCntRstrnt[i]['rstrntNm']);
				reviewCntData.push(bestReviewCntRstrnt[i]['reviewCnt']);
			}
			let secondData = {
					  labels: bestRstrntLabel,
					  datasets: [{
						  axis: 'y',
						    label: '등록된 총 리뷰수 ' + totalReviewCnt,
						    data: reviewCntData,
						    fill: false,
						    backgroundColor: [
						      'rgba(255, 99, 132, 0.5)',
						      'rgba(255, 159, 64, 0.5)',
						      'rgba(255, 205, 86, 0.5)',
						      'rgba(75, 192, 192, 0.5)',
						      'rgba(54, 162, 235, 0.5)',
						      'rgba(153, 102, 255, 0.5)',
						      'rgba(201, 203, 207, 0.5)'
						    ],
						    borderColor: [
						      'rgb(255, 99, 132)',
						      'rgb(255, 159, 64)',
						      'rgb(255, 205, 86)',
						      'rgb(75, 192, 192)',
						      'rgb(54, 162, 235)',
						      'rgb(153, 102, 255)',
						      'rgb(201, 203, 207)'
						    ],
						    borderWidth: 1
					  }]
					};

			secondChart = new Chart(secondCan, {
			    type: 'bar',
			    data: secondData,
			    options: {
			      scales: {
			        y: {
			          beginAtZero: true,
			          display: false
			        }
			      },
			     maxBarThickness: 10,
			     indexAxis:'y',
			     plugins:{
		                legend: {
		                    display: false
		                },
		            }
			    }
			});
			//두번째 차트 종료
			//추천 항목 카드 시작
			let rstrntRecomList = ${rstrntRecom};
			console.log(rstrntRecomList);
			for (let i=0; i<rstrntRecomList.length; i++){
				console.log(i);
				let str = "<div class='h-full mr-10' style='width: 35%; float: left;'>";
				str += "<img src='"+rstrntRecomList[i]['rstrntImg']+"' data-action='zoom' class='w-full rounded-md' style='height: 190px;' alt='"+rstrntRecomList[i]['rstrntNm']+"'>";
				str += "</div><div class='h-full' style='float: left';>";
				str += "<h2 class='font-bold text-base mr-auto' style='font-size: 20px;'>"
						+ rstrntRecomList[i]['rstrntNm'] + "</h2><br>";
				str += "<h2 class='text-base mr-auto' style='font-size: 17px;'>영업시간 "
						+ rstrntRecomList[i]['bsnHour'] + "<br>";
				if(rstrntRecomList[i]['restde'] == null){
					str += "휴무일 연중무휴"+"<br>";
				}else{
					str += "휴무일 "+rstrntRecomList[i]['restde'] + "<br>";
				}
				str += rstrntRecomList[i]['rstrntAdres'] + "<br>";
				str += rstrntRecomList[i]['rstrntTel'] + "<br>";
				if(rstrntRecomList[i]['rstrntUrl'] != null){
					str += "<a href='"+rstrntRecomList[i]['rstrntUrl']+"' target='_blank'><h2 class='text-base' style='font-size: 17px; color: green;'>식당 홈페이지</h2></a>";
				}
				str += "<a href=/mem/cmnt/neighborbbs target='_blank'><h2 class='text-base' style='font-size: 17px; color: green;'>식당후기 보러가기</h2></a>";
				str += "</div>";
				str += "</div>";
				$(".rec0"+(i+1)).html(str);
				console.log(".rec0"+(i+1));
			}
			//추천 항목 카드 종료

			//미니 차트 시작
			let carouselControls = document.querySelector('.tns-controls');
			carouselControls.addEventListener('click', function(event) {
				let targetButton = event.target;
				console.log("click");
				setTimeout(nowRstrntRecom, 1000);

			});
			function nowRstrntRecom(){
				let nowRecom = $(".tns-slide-active");
				let nowRecomId = nowRecom.attr("id");
				let idx = nowRecomId.replace("tns1-item","");

				console.log(nowRecom.attr("id"));
				console.log(idx);
				let nowRecomRstrntVO = rstrntRecomList[idx];
				console.log(nowRecomRstrntVO);
				jQuery.ajax({
					url : "/mem/ai/doran/recomDetail?rstrntId="+nowRecomRstrntVO['rstrntId'],
					contentType : "application/json;charset=utf-8",
					type : "get",
					dataType : "json",
					beforeSend : function(xhr) {
						xhr.setRequestHeader("${_csrf.headerName}","${_csrf.token}");
					},
					success : function(result) {
						console.log(miniChart);
						if(miniChart != null){
							miniChart.destroy();
						}
						console.log("result",result);
						let genderLabels = [];
						let genderReviewData = [];
						for (let i=0; i<result.length;i++){
							console.log(result[i]['sexDstn']);
							console.log(result[i]['reviewCnt']);
							genderLabels.push(result[i]['sexDstn']);
							genderReviewData.push(result[i]['reviewCnt']);
						}
						console.log("genderLabels",genderLabels);
						console.log("genderReviewData",genderReviewData);
						let miniData = {
							    labels: genderLabels,
							    datasets: [{
							        label: '성별 리뷰수',
							        data: genderReviewData,
							        backgroundColor: [
							            'rgba(255, 99, 132, 0.5)',
							            'rgba(75, 192, 192, 0.5)'
							        ],

							        hoverOffset: 4
							    }]
							};

							miniChart = new Chart(miniCan, {
							    type: 'doughnut',
							    data: miniData,
							    options: {
							         responsive: false,
							         },
							});
						console.log(miniChart);
			//미니 차트 종료
					}
				});
			}
		//식당 추천 그래프 종료
		//나들이 추천 시작
		}else if(recomKeyword == 'picnic'){
			$("#hiddenRecomInfo").attr("title",userProfilName+"님의 가족구성과 예상 날씨를 기반으로 한 AI 추천 주말 나들이 장소입니다.");
			$("#recomInfo").html(userProfilName+"님을 위한 이번 주말 나들이 장소 AI추천입니다.");
			console.log("picnicRecom");
			if(firstChart != null){
				firstChart.destroy();
			}
			//첫번째 차트 시작
			let rstrntCount = ${rstrntCount};
			console.log(rstrntCount);
			rstrntCount = rstrntCount['rstrntCount'];
			$("#firstHead").html("식당 분류별 주변 식당수 (총 "+rstrntCount+")");
			console.log(rstrntCount);
			let rstrntSeLabels = [];
			let rstrntSeCnt = [];
			let rstrntCntBySe =${rstrntCntBySe};
			console.log("rstrntCntBySe",rstrntCntBySe);
			for (let i=0; i<rstrntCntBySe.length; i++){
				rstrntSeLabels.push(rstrntCntBySe[i]['rstrntSeNm']);
				rstrntSeCnt.push(rstrntCntBySe[i]['rstrntCntBySe']);
			}
			console.log("rstrntSeLabels",rstrntSeLabels);
			console.log("rstrntCntBySe",rstrntCntBySe);

			let firstdata = {
					  labels: rstrntSeLabels,
					  datasets: [{
					    label: '등록된 주변 식당수 ' + rstrntCount,
					    data: rstrntSeCnt,
					    backgroundColor: [
					      'rgba(255, 99, 132, 0.5)',
					      'rgba(255, 159, 64, 0.5)',
					      'rgba(255, 205, 86, 0.5)',
					      'rgba(75, 192, 192, 0.5)',
					      'rgba(54, 162, 235, 0.5)',
					      'rgba(153, 102, 255, 0.5)',
					      'rgba(201, 203, 207, 0.5)'
					    ],
					    borderColor: [
					      'rgb(255, 99, 132)',
					      'rgb(255, 159, 64)',
					      'rgb(255, 205, 86)',
					      'rgb(75, 192, 192)',
					      'rgb(54, 162, 235)',
					      'rgb(153, 102, 255)',
					      'rgb(201, 203, 207)'
					    ],
					    borderWidth: 1
					  }]
					};
			firstChart = new Chart(firstCan, {
				    type: 'bar',
				    data: firstdata,
				    options: {
				      scales: {
				        y: {
				          beginAtZero: true
				        },
				        x: {
				            display: false // X축 라벨 숨기기
				          }
				      },
				      plugins:{
			                legend: {
			                    display: false
			                },
			            }
				    }
			});
			console.log(firstChart);
			//첫번째 차트 종료
			//두번째 차트 시작
			if(secondChart != null){
				secondChart.destroy();
			}
			let rstrntReviewCnt = ${rstrntReviewCnt};
			let totalReviewCnt = rstrntReviewCnt['reviewCnt'];
			$("#secondHead").html("주변 식당 중 리뷰 탑 10 (총 리뷰수 "+totalReviewCnt+")");

			let bestRstrntLabel = [];
			let reviewCntData = [];
			let bestReviewCntRstrnt = ${bestReviewCntRstrnt};
			for (let i=0; i<bestReviewCntRstrnt.length; i++){
				bestRstrntLabel.push(bestReviewCntRstrnt[i]['rstrntNm']);
				reviewCntData.push(bestReviewCntRstrnt[i]['reviewCnt']);
			}
			let secondData = {
					  labels: bestRstrntLabel,
					  datasets: [{
						  axis: 'y',
						    label: '등록된 총 리뷰수 ' + totalReviewCnt,
						    data: reviewCntData,
						    fill: false,
						    backgroundColor: [
						      'rgba(255, 99, 132, 0.5)',
						      'rgba(255, 159, 64, 0.5)',
						      'rgba(255, 205, 86, 0.5)',
						      'rgba(75, 192, 192, 0.5)',
						      'rgba(54, 162, 235, 0.5)',
						      'rgba(153, 102, 255, 0.5)',
						      'rgba(201, 203, 207, 0.5)'
						    ],
						    borderColor: [
						      'rgb(255, 99, 132)',
						      'rgb(255, 159, 64)',
						      'rgb(255, 205, 86)',
						      'rgb(75, 192, 192)',
						      'rgb(54, 162, 235)',
						      'rgb(153, 102, 255)',
						      'rgb(201, 203, 207)'
						    ],
						    borderWidth: 1
					  }]
					};

			secondChart = new Chart(secondCan, {
			    type: 'bar',
			    data: secondData,
			    options: {
			      scales: {
			        y: {
			          beginAtZero: true,
			          display: false
			        }
			      },
			     maxBarThickness: 10,
			     indexAxis:'y',
			     plugins:{
		                legend: {
		                    display: false
		                },
		            }
			    }
			});
			//두번째 차트 종료
			//추천 항목 카드 시작
			let memId = "${userVO.memberVO.memId}";
			let data = {
				"memId" : memId
			};

			//이번 주말 추천 나들이 장소
			jQuery.ajax({
				url : "/mem/picnicRecom",
				contentType : "application/json;charset=utf-8",
				data : JSON.stringify(data),
				type : "post",
				dataType : "json",
				beforeSend : function(xhr) {
					xhr.setRequestHeader("${_csrf.headerName}","${_csrf.token}");
				},
				success : function(result) {
					console.log("result : " + JSON.stringify(result));

					let rec01Str = "<div class='h-full mr-10' style='width: 35%; float: left;'>";
					rec01Str += "<img src='/resources/images/place/"+result[0].PICNIC_IMG+"' data-action='zoom' class='w-full rounded-md' style='height: 190px;' alt='"+result[0].PICNIC_NM+"'>";
					rec01Str += "</div><div class='h-full' style='float: left';>";
					rec01Str += "<h2 class='text-base mr-auto' style='font-size: 17px;'>"+ result[0].WEEKEND_DATE+ "&nbsp;"
							+ result[0].WEEK + "</h2><br>";
					rec01Str += "<h2 class='font-bold text-base mr-auto' style='font-size: 20px;'>"
							+ result[0].PICNIC_NM + "</h2><br>";
					rec01Str += "<h2 class='text-base mr-auto' style='font-size: 17px;'>영업시간 "
							+ result[0].BSN_HOUR + "<br>";
					rec01Str += result[0].PICNIC_TEL + "<br>";
					rec01Str += result[0].PICNIC_ADRES + "<br>";
					rec01Str += "<a href='"+result[0].PICNIC_URL+"' target='_blank'><h2 class='text-base mr-auto' style='font-size: 17px; color: green;'>홈페이지</h2></a>";
					rec01Str += "</div><div style='float:right;'>";
					rec01Str += "<span style='font-size: 17px; color: blue;'>"
							+ result[0].WETHR_LOW
							+ "</span>/<span style='font-size: 17px; color: red;'> "
							+ result[0].WETHR_HIGH + "</span><br>";
					rec01Str += "<div style='float:right;'><img src='/resources/images/weather/"+result[0].WETHR_IMG+"' style='height: 40px;' alt='"+result[0].WETHR_INFO+"'></div><br><br>";
					rec01Str += "</div>";
					$(".rec01").html(rec01Str);

					let rec02Str = "<div class='h-full mr-10' style='width: 35%; float: left;'>";
					rec02Str += "<img src='/resources/images/place/"+result[1].PICNIC_IMG+"' data-action='zoom' class='w-full rounded-md' style='height: 190px;' alt='"+result[1].PICNIC_NM+"'>";
					rec02Str += "</div><div class='h-full' style='float: left';>";
					rec02Str += "<h2 class='text-base mr-auto' style='font-size: 17px;'>"
							+ result[1].WEEKEND_DATE
							+ "&nbsp;"
							+ result[1].WEEK + "</h2><br>";
					rec02Str += "<h2 class='font-bold text-base mr-auto' style='font-size: 20px;'>"
							+ result[1].PICNIC_NM + "</h2><br>";
					rec02Str += "<h2 class='text-base mr-auto' style='font-size: 17px;'>영업시간 "
							+ result[1].BSN_HOUR + "<br>";
					rec02Str += result[1].PICNIC_TEL + "<br>";
					rec02Str += result[1].PICNIC_ADRES + "<br>";
					rec02Str += "<a href='"+result[1].PICNIC_URL+"' target='_blank'><h2 class='text-base' style='font-size: 17px; color: green;'>홈페이지</h2></a>";
					rec02Str += "</div><div style='float:right;'>";
					rec02Str += "<span style='font-size: 17px; color: blue;'>"
							+ result[1].WETHR_LOW
							+ "</span>/<span style='font-size: 17px; color: red;'> "
							+ result[1].WETHR_HIGH + "</span><br>";
					rec02Str += "<div style='float:right;'><img src='/resources/images/weather/"+result[1].WETHR_IMG+"' style='height: 40px;' alt='"+result[1].WETHR_INFO+"'></div><br><br>";
					rec02Str += "</div>";
					$(".rec02").html(rec02Str);
					$(".rec03").html("");
				}
			});
			jQuery(".tns-controls button").eq(1).click();
			//추천 항목 카드 종료

			//미니 차트 시작
			let carouselControls = document.querySelector('.tns-controls');
			carouselControls.addEventListener('click', function(event) {
				let targetButton = event.target;
				console.log("click");
				setTimeout(nowRstrntRecom, 1000);

			});
			function nowRstrntRecom(){
				let nowRecom = $(".tns-slide-active");
				let nowRecomId = nowRecom.attr("id");
				let idx = nowRecomId.replace("tns1-item","");

				console.log(nowRecom.attr("id"));
				console.log(idx);
				let nowRecomRstrntVO = rstrntRecomList[idx];
				console.log(nowRecomRstrntVO);
				jQuery.ajax({
					url : "/mem/ai/doran/recomDetail?rstrntId="+nowRecomRstrntVO['rstrntId'],
					contentType : "application/json;charset=utf-8",
					type : "get",
					dataType : "json",
					beforeSend : function(xhr) {
						xhr.setRequestHeader("${_csrf.headerName}","${_csrf.token}");
					},
					success : function(result) {
						console.log(miniChart);
						if(miniChart != null){
							miniChart.destroy();
						}
						console.log("result",result);
						let genderLabels = [];
						let genderReviewData = [];
						for (let i=0; i<result.length;i++){
							console.log(result[i]['sexDstn']);
							console.log(result[i]['reviewCnt']);
							genderLabels.push(result[i]['sexDstn']);
							genderReviewData.push(result[i]['reviewCnt']);
						}
						console.log("genderLabels",genderLabels);
						console.log("genderReviewData",genderReviewData);
						let miniData = {
							    labels: genderLabels,
							    datasets: [{
							        label: '성별 리뷰수',
							        data: genderReviewData,
							        backgroundColor: [
							            'rgba(255, 99, 132, 0.5)',
							            'rgba(75, 192, 192, 0.5)'
							        ],

							        hoverOffset: 4
							    }]
							};

							miniChart = new Chart(miniCan, {
							    type: 'doughnut',
							    data: miniData,
							    options: {
							         responsive: false,
							         },
							});
						console.log(miniChart);
			//미니 차트 종료
					}
				});
			}
		}else if(recomKeyword == 'scndhd'){
			if(firstChart != null){
				firstChart.destroy();
			}
			//첫번째 차트 시작
			let cateCnt = ${cateCnt};
			console.log("cateCnt", cateCnt);
			cateCnt = cateCnt['cateCnt'];
			$("#firstHead").html("중고장터 게시판 카테고리별 등록 수 (총 "+cateCnt+")");
			console.log("cateCnt ", cateCnt);
			let schandSeNm = [];
			let productCount = [];
			let cateRegistr =${cateRegistr};
			console.log("cateRegistr",cateRegistr);
			for (let i=0; i<cateRegistr.length; i++){
				schandSeNm.push(cateRegistr[i]['schandSeNm']);
				productCount.push(cateRegistr[i]['productCount']);
			}
			console.log("schandSeNm",schandSeNm);
			console.log("productCount",productCount);

			let firstdata = {
					  labels: schandSeNm,
					  datasets: [{
					    label: '중고장터 카테고리 ' + cateCnt,
					    data: productCount,
					    backgroundColor: [
					      'rgba(255, 99, 132, 0.5)',
					      'rgba(255, 159, 64, 0.5)',
					      'rgba(255, 205, 86, 0.5)',
					      'rgba(75, 192, 192, 0.5)',
					      'rgba(54, 162, 235, 0.5)',
					      'rgba(153, 102, 255, 0.5)',
					      'rgba(201, 203, 207, 0.5)'
					    ],
					    borderColor: [
					      'rgb(255, 99, 132)',
					      'rgb(255, 159, 64)',
					      'rgb(255, 205, 86)',
					      'rgb(75, 192, 192)',
					      'rgb(54, 162, 235)',
					      'rgb(153, 102, 255)',
					      'rgb(201, 203, 207)'
					    ],
					    borderWidth: 1
					  }]
					};
			firstChart = new Chart(firstCan, {
				    type: 'bar',
				    data: firstdata,
				    options: {
				      scales: {
				        y: {
				          beginAtZero: true
				        },
				        x: {
				            display: false // X축 라벨 숨기기
				          }
				      },
				      plugins:{
			                legend: {
			                    display: false
			                },
			            }
				    }
			});
			console.log(firstChart);
			//첫번째 차트 종료
			//두번째 차트 시작
			if(secondChart != null){
				secondChart.destroy();
			}
			let MonthCnt = ${MonthCnt};
			let totalMonthCnt = MonthCnt['totalRegisteredQuantity'];
			$("#secondHead").html("최근 한달동안 게시글이 등록된 카테고리 탑 10 (총 게시글 "+totalMonthCnt+")");

			let schandSeNm2 = [];
			let registeredQuantity = [];
			let monthBest = ${monthBest};
			for (let i=0; i<monthBest.length; i++){
				schandSeNm2.push(monthBest[i]['schandSeNm']);
				registeredQuantity.push(monthBest[i]['registeredQuantity']);
			}
			let secondData = {
					  labels: schandSeNm2,
					  datasets: [{
						  axis: 'y',
						    label: '등록된 총 게시글 ' + totalMonthCnt,
						    data: registeredQuantity,
						    fill: false,
						    backgroundColor: [
						      'rgba(255, 99, 132, 0.5)',
						      'rgba(255, 159, 64, 0.5)',
						      'rgba(255, 205, 86, 0.5)',
						      'rgba(75, 192, 192, 0.5)',
						      'rgba(54, 162, 235, 0.5)',
						      'rgba(153, 102, 255, 0.5)',
						      'rgba(201, 203, 207, 0.5)'
						    ],
						    borderColor: [
						      'rgb(255, 99, 132)',
						      'rgb(255, 159, 64)',
						      'rgb(255, 205, 86)',
						      'rgb(75, 192, 192)',
						      'rgb(54, 162, 235)',
						      'rgb(153, 102, 255)',
						      'rgb(201, 203, 207)'
						    ],
						    borderWidth: 1
					  }]
					};

			secondChart = new Chart(secondCan, {
			    type: 'bar',
			    data: secondData,
			    options: {
			      scales: {
			        y: {
			          beginAtZero: true,
			          display: false
			        }
			      },
			     maxBarThickness: 10,
			     indexAxis:'y',
			     plugins:{
		                legend: {
		                    display: false
		                },
		            }
			    }
			});
			//두번째 차트 끝


			console.log("scndhdRecom");
			let scndhdRecom =${scndhdRecom};
			console.log("scndhdRecom",scndhdRecom[0]);

			for (let i=0; i<scndhdRecom.length; i++){
				console.log(i);
				let str = "<div class='h-full mr-10' style='width: 35%; float: left;'>";
				str += "<img src='/resources/upload"+scndhdRecom[i]['atchmnflDetailList'][0]['flpth']+"/"+scndhdRecom[i]['atchmnflDetailList'][0]['streFlNm']+"' data-action='zoom' class='w-full rounded-md' style='height: 190px;' alt='"+scndhdRecom[i]['pstSj']+"'>";
				str += "</div><div class='h-full' style='float: left';>";
				str += "<h2 class='font-bold text-base mr-auto' style='font-size: 20px;'>"
						+ scndhdRecom[i]['pstSj'] + "</h2><br>";
				str += "<h2 class='text-base mr-auto' style='font-size: 17px; margin-top: 1px; margin-bottom: 1px;'>가격 " + scndhdRecom[i]['scndhandPc'] + "원<br>";
				str += "상태 " + scndhdRecom[i]['ntslStts'] + "<br>";
				str += scndhdRecom[i]['pstCn'] + "<br>";
				str += "<a href='/mem/cmnt/secondhandbbs/detail?pstId=" + scndhdRecom[i]['pstId'] + "' target='_blank'><h2 class='text-base' style='font-size: 17px; color: green; margin-top: 1px; margin-bottom: 1px;'>판매게시글 보러가기</h2></a>";
				str += "</div>";
				str += "</div>";
				$(".rec0"+(i+1)).html(str);
				console.log(".rec0"+(i+1));
			}
			//추천 항목 카드 종료
			//미니 차트 시작
			let carouselControls = document.querySelector('.tns-controls');
			carouselControls.addEventListener('click', function(event) {
				let targetButton = event.target;
				console.log("click");
				setTimeout(nowRstrntRecom, 1000);

			});
			function nowRstrntRecom(){
				let nowRecom = $(".tns-slide-active");
				let nowRecomId = nowRecom.attr("id");
				let idx = nowRecomId.replace("tns1-item","");

				console.log(nowRecom.attr("id"));
				console.log(idx);
				let nowRecomRstrntVO = rstrntRecomList[idx];
				console.log(nowRecomRstrntVO);
				jQuery.ajax({
					url : "/mem/ai/doran/recomDetail?rstrntId="+nowRecomRstrntVO['rstrntId'],
					contentType : "application/json;charset=utf-8",
					type : "get",
					dataType : "json",
					beforeSend : function(xhr) {
						xhr.setRequestHeader("${_csrf.headerName}","${_csrf.token}");
					},
					success : function(result) {
						console.log(miniChart);
						if(miniChart != null){
							miniChart.destroy();
						}
						console.log("result",result);
						let genderLabels = [];
						let genderReviewData = [];
						for (let i=0; i<result.length;i++){
							console.log(result[i]['sexDstn']);
							console.log(result[i]['reviewCnt']);
							genderLabels.push(result[i]['sexDstn']);
							genderReviewData.push(result[i]['reviewCnt']);
						}
						console.log("genderLabels",genderLabels);
						console.log("genderReviewData",genderReviewData);
						let miniData = {
							    labels: genderLabels,
							    datasets: [{
							        label: '성별 리뷰수',
							        data: genderReviewData,
							        backgroundColor: [
							            'rgba(255, 99, 132, 0.5)',
							            'rgba(75, 192, 192, 0.5)'
							        ],

							        hoverOffset: 4
							    }]
							};

							miniChart = new Chart(miniCan, {
							    type: 'doughnut',
							    data: miniData,
							    options: {
							         responsive: false,
							         },
							});
						console.log(miniChart);
			//미니 차트 종료
					}
				});
			}


			$("#hiddenRecomInfo").attr("title",userProfilName+"님의 관심사와 연령, 성별을 기반으로 한 중고장터 판매 게시글 AI 추천입니다.");
			$("#recomInfo").html(userProfilName+"님을 위한 중고장터 게시물 AI 추천입니다.");




		}else if(recomKeyword == 'club'){
			console.log("clubRecom");
			$("#hiddenRecomInfo").attr("title",userProfilName+"님의 연령, 관심사를 기반으로 한 소모임 AI 추천입니다.");
			$("#recomInfo").html(userProfilName+"님을 위한 소모임 AI 추천입니다.");



			// 추천 소모임 데이터 가져오기
			let memId = "${userVO.memberVO.memId}";
			console.log(memId);

			jQuery.ajax({
				url : "/mem/cmnt/clubbbs/recom",
				data : memId,
				contentType : "application/json;charset:utf-8",
				dataType : "json",
				type : "post",
				beforeSend:function(xhr){
					xhr.setRequestHeader("${_csrf.headerName}","${_csrf.token}");
				},
				success : function(result){
					console.log(result);

					let clubVOList = result;

					for (let i=0; i<clubVOList.length; i++){

						let str = "<div class='h-full mr-10' style='width: 35%; float: left;'>";
						str += "<img src='/resources/upload"+clubVOList[i].clbImg+"' data-action='zoom' class='w-full rounded-md' style='height: 190px;' alt='"+clubVOList[i].clbNm+"'>";
						str += "</div><div class='h-full' style='float: left';>";
						str += "<h2 class='font-bold text-base mr-auto' style='font-size: 20px;'>"
								+ clubVOList[i].clbNm + "</h2><br>";
								str += "<h2 class='text-base mr-auto' style='font-size: 17px; margin-bottom: 1px;'>회원수 " + clubVOList[i].clbNowNmpr + "<br>";
								str += "평균 연령 " + clubVOList[i].clbAge + "<br>";

								let kakaoUrl = clubVOList[i].clbIntrcn;
								let findurl = "오픈카톡 URL : ";
								let startIndex = kakaoUrl.indexOf(findurl) + findurl.length;
								let openKakaoURL = kakaoUrl.substring(startIndex);
								str += "오픈 카카오톡 URL <br>";
								str += "<span style='margin-top: 1px; margin-bottom: 1px;'>" + openKakaoURL + "</span><br>";

								str += "<a href='/mem/cmnt/clubbbs' target='_blank'><h2 class='text-base' style='font-size: 17px; color: green; margin-top: 1px; margin-bottom: 1px;'>동호회 보러가기</h2></a>";
						str += "</div>";
						str += "</div>";
						$(".rec0"+(i+1)).html(str);
					}
				}
			});
		}else if(recomKeyword == 'book'){
			console.log("bookRecom");
			$("#hiddenRecomInfo").attr("title",userProfilName+"님의 도서 대출 기록을 기반으로 한 도서 AI 추천입니다.");
			$("#recomInfo").html(userProfilName+"님을 도서 AI 추천입니다.");
			let bookRecom = ${bookRecom};
			console.log("bookRecom",bookRecom);
			for (let i=0; i<bookRecom.length; i++){
				console.log(i);
				let str = "<div style='width: 40%; float: left;'>";
				str += "<img src='/resources" + bookRecom[i]['BOOK_IMG'] + "' style='transform: rotate(-90deg); margin-top: -20px; width: 80%; margin-left: 15px;' data-action='zoom' class='rounded-md' alt='" + bookRecom[i]['BOOK_SJ'] + "'>";
				str += "</div><div class='ml-5 mt-10' style='float: left'>";
				str += "<h2 class='font-bold text-base mr-auto' style='font-size: 20px;'>"
						+ bookRecom[i]['BOOK_SJ'] + "</h2><br>";
				str += "<h2 class='text-base mr-auto' style='font-size: 17px; margin-top: 1px; margin-bottom: 1px;'>";
				str += "저자 " + bookRecom[i]['AUTHR'] + "<br>";
				str += "재고수 " + bookRecom[i]['INVNTRY'] + "<br>";
				str += "<a href='/mem/life/library' target='_blank'><h2 class='text-base' style='font-size: 17px; color: green; margin-top: 1px; margin-bottom: 1px;'>도서관 이용하기기</h2></a>";
				str += "</div>";
				str += "</div>";
				$(".rec0"+(i+1)).html(str);
				console.log(".rec0"+(i+1));
			}
			//추천 항목 카드 종료

		}
	});


</script>