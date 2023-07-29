<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>

<!-- BEGIN: Menu -->
<div class="col-span-12 lg:col-span-3 2xl:col-span-2">
    <div class="intro-y box bg-primary p-5 mt-0 text-lg" style="height: 100%;">
    	<nav class="side-nav">
		    <ul>
		        <li>
		            <a href="/mem/vote/inprogrsvote" class="side-menu">
		                <div class="side-menu__icon"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="home" data-lucide="home" class="lucide lucide-home"><path d="M3 9l9-7 9 7v11a2 2 0 01-2 2H5a2 2 0 01-2-2z"></path></svg></div>
		                <div class="side-menu__title"> 진행 중 투표 </div>
		            </a>
		        </li>
		        <li>
		            <a href="/mem/vote/votelist" class="side-menu">
		                <div class="side-menu__icon"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="box" data-lucide="box" class="lucide lucide-box"><path d="M21 16V8a2 2 0 00-1-1.73l-7-4a2 2 0 00-2 0l-7 4A2 2 0 003 8v8a2 2 0 001 1.73l7 4a2 2 0 002 0l7-4A2 2 0 0021 16z"></path><polyline points="3.27 6.96 12 12.01 20.73 6.96"></polyline><line x1="12" y1="22.08" x2="12" y2="12"></line></svg></div>
		                <div class="side-menu__title"> 투표 목록 </div>
		            </a>
		        </li>
		    </ul>
		</nav>
    </div>
</div>
<!-- END: Menu -->
<!-- BEGIN: Body -->
<div class="bdy col-span-12 lg:col-span-9 2xl:col-span-10">
	<div class="box" style="margin-top: 10px;"><br/>
		<div class="flex">
			<div class="center"style="width: 400px;">
				<div class="box" style="margin-left: 30px; margin-top: 60px;">
					<div class='win-container'>
		                <div class="flex flex-col lg:flex-row items-center p-5 border-b border-slate-200/60 dark:border-darkmode-400">
		                    <div class="lg:ml-2 lg:mr-auto text-center lg:text-left mt-3 lg:mt-0">
		                        <h2 class="font-medium">찬성</h2>
		                        <div class="text-slate-500 text-xs mt-0.5">찬성 인원 : 58</div>
		                    </div>
		                    <div class="flex -ml-2 lg:ml-0 lg:justify-end mt-3 lg:mt-0">
		                        <a href="" class="w-8 h-8 rounded-full flex items-center justify-center border dark:border-darkmode-400 ml-2 text-slate-400 zoom-in tooltip"> <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="twitter" class="lucide lucide-twitter w-3 h-3 fill-current" data-lucide="twitter"><path d="M23 3a10.9 10.9 0 01-3.14 1.53 4.48 4.48 0 00-7.86 3v1A10.66 10.66 0 013 4s-4 9 5 13a11.64 11.64 0 01-7 2c9 5 20 0 20-11.5 0-.28-.03-.56-.08-.83A7.72 7.72 0 0023 3z"></path></svg> </a>
		                    </div>
		                </div>
		                <div class="flex flex-wrap lg:flex-nowrap items-center justify-center p-5">
		                    <div class="w-full lg:w-1/2 mb-4 lg:mb-0 mr-auto">
		                        <div class="flex text-slate-500 text-xs">
		                            <div class="mr-auto">투표율</div>
		                            <div>58%</div>
		                        </div>
		                        <div class="progress h-1 mt-2">
		                            <div class="progress-bar w-1/4 bg-primary" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100"></div>
		                        </div>
		                    </div>
		                    <div class="col-span-6 sm:col-span-3 lg:col-span-2 xl:col-span-1">
			                    <svg xmlns="http://www.w3.org/2000/svg" width="32" height="32" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="user-check" data-lucide="user-check" class="lucide lucide-user-check block mx-auto"><path d="M16 21v-2a4 4 0 00-4-4H5a4 4 0 00-4 4v2"></path><circle cx="8.5" cy="7" r="4"></circle><polyline points="17 11 19 13 23 9"></polyline></svg>
			                </div>
		                </div>
	                </div>
				</div>
				<div class="box" style="margin-left: 30px; margin-top: 55px;">
	                <div class="flex flex-col lg:flex-row items-center p-5 border-b border-slate-200/60 dark:border-darkmode-400">
	                    <div class="lg:ml-2 lg:mr-auto text-center lg:text-left mt-3 lg:mt-0">
	                        <h2 class="font-medium">반대</h2>
	                        <div class="text-slate-500 text-xs mt-0.5">반대 인원 : 58</div>
	                    </div>
	                    <div class="flex -ml-2 lg:ml-0 lg:justify-end mt-3 lg:mt-0">
	                        <a href="" class="w-8 h-8 rounded-full flex items-center justify-center border dark:border-darkmode-400 ml-2 text-slate-400 zoom-in tooltip"> <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="twitter" class="lucide lucide-twitter w-3 h-3 fill-current" data-lucide="twitter"><path d="M23 3a10.9 10.9 0 01-3.14 1.53 4.48 4.48 0 00-7.86 3v1A10.66 10.66 0 013 4s-4 9 5 13a11.64 11.64 0 01-7 2c9 5 20 0 20-11.5 0-.28-.03-.56-.08-.83A7.72 7.72 0 0023 3z"></path></svg> </a>
	                    </div>
	                </div>
	                <div class="flex flex-wrap lg:flex-nowrap items-center justify-center p-5">
	                    <div class="w-full lg:w-1/2 mb-4 lg:mb-0 mr-auto">
	                        <div class="flex text-slate-500 text-xs">
	                            <div class="mr-auto">투표율</div>
	                            <div>42%</div>
	                        </div>
	                        <div class="progress h-1 mt-2">
	                            <div class="progress-bar w-1/4 bg-primary" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100"></div>
	                        </div>
	                    </div>
	                    <div class="col-span-6 sm:col-span-3 lg:col-span-2 xl:col-span-1">
		                    <svg xmlns="http://www.w3.org/2000/svg" width="32" height="32" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="user-x" data-lucide="user-x" class="lucide lucide-user-x block mx-auto"><path d="M16 21v-2a4 4 0 00-4-4H5a4 4 0 00-4 4v2"></path><circle cx="8.5" cy="7" r="4"></circle><line x1="18" y1="8" x2="23" y2="13"></line><line x1="23" y1="8" x2="18" y2="13"></line></svg>
		                </div>
	                </div>
				</div>
			</div>
			<div style="position: relative; z-index: 10; margin-left: 30px; margin-top: 50px;">
			    <div id="chart-container" class="tab-content px-5 pb-5">
			        <canvas id="myChart" width="400" height="300"></canvas>
			    </div>
			</div>
		</div>
		<div class="overflow-x-auto">
		    <table class="table">
		        <thead>
		            <tr>
		                <th class="border-b-2 dark:border-darkmode-400 whitespace-nowrap">투표결과</th>
		                <th class="border-b-2 dark:border-darkmode-400 text-right whitespace-nowrap"></th>
		                <th class="border-b-2 dark:border-darkmode-400 text-right whitespace-nowrap">투표일시 : 2023-07-01 ~ 2023-07-05</th>
		                <th class="border-b-2 dark:border-darkmode-400 text-right whitespace-nowrap">투표인원</th>
		            </tr>
		        </thead>
		        <tbody>
		            <tr>
		                <td class="border-b dark:border-darkmode-400">
		                    <div class="font-medium whitespace-nowrap">찬성</div>
		                </td>
		                <td class="text-right border-b dark:border-darkmode-400 w-32"></td>
		                <td class="text-right border-b dark:border-darkmode-400 w-32"></td>
		                <td class="text-right border-b dark:border-darkmode-400 w-32 font-medium">58명</td>
		            </tr>
		            <tr>
		                <td class="border-b dark:border-darkmode-400">
		                    <div class="font-medium whitespace-nowrap">반대</div>
		                </td>
		                <td class="text-right border-b dark:border-darkmode-400 w-32"></td>
		                <td class="text-right border-b dark:border-darkmode-400 w-32"></td>
		                <td class="text-right border-b dark:border-darkmode-400 w-32 font-medium">42명</td>
		            </tr>
		        </tbody>
		    </table>
		</div>
	</div>
</div>
<!-- END: Body -->
<style>

.win-container{
   border: 2px solid #054232; /* Border 색상과 굵기 설정 */
}


#chart {
	position: relative;
	height: 100px;
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
	width: 5px;
	height: 5px;
	margin-right: 5px;
}

.legend-text {
	margin-top: -2px;
}

#chart-container {
    width: 500px;
    height: 500px;
    padding: 1px;
}

.active {
	color: white;
	background-color: #054232;
}

.inactive {
	background-color: gray;
}



</style>
<script src="https://cdn.jsdelivr.net/npm/chart.js@3.5.1"></script>
<script type="text/javascript" src="/resources/js/jquery-3.6.4.min.js"></script>
<script type="text/javascript">
$(function(){
	$("#main_menu").html("전자투표");
	$("#sub_menu").html("진행 중 투표");

	let title = $("#sub_menu").text();
	let arr_menu = $(".side-menu__title");
	let cur_menu = null;
	for (var i = 0; i < arr_menu.length; i++) {
		if ( arr_menu[i].innerText == title ) {
			cur_menu = arr_menu[i];
		}
	}
	$(cur_menu).parent().addClass("side-menu--active");

	$(".side-nav > ul > li > .side-menu").on("click", function(){
		// 좌측 메뉴 선택 시 효과 적용
		$(".side-menu").removeClass("side-menu--active");
		$(this).addClass("side-menu--active");

		// 메뉴 경로 표시 (좌측 메뉴)
		var sub = $(this).find(".side-menu__title").text();
		console.log(sub.trim());
		$("#sub_menu").html(sub.trim());
	});

	 let ctx1 = $("#myChart")[0].getContext("2d");

	 let myChart = new Chart(ctx1, {
	    type: 'bar',
	    data: {
	        labels: ["찬성", "반대"],
	        datasets: [{
	            label: '투표 결과',
	            data: [58, 42],
	            backgroundColor: [
	                'rgba(255, 99, 132, 0.2)',
	                'rgba(54, 162, 235, 0.2)',
	            ],
	            borderColor: [
	                'rgba(255,99,132,1)',
	                'rgba(54, 162, 235, 1)',
	            ],
	            borderWidth: 2
	        }]
	    },
	    options: {
	        maintainAspectRatio: true, // default value. false일 경우 포함된 div의 크기에 맞춰서 그려짐.
	        scales: {
	            yAxes: [{
	                ticks: {
	                    beginAtZero:true
	                }
	            }]
	        },
	        barPercentage: 0.6
	    }
	});
});

</script>


