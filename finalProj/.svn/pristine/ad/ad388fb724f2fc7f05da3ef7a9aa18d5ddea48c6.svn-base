<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>

<script src="https://canvasjs.com/assets/script/jquery-1.11.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.9.4/Chart.min.js"></script>
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
<script src="https://cdn.canvasjs.com/canvasjs.min.js"></script>
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
<sec:authentication property="principal.userVO" var="userVO" />
<c:set var="hshldInfoNo" value="${userVO.memberVO.hshldInfoNo}"/>
<h5 class="text-lg font-medium leading-none mt-0 mr-auto">마이페이지
         &gt; 관리비 조회 &gt; 관리비 비교</h5>
<div class="col-span-12 xl:col-span-9 mt-3">
	<div class="report-box-2 intro-y mt-0">
		<div class="box grid grid-cols-12">
			<!-- 지난달 관리비 시작-->
			<div class="col-span-12 lg:col-span-6 p-6 border-t lg:border-t-0 lg:border-l border-slate-200 border-dashed">
				<div class="flex-col mt-5 items-center">
					<div class="flex-col mt-5 items-center">
					    <div class="flex text-lg font-bold items-center" style="height: 10px;">
					        <input type="hidden" id="rlvtYm" name="rlvtYm" />
					        <select id="year" name="year" class="form-select text-lg" style="text-align:center; height:40px; width:150px; margin-left: 50px;">
					            <option value="2023" selected>2023 년</option>
					            <option value="2022">2022 년</option>
					            <option value="2021">2021 년</option>
					        </select>
					        <select id="month" name="month" class="form-select text-lg ml-1" style="text-align:center; height:40px; width:100px; margin-left: 5px;">
					            <option value="01">01 월</option>
					            <option value="02">02 월</option>
					            <option value="03">03 월</option>
					            <option value="04">04 월</option>
					            <option value="05">05 월</option>
					            <option value="06" selected>06 월</option>
					            <option value="07">07 월</option>
					            <option value="08">08 월</option>
					            <option value="09">09 월</option>
					            <option value="10">10 월</option>
					            <option value="11">11 월</option>
					            <option value="12">12 월</option>
					        </select>
					    </div>
					</div>
				</div>
				<!-- 지난달 관리비 chart 시작-->
				<div id="chart-container" class="tab-content px-5 pb-5" style="margin-top: 50px;">
					<canvas id="donut-chart_1" width="300" height="186"></canvas>
				</div>
					<div class="flex flex-col items-center absolute" style="top: 180px; right: 81%; transform: translate(45%, -20%);">
					    <div id="lastDay"   class="font-semibold text-lg font-medium"></div>
					    <div id="lastTotal" class="text-slate-500 mt-0"></div>
					</div>
				<!-- 지난달 관리비 chart 끝-->
				<div class="flex mt-3">
					<a href="/mem/mypg/managectbbs/detail?rlvtYm=202306" class="btn btn-outline-secondary w-25 h-10 ml-auto font-bold" style="font-size: 15px;">자세히보기</a>
				</div>
			</div>
			<!-- 지난달 관리비 끝 -->
			<!-- 이번달 관리비 시작 -->
			<div class="col-span-12 lg:col-span-6 p-6 border-t lg:border-t-0 lg:border-l border-slate-200 border-dashed">
				<div class="flex-col mt-5 items-center">
			    	<div class="flex text-lg font-bold items-center" style="height: 10px;">
			    		<a id="btnDet" class="btn btn-primary font-bold ml-3" style="height:40px; width: 150px; margin-left: 100px;"> 이번달 관리비 </a>
			    	</div>
			    </div>
				<!-- 이번달 관리비 chart 시작-->
				<div class="tab-content px-5 pb-5" style="margin-top: 50px;">
					 <canvas id="donut-chart_2" width="300" height="186"></canvas>
				</div>
				<div class="flex flex-col items-center absolute" style="top: 180px; left: 68%; transform: translate(-45%, -20%);">
			        <div class="font-semibold text-lg font-medium">23.07 기준</div>
			        <div class="text-slate-500 mt-0">￦ 157,028</div>
			    </div>
				<!-- 이번달 관리비 chart 끝-->
				<div class="flex mt-3">
					<a href="/mem/mypg/managectbbs/detail?rlvtYm=202307" class="btn btn-outline-secondary w-25 h-10 ml-auto font-bold" style="font-size: 15px;">자세히보기</a>
				</div>
			</div>
			<!-- 이번달 관리비 끝 -->
		</div>
	</div>
	<!-- 비교 chart 시작 -->
	<div class="chart-wrap" style="margin-top: 20px;">
		<div id="chartContainer" style="height: 450px; width: 100%;"></div>
	</div>
	<!-- 비교 chart 끝 -->
</div>
</div>
<!-- 차트 들어갈부분 -->
<!-- BEGIN: Body -->
<style>
    #chart {
      position: relative;
      height: 400px;
    }
    .legend-container {
      position: absolute;
      top: 50%;
      right: 10px;
      transform: translateY(-50%);
      display: flex;
      flex-direction: column;
      align-items: flex-end;
      margin-bottom: 20px;
    }
    .legend-item {
      display: flex;
      align-items: center;
      margin-bottom: 5px;
    }
    .legend-color-box {
      width: 10px;
      height: 10px;
      margin-right: 5px;
    }
    .legend-text {
      margin-top: -2px;
    }

.hidden_data {
  display: none;
}

.chart-container {
  width: 400px;
  height: 400px;
  border: 1px solid #ddd;
  padding: 5px;
  border-radius: 4px;
}

</style>
<script src="https://cdn.jsdelivr.net/npm/chart.js@3.5.1"></script>
<script type="text/javascript" src="/resources/js/jquery-3.6.4.min.js"></script>
<script type="text/javascript">
$(function() {
	// 메뉴 경로 표시 (상단 메뉴)
	$("#main_menu").html("마이페이지");
	$("#sub_menu").html("관리비 비교");

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
	//================================================================//

	//-------------chart에 데이터를 넣기위한 GSON 형식 데이터 시작 -----------------//
	let compData = ${compJson};
	let compDataList = JSON.stringify(compData);
	console.log("compDataList: " + compDataList);
	let cpData = JSON.parse(compDataList);
	let yearVal = $("#year").val();
	let monthVal = $("#month").val();
	let period = yearVal+monthVal;

	let cpDataThisMonth = {
		elc: 0,
		wtr: 0,
		heat: 0,
		cln: 0,
		dsn: 0,
		repair: 0,
		elvt: 0,
	};

	let cpDataLastMonth = {
		elc: 0,
		wtr: 0,
		heat: 0,
		cln: 0,
		dsn: 0,
		repair: 0,
		elvt: 0,
	};

	for (let i = 0; i < cpData.length; i++) {
		if (cpData[i].rlvtYm === "202307") { // 7월달 데이터의 rlvtYm 값
			cpDataThisMonth.elc = cpData[i].elc;
			cpDataThisMonth.wtr = cpData[i].wtr;
			cpDataThisMonth.heat = cpData[i].heat;
			cpDataThisMonth.cln = cpData[i].cln;
			cpDataThisMonth.dsn = cpData[i].dsn;
			cpDataThisMonth.repair = cpData[i].repair;
			cpDataThisMonth.elvt = cpData[i].elvt;
		} else if (cpData[i].rlvtYm === "202306") { // 6월달 데이터의 rlvtYm 값
			cpDataLastMonth.elc = cpData[i].elc;
			cpDataLastMonth.wtr = cpData[i].wtr;
			cpDataLastMonth.heat = cpData[i].heat;
			cpDataLastMonth.cln = cpData[i].cln;
			cpDataLastMonth.dsn = cpData[i].dsn;
			cpDataLastMonth.repair = cpData[i].repair;
			cpDataLastMonth.elvt = cpData[i].elvt;
		}
	}

	console.log("This month -> cpData101 : ", cpDataThisMonth);
	console.log("Last month -> cpData101 : ", cpDataLastMonth);

	//-------------chart에 데이터를 넣기위한 GSON 형식 데이터 끝 -----------------//



	//-------------- doughnut chart들어갈 데이터 지난달 관리비 시작 ---------------------//
	let ctx1 = $("#donut-chart_1")[0].getContext("2d");
	let doughnutChart_1 = new Chart(ctx1, {
	    type: "doughnut",
	    data: {
	      labels: ["전기료", "수도료", "가스사용료", "청소비", "소독비", "수선유지비", "승강기 유지비"],
	      datasets: [{
	        data: Object.values(cpDataLastMonth), // 관리비 데이터
	        backgroundColor: [
	        	"rgb(190, 70, 85, 0.8)",
	            "rgb(87, 157, 206, 0.8)",
	            "rgb(234, 126, 107, 0.8)",
	            "rgb(250, 209, 45, 0.8)",
	            "rgb(246, 167, 35, 0.8)",
	            "rgb(30, 95, 78, 0.8)",
	            "rgb(162, 162, 162, 0.8)"
	        ],
	        hoverBackgroundColor: [
	        	"rgb(190, 70, 85, 0.8)",
	            "rgb(87, 157, 206, 0.8)",
	            "rgb(234, 126, 107, 0.8)",
	            "rgb(250, 209, 45, 0.8)",
	            "rgb(246, 167, 35, 0.8)",
	            "rgb(30, 95, 78, 0.8)",
	            "rgb(162, 162, 162, 0.8)"
	        ],
	        borderWidth: 5,
	        borderColor: "#fff"
	      }]
	    },
	    options: {
	      maintainAspectRatio: false,
	      plugins: {
	        legend: {
	          position: "right",
	          labels: {
	            color: "#040404"
	          }
	        },
	        doughnutlabel: {
	          labels: [{
	            text: "찍히면 좋겠다",
	            font: {
	              size: '30'
	            },
	            position: 'center'
	          }]
	        }
	      },
	      cutoutPercentage: 60,
	      cutout: "60%",
	      layout: {
	        padding: {
	                left: 20,
	        }
	      },
	      elements: {
				center: {
					text: "ㅁㄴㅇㅁㄴㅇㅁㄴ",
					fontStyle: 'Helvetica', //Default Arial
					sidePadding: 15 //Default 20 (as a percentage)
				}
			}
	    }
	});

	//-------------- doughnut chart 들어갈 데이터 지난달 관리비 끝 ---------------------//



	//-------------- doughnut chart 들어갈 데이터 이번달 관리비 시작 --------------------//
	let ctx2 = $("#donut-chart_2")[0].getContext("2d");
	let doughnutChart_2 = new Chart(ctx2, {
	    type: "doughnut",
	    data: {
	      labels: ["전기료", "수도료", "가스사용료", "청소비", "소독비", "수선유지비", "승강기 유지비"],
	      datasets: [{
	        data: Object.values(cpDataThisMonth),
	        backgroundColor: [
	        	"rgb(190, 70, 85, 0.8)",
	            "rgb(87, 157, 206, 0.8)",
	            "rgb(234, 126, 107, 0.8)",
	            "rgb(250, 209, 45, 0.8)",
	            "rgb(246, 167, 35, 0.8)",
	            "rgb(30, 95, 78, 0.8)",
	            "rgb(162, 162, 162, 0.8)"
	        ],
	        hoverBackgroundColor: [
	        	"rgb(190, 70, 85, 0.8)",
	            "rgb(87, 157, 206, 0.8)",
	            "rgb(234, 126, 107, 0.8)",
	            "rgb(250, 209, 45, 0.8)",
	            "rgb(246, 167, 35, 0.8)",
	            "rgb(30, 95, 78, 0.8)",
	            "rgb(162, 162, 162, 0.8)"
	        ],
	        borderWidth: 5,
	        borderColor: "#fff"
	      }]
	    },
	    options: {
	      maintainAspectRatio: false,
	      plugins: {
	        legend: {
	          position: "right",
	          labels: {
	            color: "#040404"
	          }
	        },
	        doughnutlabel: {
	          labels: [{
	            text: "text",
	            font: {
	              size: '30'
	            },
	            position: 'center'
	          }]
	        }
	      },
	      cutoutPercentage: 60,
	      cutout: "60%",
	      layout: {
	        padding: {
	                left: 20,
	        }
	      }
	    }
	});
	//-------------- doughnut chart 들어갈 데이터 이번달 관리비 끝 --------------------//

	//-------------- 지난달 이번달 관리비를 비교해줄 bar chart 시작 ---------------//
	let barChart = new CanvasJS.Chart("chartContainer", {
			animationEnabled: true,
			title:{
			},
			axisY: {
				includeZero: true
			},
	  		 axisX: {
		     	 labelAutoFit: true,
		     	 labelFontSize: 12, // 데이터 포인트 레이블 사이의 간격을 조절하기 위한 설정
		     	 interval: 1 // 레이블 간격을 1로 설정하여 모든 레이블을 표시
		    },
			legend: {
				cursor:"pointer",
				itemclick : toggleDataSeries
			},
			toolTip: {
				shared: true,
				content: toolTipFormatter
			},
			data: [{
				type: "bar",
				showInLegend: true,
				name: "지난달 관리비",
				color: "rgba(203, 213, 225, 0.8)",
				dataPoints: [
					{ y: cpDataLastMonth.elvt, label: "승강기 유지비" },
					{ y: cpDataLastMonth.repair, label: "수선유지비" },
					{ y: cpDataLastMonth.dsn, label: "소독비" },
					{ y: cpDataLastMonth.cln, label: "청소비" },
					{ y: cpDataLastMonth.heat, label: "난방비" },
					{ y: cpDataLastMonth.wtr, label: "수도료" },
					{ y: cpDataLastMonth.elc, label: "전기료" }
				]
			},
			{
				type: "bar",
				showInLegend: true,
				name: "이번달 관리비",
				color: "rgba(6, 78, 59, 0.8)",
				dataPoints: [
					{ y: cpDataThisMonth.elvt, label: "승강기 유지비" },
					{ y: cpDataThisMonth.repair, label: "수선유지비" },
					{ y: cpDataThisMonth.dsn, label: "소독비" },
					{ y: cpDataThisMonth.cln, label: "청소비" },
					{ y: cpDataThisMonth.heat, label: "난방비" },
					{ y: cpDataThisMonth.wtr, label: "수도료" },
					{ y: cpDataThisMonth.elc, label: "전기료" }
				],
				barPercentage: 0.1,
				indexLabel: "{y}", // 막대 위에 값을 표시할 경우 사용
		      	indexLabelFontSize: 10 // 막대 위 값의 폰트 크기
			}
		]
	});

	barChart.options.data[0].maxBarThickness  = 5;
	barChart.options.data[1].maxBarThickness  = 10;

	barChart.render();
	//-------------- 지난달 이번달 관리비를 비교해줄 bar chart 끝 ---------------//


	// -------------- doughnut select change 월 변경시 데이터 변경 시작 -------------- //
	$("#month").on("change", function(){

		// doughnut chart //
		doughnutChart_1.data.datasets[0].data.splice(0, 7);
		doughnutChart_1.update();

// 		console.log(doughnutChart_1.data.datasets[0].data);

		function fmtnumber(data) {
		  return data.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
		}

		let yearVal = $("#year").val();
		let monthVal = $("#month").val();
		let period = yearVal+monthVal;
	 	// console.log("period", period);

		// GSON 의 문자열을 parse로 배열로 바꿔줌
	 	// 총액 관리비
	 	let objArr = JSON.parse(compDataList);
	 	let total = "";
	 	for (let i = 0; i < objArr.length; i++) {
	 		if (objArr[i].rlvtYm == period) {
	 			total = objArr[i].managectTotal;
	 		}
	 	}
	 	console.log("total : ", total);

	 	let formattedTotal = fmtnumber(total);
		$("#lastTotal").html("￦ " + formattedTotal);

		// 총액 관리비 연월
		let lastDay = period.substring(2,4) + "." + period.substring(4);
		console.log("lastDay : ", lastDay);
		$("#lastDay").html(lastDay +" 기준");

		pastData = "";
		for (let i = 0; i < cpData.length; i++){
			if(cpData[i]['rlvtYm'] == period){
				pastData = {
					elc	: 	cpData[i]["elc"],
					wtr	: 	cpData[i]["wtr"],
					heat: 	cpData[i]["heat"],
					cln	: 	cpData[i]["cln"],
					dsn	: 	cpData[i]["dsn"],
					repair: cpData[i]["repair"],
					elvt  : cpData[i]["elvt"],
				};
			}
		}
		console.log("pastData : ", pastData);

	    for (let key in pastData) {
	    	let value = pastData[key]
	    	doughnutChart_1.data.datasets[0].data.push(value);
	    	console.log(value);
	    }
		doughnutChart_1.update();

		// ======= bar chart select change ========  //
		let barDataPoints = [
		    { y: pastData.elc, label: "전기료" },
		    { y: pastData.wtr, label: "수도료" },
		    { y: pastData.heat, label: "난방비" },
		    { y: pastData.cln, label: "청소비" },
		    { y: pastData.dsn, label: "소독비" },
		    { y: pastData.repair, label: "수선유지비" },
		    { y: pastData.elvt, label: "승강기 유지비" }
		  ];

		barChart.options.data[0].dataPoints = barDataPoints;
		console.log("data : ", barChart.options.data[0].dataPoints)
		barChart.render();
		// ======= bar chart select change ========  //

	});
	// -------------- doughnut select change 월 변경시 데이터 변경 끝 -------------- //

	function fmtnumber(data) {
		return data.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
	}


	// 총액 지난달 default 값 연월
	let lastDay = period.substring(2,4) + "." + period.substring(4);
	console.log("lastDay : ", lastDay);
	$("#lastDay").html(lastDay +" 기준");

	// 총액 지난달 default 값
 	let objArr = JSON.parse(compDataList);
 	let total = "";
 	for (let i = 0; i < objArr.length; i++) {
 		if (objArr[i].rlvtYm == "202306") {
 			total = objArr[i].managectTotal;
 		}
 	}
 	let formattedTotal = fmtnumber(total);
	$("#lastTotal").html("￦ " + formattedTotal);

});

function detail(cpData) {


}

function toolTipFormatter(e) {
// 	console.log("bar -> cpData : ", e.entries);
	console.log("e - > ? :" , e);
	let str = "";
	let total = 0 ;
	let str3;
	let str2 ;
	for (var i = 0; i < e.entries.length; i++){
		let str1 = "<span style= \"color:"+e.entries[i].dataSeries.color + "\">" + e.entries[i].dataSeries.name + "</span>: <strong>"+  e.entries[i].dataPoint.y + "</strong> <br/>" ;
		total = e.entries[i].dataPoint.y - total;
		str = str.concat(str1);
	}
	console.log("total : " , total);
	str2 = "<strong>" + e.entries[0].dataPoint.label + "</strong> <br/>";
	str3 = "<span style = \"color:Tomato\">Total: </span><strong>" + total + "</strong><br/>";
	return (str2.concat(str)).concat(str3);
}

function toggleDataSeries(e) {
	if (typeof (e.dataSeries.visible) === "undefined" || e.dataSeries.visible) {
		e.dataSeries.visible = false;
	}
	else {
		e.dataSeries.visible = true;
	}
	chart.render();
}

</script>


