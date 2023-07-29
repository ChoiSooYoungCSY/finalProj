<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
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
<sec:authentication property="principal.userVO" var="userVO" />
<c:set var="hshldInfoNo" value="${userVO.memberVO.hshldInfoNo}"/>

<form action="/emp/aa/mngcmnusemanagect/save" id="frm" method="post" enctype="multipart/form-data">
<div class="p-5 box mt-3">
	<div class="flex">
		<h3 class="text-2xl font-bold leading-none mt-1">관리비 상세내역</h3>
    </div>
	<div class="flex-col mt-16 items-center">
    	<div class="flex text-lg font-bold items-center" style="height: 30px;">
			<input type="hidden" id="rlvtYm" name="rlvtYm" />
			<select id="year" name="year" class="form-select text-lg" style="text-align:center; width:12%;">
			         	<option value="2023" selected>2023 년</option>
			    <option value="2022">2022 년</option>
			    <option value="2021">2021 년</option>
			</select>
			<select id="month" name="month" class="form-select text-lg ml-1" style="text-align:center;width:10%;">
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
			<a id="btnDet" class="btn btn-primary font-bold ml-3" style="width: 7%"> 조회 </a>
		    <div class="flex input-group text-lg font-bold ml-auto" style="width: 25%;height: 150%;">
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
</div>
<sec:csrfInput />
</form>

</div>
<!-- END: Body -->

<script type="text/javascript" src="/resources/js/jquery-3.6.4.min.js"></script>
<script type="text/javascript">
$(function(){
	// 메뉴 경로 표시 (상단 메뉴)
	$("#main_menu").html("마이페이지");
	$("#sub_menu").html("관리비 조회");

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
		console.log(rlvtYm);

		let hshldInfoNo = "${hshldInfoNo}";
		console.log(hshldInfoNo);

		jQuery.ajax({
			url : "/mem/mypg/managectbbs/detail.ajax",
			data : {"rlvtYm" : rlvtYm, "hshldInfoNo" : hshldInfoNo},
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
					$("#managectHeat").val(vo.managectHeat.toLocaleString());
					$("#managectCln").val(vo.managectCln.toLocaleString());
					$("#managectElvtr").val(vo.managectElvtr.toLocaleString());
					$("#managectScrty").val(vo.managectScrty.toLocaleString());
					$("#manageOfficeOrpns").val(vo.manageOfficeOrpns.toLocaleString());
					$("#managectRepair").val(vo.managectRepair.toLocaleString());
					$("#managectWrrtn").val(vo.managectWrrtn.toLocaleString());
					$("#managectDsnf").val(vo.managectDsnf.toLocaleString());
					$("#managectPrkplce").val(vo.managectPrkplce.toLocaleString());
					$("#managectPblfclt").val(vo.managectPblfclt.toLocaleString());
					$("#managectGas").val("0");
					$("#managectHtWtr").val("0");
					$("#managectDomWste").val("1,807");
					$("#managectBldInsrnc").val("631");
				}
			}
		});
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


















