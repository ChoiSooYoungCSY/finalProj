<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<div class="col-span-12 lg:col-span-3 2xl:col-span-2">
    <!-- BEGIN: Menu -->
    <div class="intro-y box bg-primary p-4 mt-0 text-lg"  style="height: 100%;">
    	<nav class="side-nav">
		    <ul>
		        <li>
		            <a href="javascript:;" class="side-menu">
		                <div class="side-menu__icon"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="home" data-lucide="home" class="lucide lucide-home"><path d="M3 9l9-7 9 7v11a2 2 0 01-2 2H5a2 2 0 01-2-2z"></path></svg></div>
		                <div class="side-menu__title"> 관리비 관리
		                    <div class="side-menu__sub-icon"> <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="chevron-down" data-lucide="chevron-down" class="lucide lucide-chevron-down"></svg> </div>
		                </div>
		            </a>
		            <ul class="side-menu-ul" style="display: none;">
		                <li>
		                    <a href="/emp/aa/mnghshldmanagect?rlvtYm=202307&hshldInfoNo=101101" class="side-menu side-menu--active">
		                        <div class="side-menu__icon"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="activity" data-lucide="activity" class="lucide lucide-activity"><polyline points="22 12 18 12 15 21 9 3 6 12 2 12"></polyline></svg></div>
		                        <div class="side-menu__title"> 세대별 관리비 </div>
		                    </a>
		                </li>
		                <li>
		                    <a href="/emp/aa/mngcmnusemanagect" class="side-menu">
		                        <div class="side-menu__icon"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="activity" data-lucide="activity" class="lucide lucide-activity"><polyline points="22 12 18 12 15 21 9 3 6 12 2 12"></polyline></svg></div>
		                        <div class="side-menu__title"> 공용 관리비 </div>
		                    </a>
		                </li>
		            </ul>
		        </li>
		        <li>
		            <a href="/emp/aa/mngbidntcbbs" class="side-menu">
		                <div class="side-menu__icon"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="box" data-lucide="box" class="lucide lucide-box"><path d="M21 16V8a2 2 0 00-1-1.73l-7-4a2 2 0 00-2 0l-7 4A2 2 0 003 8v8a2 2 0 001 1.73l7 4a2 2 0 002 0l7-4A2 2 0 0021 16z"></path><polyline points="3.27 6.96 12 12.01 20.73 6.96"></polyline><line x1="12" y1="22.08" x2="12" y2="12"></line></svg></div>
		                <div class="side-menu__title"> 입찰공고 관리 </div>
		            </a>
		        </li>
		        <li>
		            <a href="/emp/aa/mngagency" class="side-menu">
		                <div class="side-menu__icon"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="box" data-lucide="box" class="lucide lucide-box"><path d="M21 16V8a2 2 0 00-1-1.73l-7-4a2 2 0 00-2 0l-7 4A2 2 0 003 8v8a2 2 0 001 1.73l7 4a2 2 0 002 0l7-4A2 2 0 0021 16z"></path><polyline points="3.27 6.96 12 12.01 20.73 6.96"></polyline><line x1="12" y1="22.08" x2="12" y2="12"></line></svg></div>
		                <div class="side-menu__title"> 외주업체 관리 </div>
		            </a>
		        </li>
		    </ul>
		</nav>
    </div>
    <!-- END: Menu -->
</div>
<!-- BEGIN: Body -->
<div class="bdy col-span-12 lg:col-span-9 2xl:col-span-10">

<form action="/emp/aa/mngcmnusemanagect/save" id="frm" method="post" enctype="multipart/form-data">
<div class="p-5 box">
    <div class="flex items-center">
		<h3 class="text-2xl font-bold leading-none">세대관리비</h3>
		<a id="auto" class="btn btn-secondary p-1 font-bold h-6 ml-2" style="width: 65px;"> 자동완성 </a>
		<div class="text-lg font-bold col-start-4 ml-auto mt-0">
			<a id="btnSave" class="btn btn-primary font-bold h-11" style="width: 65px;"> 저장 </a>
			<a href="/emp/aa/mnghshldmanagect?rlvtYm=202307&hshldInfoNo=101101" class="btn btn-outline-danger font-bold ml-1 h-11" style="width: 65px;"> 취소 </a>
		</div>
    </div>
	<div class="flex-col mt-16 items-center">
    	<div class="flex text-lg font-bold items-center" style="height: 30px;">
    		<div class="flex mr-1">
				<div class="flex font-semibold w-60 h-11">
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
					<input type="hidden" id="rlvtYm" name="rlvtYm" value="" />
					<input type="hidden" id="hshldInfoNo" name="hshldInfoNo" value="" />
				</div>
        	</div>
			<select id="year" name="year" class="form-select text-lg items-center" style="text-align:center; width:12%; height: 41.25px; padding-top: 6px;">
			    <option value="2023" selected>2023 년</option>
			    <option value="2022">2022 년</option>
			    <option value="2021">2021 년</option>
			</select>
			<select id="month" name="month" class="form-select text-lg ml-1" style="text-align:center; width:10%; height: 41.25px; padding-top: 6px;">
			    <option value="01">01 월</option>
			    <option value="02">02 월</option>
			    <option value="03">03 월</option>
			    <option value="04">04 월</option>
			    <option value="05">05 월</option>
			    <option value="06">06 월</option>
			    <option value="07">07 월</option>
			    <option value="08" selected>08 월</option>
			    <option value="09">09 월</option>
			    <option value="10">10 월</option>
			    <option value="11">11 월</option>
			    <option value="12">12 월</option>
			</select>
			<a id="btnDet" class="btn btn-primary font-bold ml-2" style="width: 7%; height: 41.25px;"> 조회 </a>
			<a id="btnMod" class="btn btn-outline-primary font-bold ml-1" style="width: 7%; height: 41.25px;"> 수정 </a>
			<a id="btnReset" class="btn btn-outline-danger ml-1 font-bold" style="width: 11%; height: 41.25px; min-width: 11%">
			<svg xmlns="http://www.w3.org/2000/svg" width="17" height="17" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="refresh-cw" data-lucide="refresh-cw" class="lucide lucide-refresh-cw block mx-auto"><path d="M21 2v6h-6"></path><path d="M3 12a9 9 0 0115-6.7L21 8"></path><path d="M3 22v-6h6"></path><path d="M21 12a9 9 0 01-15 6.7L3 16"></path></svg>
				&nbsp;초기화 </a>
		    <div class="flex input-group text-lg font-bold ml-auto" style="width: 23%;">
		        <div class="input-group-text text-center" style="width: 37%;padding-left: 3px;padding-right: 3px;">총액</div>
		        <input id="managectTot" name="managectTot" type="text" class="frmIpt form-control text-lg" style="text-align: right;" placeholder="총액">
		        <div class="input-group-text">원</div>
		    </div>
        </div>
	</div>
	<div class="form-inline items-start flex-col mt-5">
        <div class="w-full flex-1">
            <div class="overflow-x-auto">
                <table class="table border text-center font-bold" style="font-size: 16px;">
                    <thead>
                        <tr>
                            <th class="bg-slate-50 text-slate-500 whitespace-nowrap w-28">대분류</th>
                            <th class="bg-slate-50 text-slate-500 whitespace-nowrap w-36">중분류</th>
                            <th class="bg-slate-50 text-slate-500 whitespace-nowrap !px-2">금액</th>
                            <th class="bg-slate-50 text-slate-500 whitespace-nowrap w-28 border-l">대분류</th>
                            <th class="bg-slate-50 text-slate-500 whitespace-nowrap w-36">중분류</th>
                            <th class="bg-slate-50 text-slate-500 whitespace-nowrap !px-2">금액</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td rowspan="8" class="border-r font-bold" style="padding-left: 10px;padding-right: 10px;font-size:17px;">공용관리비</td>
                            <td>운영관리비</td>
                            <td class="!px-2">
                                <div class="input-group mr-2">
                                    <input id="manageOfficeOrpns" name="manageOfficeOrpns" type="text" class="frmIpt form-control min-w-[6rem]"
                                    	style="text-align:right;font-size:16px;" placeholder="운영관리비">
                                    <div class="input-group-text">원</div>
                                </div>
                            </td>
                            <td rowspan="8" class="border-l border-r font-bold" style="padding-left:10px;padding-right:10px;font-size:17px;">개별사용료</td>
                            <td>수도료</td>
                            <td class="!px-2">
                                <div class="input-group mr-2">
                                    <input id="managectWtr" name="managectWtr" type="text" class="frmIpt form-control min-w-[6rem]"
                                    	style="text-align:right;font-size:16px;" placeholder="수도료">
                                    <div class="input-group-text">원</div>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td>수선유지비</td>
                            <td class="!px-2">
                                <div class="input-group mr-2">
                                    <input id="managectRepair" name="managectRepair" type="text" class="frmIpt form-control min-w-[6rem]" style="text-align:right;font-size:16px;" placeholder="수선유지비">
                                    <div class="input-group-text">원</div>
                                </div>
                            </td>
                            <td>전기료</td>
                            <td class="!px-2">
                                <div class="input-group mr-2">
                                    <input id="managectElcty" name="managectElcty" type="text" class="frmIpt form-control min-w-[6rem]"
                                    	style="text-align:right;font-size:16px;" placeholder="전기료">
                                    <div class="input-group-text">원</div>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td>청소비</td>
                            <td class="!px-2">
                                <div class="input-group mr-2">
                                    <input id="managectCln" name="managectCln" type="text" class="frmIpt form-control min-w-[6rem]"
                                    	style="text-align:right;font-size:16px;" placeholder="청소비">
                                    <div class="input-group-text">원</div>
                                </div>
                            </td>
                            <td>가스사용료</td>
                            <td class="!px-2">
                                <div class="input-group mr-2">
                                    <input id="managectGas" name="managectGas" type="text" class="frmIpt form-control min-w-[6rem]"
                                    	style="text-align:right;font-size:16px;" placeholder="가스사용료">
                                    <div class="input-group-text">원</div>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td>경비비</td>
                            <td class="!px-2">
                                <div class="input-group mr-2">
                                    <input id="managectScrty" name="managectScrty" type="text" class="frmIpt form-control min-w-[6rem]"
                                    	style="text-align:right;font-size:16px;" placeholder="경비비">
                                    <div class="input-group-text">원</div>
                                </div>
                            </td>
                            <td>난방비</td>
                            <td class="!px-2">
                                <div class="input-group mr-2">
                                    <input id="managectHeat" name="managectHeat" type="text" class="frmIpt form-control min-w-[6rem]"
                                    	style="text-align:right;font-size:16px;" placeholder="난방비">
                                    <div class="input-group-text">원</div>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td>소독비</td>
                            <td class="!px-2">
                                <div class="input-group mr-2">
                                    <input id="managectDsnf" name="managectDsnf" type="text" class="frmIpt form-control min-w-[6rem]"
                                    	style="text-align:right;font-size:16px;" placeholder="소독비">
                                    <div class="input-group-text">원</div>
                                </div>
                            </td>
                            <td>급탕비</td>
                            <td class="!px-2">
                                <div class="input-group mr-2">
                                    <input id="managectHtWtr" name="managectHtWtr" type="text" class="frmIpt form-control min-w-[6rem]" style="text-align:right;font-size:16px;" placeholder="급탕비">
                                    <div class="input-group-text">원</div>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td>승강기 유지비</td>
                            <td class="!px-2">
                                <div class="input-group mr-2">
                                    <input id="managectElvtr" name="managectElvtr" type="text" class="frmIpt form-control min-w-[6rem]"
                                    	style="text-align:right;font-size:16px;" placeholder="승강기 유지비">
                                    <div class="input-group-text">원</div>
                                </div>
                            </td>
                            <td>건물보험료</td>
                            <td class="!px-2">
                                <div class="input-group mr-2">
                                    <input id="managectBldInsrnc" name="managectBldInsrnc" type="text" class="frmIpt form-control min-w-[6rem]"
                                    	style="text-align:right;font-size:16px;" placeholder="건물보험료">
                                    <div class="input-group-text">원</div>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td style="padding-left:3px;padding-right:3px;">주차장 유지비</td>
                            <td class="!px-2">
                                <div class="input-group mr-2">
                                    <input id="managectPrkplce" name="managectPrkplce" type="text" class="frmIpt form-control min-w-[6rem]"
                                    	style="text-align:right;font-size:16px;" placeholder="주차장 유지비">
                                    <div class="input-group-text">원</div>
                                </div>
                            </td>
                            <td style="padding-left:3px;padding-right:3px;">생활폐기물 수수료</td>
                            <td class="!px-2">
                                <div class="input-group mr-2">
                                    <input id="managectDomWste" name="managectDomWste" type="text" class="frmIpt form-control min-w-[6rem]"
                                    	style="text-align:right;font-size:16px;" placeholder="생활폐기물 수수료">
                                    <div class="input-group-text">원</div>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td style="padding-left:3px;padding-right:3px;">공용시설 유지비</td>
                            <td class="!px-2">
                                <div class="input-group mr-2">
                                    <input id="managectPblfclt" name="managectPblfclt" type="text" class="frmIpt form-control min-w-[6rem]"
                                    	style="text-align:right;font-size:16px;" placeholder="공용시설 유지비">
                                    <div class="input-group-text">원</div>
                                </div>
                            </td>
                            <td style="padding-left:3px;padding-right:3px;">정화조오물 수수료</td>
                            <td class="!px-2">
                                <div class="input-group mr-2">
                                    <input id="managectWrrtn" name="managectWrrtn" type="text" class="frmIpt form-control min-w-[6rem]"
                                    	style="text-align:right;font-size:16px;" placeholder="정화조오물 수수료">
                                    <div class="input-group-text">원</div>
                                </div>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
    <!-- BEGIN: 파일 업로드 -->
    <div class="w-full mt-5 flex-1 border-2 border-dashed rounded-md pt-4" style="height: 175px;">
        <div id="fileShow" class="grid grid-cols-6 gap-20 pl-4 pr-5 h-28">
        </div>
        <div class="mt-2 flex items-center justify-center cursor-pointer h-10"><label class="cursor-pointer flex w-full h-10" for="fileUpload">
            <input id="fileUpload" type="file" name="file" class="relative opacity-0 cursor-pointer mr-36" />
			<svg xmlns="http://www.w3.org/2000/svg" class="mr-2" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="file-plus" data-lucide="file-plus" class="lucide lucide-file-plus block mx-auto"><path d="M14.5 2H6a2 2 0 00-2 2v16a2 2 0 002 2h12a2 2 0 002-2V7.5L14.5 2z"></path><polyline points="14 2 14 8 20 8"></polyline><line x1="12" y1="18" x2="12" y2="12"></line><line x1="9" y1="15" x2="15" y2="15"></line></svg>
	        <span class="text-primary mr-1 text-xl font-semibold">파일 업로드</span></label>
        </div>
    </div>
    <!-- END: 파일 업로드 -->
</div>
<sec:csrfInput />
</form>

</div>
<!-- END: Body -->

<style type="text/css">
.item {
 	font-size: 17px;
 	font-weight: bold;
}
</style>
<script type="text/javascript" src="/resources/js/jquery-3.6.4.min.js"></script>
<script type="text/javascript">
$(function(){
	// 메뉴 경로 표시 (상단 메뉴)
	$("#main_menu").html("경리/회계");
	$("#sub_menu").html("관리비 관리");

	// 좌측 메뉴 경로 표시, 선택 효과 적용
	$(".side-nav > ul > li > .side-menu").on("click", function(){
		// 좌측 메뉴 선택 시 효과 적용
		$(".side-menu").removeClass("side-menu--active");
		$(this).addClass("side-menu--active");

		// 메뉴 경로 표시 (좌측 메뉴)
		var sub = $(this).find(".side-menu__title").text();
		console.log(sub.trim());
		$("#sub_menu").html(sub.trim());
	});

	// 자세히보기, 이전 내역보기로 접근한 경우 처리
	let param = "${param.rlvtYm}";
	if (param != "") {
		detail();
	}

	// Input type="text"의 숫자 이외의 문자 제거 및 , 출력
    $(".frmIpt").on("input", function() {
		var value = $(this).val().replace(/\D/g, "");
		var formattedValue = "";

		while (value.length > 3) {
		  formattedValue = "," + value.slice(-3) + formattedValue;
		  value = value.slice(0, value.length - 3);
		}

		formattedValue = value + formattedValue;
		$(this).val(formattedValue);
	});

	// 조회 버튼 이벤트 핸들러 (연월로 관리비 검색)
	$("#btnDet").on("click", function(){
		$("input").attr("readOnly", "true");

		let year = $("#year").val();
		let month = $("#month").val();
		let rlvtYm = year + month;
		let dong = $("#dong").val();
		let ho = $("#ho").val();
		let hshldInfoNo = dong + ho;
		console.log(rlvtYm, hshldInfoNo);

		jQuery.ajax({
			url : "/emp/aa/mnghshldmanagect/detail.ajax",
			data : {"rlvtYm" : rlvtYm, "hshldInfoNo": hshldInfoNo},
			contentType : "application/json;charset=utf-8",
			dataType : "json",
			type : "get",
// 			beforeSend:function(xhr){
// 				xhr.setRequestHeader("${_csrf.headerName}","${_csrf.token}");
// 			},
			success : function(result){
				let vo = result;
				if (vo.managectNo == 0) {
					alert("조회된 데이터가 없습니다.");
					$("input").val("");
					$("input").removeAttr("readOnly");
				} else {
					$("#managectTot").val(vo.managectTot.toLocaleString());
					$("#managectWtr").val(vo.managectWtr.toLocaleString());
					$("#managectElcty").val(vo.managectElcty.toLocaleString());
					$("#managectGas").val(vo.managectHeat.toLocaleString());
					$("#managectCln").val(vo.managectCln.toLocaleString());
					$("#managectElvtr").val(vo.managectElvtr.toLocaleString());
					$("#managectScrty").val(vo.managectScrty.toLocaleString());
					$("#manageOfficeOrpns").val(vo.manageOfficeOrpns.toLocaleString());
					$("#managectRepair").val(vo.managectRepair.toLocaleString());
					$("#managectWrrtn").val(vo.managectWrrtn.toLocaleString());
					$("#managectDsnf").val(vo.managectDsnf.toLocaleString());
					$("#managectPrkplce").val(vo.managectPrkplce.toLocaleString());
					$("#managectPblfclt").val(vo.managectPblfclt.toLocaleString());
					$("#managectHeat").val("0");
					$("#managectHtWtr").val("0");
					$("#managectDomWste").val("1,807");
					$("#managectBldInsrnc").val("631");
				}
			}
		});
	});

	// 초기화 버튼 이벤트 핸들러
	$("#btnReset").on("click", function(){
		$("input").val("");
		$("input").removeAttr("readOnly");
	});

	// 수정 버튼 이벤트 핸들러
	$("#btnMod").on("click", function(){
		$("input").removeAttr("readOnly");
	});

	// 저장 버튼 이벤트 핸들러
	$("#btnSave").on("click", function(){

		let year = $("#year").val();
		let month = $("#month").val();
		let rlvtYm = year + month;
		$("#rlvtYm").val(rlvtYm);
		let dong = $("#dong").val();
		let ho = $("#ho").val();
		let hshldInfoNo = dong + ho;
		$("#hshldInfoNo").val(dong + ho);
		console.log(rlvtYm, hshldInfoNo);

		let formData = jQuery("#frm").serializeArray();
		let formDataObj = {};

		// formData 배열을 순회하면서 객체로 변환
		formData.forEach(function(input) {
			formDataObj[input.name] = input.value;
		});
		console.log(formDataObj);

		for (let key in formDataObj) {
			if (typeof formDataObj[key] === "string") {
				formDataObj[key] = parseInt(formDataObj[key].replace(/,/g, ""));
				if (isNaN(formDataObj[key])) { // 속성이 NaN일 경우 0으로 대체
					formDataObj[key] = 0;
				}
			}
		}
		console.log(formDataObj);

		// form 데이터 전송
		jQuery.ajax({
			url : "/emp/aa/mnghshldmanagect/save",
			data: formDataObj,
			dataType : "json",
			type : "post",
			beforeSend:function(xhr){
				xhr.setRequestHeader("${_csrf.headerName}","${_csrf.token}");
			},
			success : function(result){
				result = parseInt(result);
				console.log(result);

				if (result > 0) {
					alert("저장되었습니다.");
					$("input").attr("readOnly", "true");
				} else {
					alert("다시 시도해주세요.");
				}
			}
		});

		// 파일 데이터 전송
		let formFileData = new FormData();
	    let inputFile = $("input[name='file']");
	    let files = inputFile[0].files;
	    if (files.length > 0) { // 파일이 선택되었는지 확인
	    	formFileData.append("file", files[0]);
	    }
		console.log("formFileData : ", formFileData);

		jQuery.ajax({
			url : "/emp/aa/mngcmnusemanagect/uploadFile",
			data: formFileData,
			processData : false,
			contentType : false,
			dataType : "text",
			type : "post",
			beforeSend:function(xhr){
				xhr.setRequestHeader("${_csrf.headerName}","${_csrf.token}");
			},
			success : function(result){
				console.log(result);
				$("#fileImg").remove();
				$("#fileUpload").val("");
			}
		});
	});

	// 파일 업로드 이벤트 핸들러
	$("#fileUpload").on("input", function(){
		let fileName = $(this)[0].files[0].name;
		let fileImg = `
            <div id="fileImg" class="col-span-q h-28 w-24 relative image-fit cursor-pointer zoom-in" style="margin-right:20px;">
            	<img class="rounded-md ml-7" alt="fileIcon" src="/resources/images/excel_icon.png">
	            <div class="mt-28 text-center" style="width: 160px;"><span id="fileName" class="br-secondary rounded-md font-semibold">\${fileName}</span></div>
	            <div id="fileDel" class="w-5 h-5 flex items-center justify-center absolute rounded-full text-white bg-danger top-0 -mr-2 -mt-2 ml-32">
	            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="x" data-lucide="x" class="lucide lucide-x w-4 h-4"><line x1="18" y1="6" x2="6" y2="18"></line><line x1="6" y1="6" x2="18" y2="18"></line></svg> </div>
	        </div>
		`;
		$("#fileShow").append(fileImg);
	});

	// 파일 삭제 버튼 이벤트 핸들러
	$("#fileShow").on("click", function(){
		$("#fileImg").remove();
		$("#fileUpload").val("");
	});

	// 현재 표시되는 관리비의 동, 호수 정보 설정
	let hshldInfoNo = "${param.hshldInfoNo}";
	let dong = hshldInfoNo.substring(0, 3);
	let ho = hshldInfoNo.substring(3);
	console.log(dong, ho);

	let item = $("div[class='item']");
	$(item[0]).html(dong + " 동");
	$(item[0]).attr("data-value", dong);
	$("option[value='동 선택']").val(dong);
	$(item[1]).html(ho + " 호");
	$(item[1]).attr("data-value", ho);
	$("option[value='호 선택']").val(ho);
	$("#hshldInfoNo").val(dong + ho);

	// 자동완성 버튼 이벤트 핸들러
	$("#auto").on("click", function(){
		let item = $("div[class='item']");
		$(item[0]).html("101" + " 동");
		$(item[0]).attr("data-value", "101");
		$("option[value='동 선택']").val("101");
		$(item[1]).html("101" + " 호");
		$(item[1]).attr("data-value", "101");
		$("option[value='호 선택']").val("101");
		$("#dong").val("101");
		$("#ho").val("101");
		$("#hshldInfoNo").val("101101");

		$("#managectTot").val("135,650");
		$("#manageOfficeOrpns").val("30,526");
		$("#managectRepair").val("14,232");
		$("#managectCln").val("5,121");
		$("#managectScrty").val("15,338");
		$("#managectDsnf").val("841");
		$("#managectElvtr").val("3,030");
		$("#managectPrkplce").val("2,100");
		$("#managectPblfclt").val("3,042");
		$("#managectWtr").val("37,045");
		$("#managectElcty").val("51,175");
		$("#managectGas").val("16,257");
		$("#managectHeat").val("0");
		$("#managectHtWtr").val("0");
		$("#managectBldInsrnc").val("631");
		$("#managectDomWste").val("1,807");
		$("#managectWrrtn").val("0");
	});
});

// 조회 버튼의 클릭 이벤트를 발생시키는 함수
function detail() {
	let rlvtYm = "${param.rlvtYm}";
	let year = rlvtYm.substring(0, 4);
	let month = rlvtYm.substring(4);
	console.log("rlvtYm : ", rlvtYm);
	$("#year").val(year);
	$("#month").val(month);
	setTimeout(function() {
		document.getElementById("btnDet").click();
	}, 50);
}
</script>


















