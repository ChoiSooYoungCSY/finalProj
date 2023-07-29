<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<script type="text/javascript" src="/resources/js/bootstrap.js"></script>
<script type="text/javascript" src="/resources/ckeditor/ckeditor.js"></script>


<!-- BEGIN: Menu -->
<div class="col-span-12 lg:col-span-3 2xl:col-span-2">
	<div class="intro-y box bg-primary p-5 mt-0 text-lg">
		<nav class="side-nav">
			<ul>
				<li><a href="/mem/cmnt/neighborbbs" class="side-menu">
						<div class="side-menu__icon">
							<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
								viewBox="0 0 24 24" fill="none" stroke="currentColor"
								stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
								icon-name="home" data-lucide="home" class="lucide lucide-home">
								<path d="M3 9l9-7 9 7v11a2 2 0 01-2 2H5a2 2 0 01-2-2z"></path></svg>
						</div>
						<div class="side-menu__title">우리동네</div>
				</a></li>
				<li><a href="/mem/cmnt/secondhandbbs" class="side-menu">
						<div class="side-menu__icon">
							<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
								viewBox="0 0 24 24" fill="none" stroke="currentColor"
								stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
								icon-name="box" data-lucide="box" class="lucide lucide-box">
								<path
									d="M21 16V8a2 2 0 00-1-1.73l-7-4a2 2 0 00-2 0l-7 4A2 2 0 003 8v8a2 2 0 001 1.73l7 4a2 2 0 002 0l7-4A2 2 0 0021 16z"></path>
								<polyline points="3.27 6.96 12 12.01 20.73 6.96"></polyline>
								<line x1="12" y1="22.08" x2="12" y2="12"></line></svg>
						</div>
						<div class="side-menu__title">중고장터</div>
				</a></li>
				<li><a href="/mem/cmnt/clubbbs" class="side-menu">
						<div class="side-menu__icon">
							<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
								viewBox="0 0 24 24" fill="none" stroke="currentColor"
								stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
								icon-name="box" data-lucide="box" class="lucide lucide-box">
								<path
									d="M21 16V8a2 2 0 00-1-1.73l-7-4a2 2 0 00-2 0l-7 4A2 2 0 003 8v8a2 2 0 001 1.73l7 4a2 2 0 002 0l7-4A2 2 0 0021 16z"></path>
								<polyline points="3.27 6.96 12 12.01 20.73 6.96"></polyline>
								<line x1="12" y1="22.08" x2="12" y2="12"></line></svg>
						</div>
						<div class="side-menu__title">소모임</div>
				</a></li>
				<li><a href="/mem/cmnt/freebbs" class="side-menu">
						<div class="side-menu__icon">
							<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
								viewBox="0 0 24 24" fill="none" stroke="currentColor"
								stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
								icon-name="box" data-lucide="box" class="lucide lucide-box">
								<path
									d="M21 16V8a2 2 0 00-1-1.73l-7-4a2 2 0 00-2 0l-7 4A2 2 0 003 8v8a2 2 0 001 1.73l7 4a2 2 0 002 0l7-4A2 2 0 0021 16z"></path>
								<polyline points="3.27 6.96 12 12.01 20.73 6.96"></polyline>
								<line x1="12" y1="22.08" x2="12" y2="12"></line></svg>
						</div>
						<div class="side-menu__title">자유게시판</div>
				</a></li>
				<li><a href="/mem/cmnt/cvplbbs" class="side-menu">
						<div class="side-menu__icon">
							<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
								viewBox="0 0 24 24" fill="none" stroke="currentColor"
								stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
								icon-name="box" data-lucide="box" class="lucide lucide-box">
								<path
									d="M21 16V8a2 2 0 00-1-1.73l-7-4a2 2 0 00-2 0l-7 4A2 2 0 003 8v8a2 2 0 001 1.73l7 4a2 2 0 002 0l7-4A2 2 0 0021 16z"></path>
								<polyline points="3.27 6.96 12 12.01 20.73 6.96"></polyline>
								<line x1="12" y1="22.08" x2="12" y2="12"></line></svg>
						</div>
						<div class="side-menu__title">민원게시판</div>
				</a></li>
			</ul>
		</nav>
	</div>
</div>
<!-- END: Menu -->
<!-- BEGIN: Body -->
<div class="bdy col-span-12 lg:caol-span-9 2xl:col-span-10">
	<form id="frm" method="get" enctype="multipart/form-data">
		<div class="intro-y news p-5 box mt-0">
			<%-- 		<p>${freebbsdata}</p> --%>
			<div class="absolute sm:relative -mt-12 sm:mt-0 w-full flex justify-end text-slate-600 dark:text-slate-500 text-xs sm:text-sm">
				<sec:authentication property="principal.userVO.memberVO" var="memVO" />
				<c:set var="memId" value="${memVO.memId}" />
				<c:if test="${freebbsdata.frstWrterId eq memId}">
					<a href="/mem/cmnt/freebbs/freeupdate?pstId=${freebbsdata.pstId}" class="btn btn-primary mr-4">수정하기</a>
					<button type="button" id="btnDelete" class="btn btn-outline-primary" value="${freebbsdata.pstId}">삭제하기</button>
				</c:if>
			</div>
			<div class="intro-y font-medium text-xl sm:text-2xl mt-3 p-3  mt-0 pt-5 border-t border-slate-200/60 dark:border-darkmode-400" style="text-align: center;">
				<span>${freebbsdata.pstSj}</span>
			</div>
			<div class="intro-y flex relative pt-16 sm:pt-2 items-center -mt-0  mt-0 pt-5 border-t border-slate-200/60 dark:border-darkmode-400">
				<div class="intro-x flex mr-3" style="float:left;">
					<div class="intro-x w-8 h-8 sm:w-10 sm:h-10 image-fit">
						<img alt=""
							class="rounded-full border border-white zoom-in tooltip"
							src="/resources/images/KakaoTalk_20230609_143315205.png">
					</div>
				</div>
				<div class="absolute w-full flex text-slate-600 dark:text-slate-500 text-x"  style="float:left; margin-left:50px;">
					<div class="intro-x mr-1 sm:mr-3">
						${freebbsdata.frstWrterId}
					</div>
				</div>
				<div class="flex items-right" style="margin-left:580px;">
					<div class="font-medium leading-none mb-1">
						 조회수 : ${freebbsdata.rdcnt}
					</div> &nbsp;&nbsp;&nbsp;
					<div class="font-medium leading-none mb-1">
						 작성일 : ${freebbsdata.lastUpdtTm}
					</div>
				</div>
			</div>
			<div class="intro-y flex text-xs sm:text-sm flex-col sm:flex-row items-center mt-0 pt-5 border-t border-slate-200/60 dark:border-darkmode-400">
				<div class="flex items-center">
					<div class="ml-3 mr-auto">
						<div class="font-medium leading-none mt-3">${freebbsdata.pstCn}</div>
					</div>
				</div>
			</div>
			<div class="intro-y mt-6 grid grid-cols-1 sm:grid-cols-3 gap-4">
	         	<c:forEach var="atchmnflDetailVO" items="${freebbsdata.atchmnflDetailList}" varStatus="stat">
			    <div class="nEWS__PREVIEW IMAGE-FIT">
		        	<img alt="" class="rounded-md" src="/resources/upload${atchmnflDetailVO.flpth}/${atchmnflDetailVO.streFlNm}">
			    </div>
			    </c:forEach>
			</div>
			<div class="intro-y flex relative pt-16 sm:pt-6 items-center pb-6">
				<hr />
			</div>
			<!-- END: Blog Layout -->
			<!-- BEGIN: Comments -->
			<div
				class="intro-y mt-2 pt-5 border-t border-slate-200/60 dark:border-darkmode-400">
				<div class="flex justify-between items-center">
					<div class="text-base sm:text-lg font-medium" id="cmntCount"></div>
					<div class="text-xs sm:text-sm mr-2">
						<a href="/mem/cmnt/freebbs" class="btn btn-primary mr-4">목록</a>
					</div>
				</div>
			</div>
	</form>
				<!-- 댓글 입력 창 -->
				<div class="news__input relative mt-5">
					<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
						viewBox="0 0 24 24" fill="none" stroke="currentColor"
						stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
						icon-name="message-circle" data-lucide="message-circle"
						class="lucide lucide-message-circle w-5 h-5 absolute my-auto inset-y-0 ml-6 left-0 text-slate-500">
						<path d="M21 11.5a8.38 8.38 0 01-.9 3.8 8.5 8.5 0 01-7.6 4.7 8.38 8.38 0 01-3.8-.9L3 21l1.9-5.7a8.38 8.38 0 01-.9-3.8 8.5 8.5 0 014.7-7.6 8.38 8.38 0 013.8-.9h.5a8.48 8.48 0 018 8v.5z"></path>
					</svg>
					<div class="flex">
						<textarea id="freeCmnt" name="freeCmnt" class="form-control border-transparent bg-slate-100 pl-16 py-6 resize-none" rows="1" placeholder="댓글을 입력해주세요." style="width:830px;"></textarea>
						<button type="button" id="cmntBtn" name="cmntBtn"><span class="btn btn-primary mr-4" style="margin-left:20px;">등록</span></button>
					</div>
						<input id="pstId" name="pstId" type="hidden" value="${freebbsdata.pstId}" />
				</div>
			<!-- 댓글 입력 창 끝 -->
			<!-- 등록된 댓글 출력 -->
			<div class="intro-y mt-5 pb-10" id="freeCmntList"></div>
			<!-- 댓글 출력창 끝 -->
</div>


<!-- END: Body -->

<!-- 댓글 수정하기버튼을 눌렀을 때 나오는 모달 -->
 <div id="updatefCmnt" class="modal" tabindex="-1" aria-hidden="true">
     <div class="modal-dialog">
         <div class="modal-content">
             <!-- BEGIN: Modal Header -->
             <div class="modal-header">
                 <h2 class="font-medium text-base mr-auto">댓글 수정</h2>
                 <div class="dropdown sm:hidden"> <a class="dropdown-toggle w-5 h-5 block" href="javascript:;" aria-expanded="false" data-tw-toggle="dropdown"> <i data-lucide="more-horizontal" class="w-5 h-5 text-slate-500"></i> </a>
                 </div>
             </div> <!-- END: Modal Header -->
             <!-- BEGIN: Modal Body -->
             <div class="modal-body grid grid-cols-12 gap-4 gap-y-3">
                 <div class="col-span-12 sm:col-span-12">
                 	 <label for="modal-form-3" class="form-label">내용</label>
                 	 <input id="cmntCn" name="cmntCn" type="text" class="form-control" placeholder="수정할 내용을 입력해주세요."/>
                 	 <input id="memId" name="memId" type="hidden" class="form-control"/>
                 	 <input id="cmntNo" name="cmntNo" type="hidden" value="${freeBbsCmntVO.cmntNo}" class="form-control"/>
                 	 <input id="pstId" name="pstId" type="hidden" value="${freebbsdata.pstId}" class="form-control"/>
                 	 </div>
             </div>
             <div class="modal-footer">
             	<button type="button" id="modalUpdtBtn"><span class="btn btn-primary w-20">수정</span></button>
             	<button type="button" data-tw-dismiss="modal" id="modalCloseBtn"><span class="btn btn-outline-secondary w-20 mr-1">취소</span></button>
             	</div>
         </div>
     </div>
 </div>
<!-- 수정하기 모달 끝 -->
<!-- 대댓글과 신고하기를 보기위한 드롭다운 출력하기 -->
<div class="dropdown-menu w-56 show" id="_lagarcd8w" data-popper-placement="bottom-end" style="width: 224px; position: absolute; inset: 0px 0px auto auto; margin: 0px; transform: translate3d(-24px, 50.4px, 0px);">
    <ul class="dropdown-content bg-primary text-white">
        <li>
            <a href="" class="dropdown-item hover:bg-white/5">
            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
             viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"
              stroke-linecap="round" stroke-linejoin="round" icon-name="edit"
              data-lucide="edit" class="lucide lucide-edit w-4 h-4 mr-2">
              <path d="M11 4H4a2 2 0 00-2 2v14a2 2 0 002 2h14a2 2 0 002-2v-7"></path>
              <path d="M18.5 2.5a2.121 2.121 0 013 3L12 15l-4 1 1-4 9.5-9.5z"></path>
             </svg> 댓글 달기</a>
        </li>
        <li>
            <hr class="dropdown-divider border-white/[0.08]">
        </li>
        <li>
            <a href="" class="dropdown-item hover:bg-white/5">
            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
             viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"
              stroke-linecap="round" stroke-linejoin="round" icon-name="lock"
              data-lucide="lock" class="lucide lucide-lock w-4 h-4 mr-2">
              <rect x="3" y="11" width="18" height="11" rx="2" ry="2"></rect>
              <path d="M7 11V7a5 5 0 0110 0v4"></path>
              </svg> 신고하기 </a>
        </li>
    </ul>
</div>

<script type="text/javascript">
	$(function() {
		$("#main_menu").html("커뮤니티");
		$("#sub_menu").html("자유게시판");

		var title = $("#sub_menu").text();
		var arr_menu = $(".side-menu__title");
		var cur_menu = null;
		for (var i = 0; i < arr_menu.length; i++) {
			if (arr_menu[i].innerText == title) {
				cur_menu = arr_menu[i];
			}
		}
		$(cur_menu).parent().addClass("side-menu--active");

		$(".side-nav > ul > li > .side-menu").on("click", function() {
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
<style type="text/css">
#btnReg {
	background-color: rgb(6, 78, 59);
	letter-spacing: 1px;
}

#btnReg, #btnCncl {
	font-size: 16px;
}
</style>
<script type="text/javascript">
$(function(){
	$("#main_menu").html("커뮤니티");
	$("#sub_menu").html("자유게시판");

	var title = $("#sub_menu").text();
	var arr_menu = $(".side-menu__title");
	var cur_menu = null;
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



	// 취소 버튼 이벤트 핸들러 함수
	$("#btnCncl").on("click", function(){
		location.href = "/mem/cmnt/freebbs";
	});
});

</script>
<script type="text/javascript">


function cmntLoad(){
	jQuery.ajax({
	      url: "/mem/cmnt/freebbs/freeCmntList?pstId=" + `${param.pstId}`,
	      type: "get",
	      success: function(result) {
	    	  console.log("res>>",result);
	    	  $("#cmntCount").text("댓글수[" + result.length + "]")
	    	  cmntView(result);
		},
	});
}


function cmntView(res) {
	let html = ``;

	$(res).each((i,e)=>{
		console.log("e",e);
		html += `
			<div class="pt-5">
				<div class="flex">
					<div class="w-10 h-10 sm:w-12 sm:h-12 flex-none image-fit">
						<img alt="" class="rounded-full"
							src="/resources/images/KakaoTalk_20230608_214522510_01.png">
					</div>
					<div class="ml-3 flex-1 mt-0 pt-5 border-t border-slate-200/60 dark:border-darkmode-400">
						<div class="flex items-center">
							<input id="cmntNo" name="cmntNo" type="hidden" value="` + e.cmntNo + `"/>
							<span id="frrfrstWrterId" class="font-medium" style="">`+e.frstWrterId+`</span>
							<span id="frrlastUpdtTm" style="margin-left:65%;">작성일시 : `+e.lastUpdtTm+`</span>
							<a href="" class="ml-auto text-xs text-slate-500"></a>
						</div>
						<div class="mt-2 container mt-3" style="display:flex;">
							<div class="left-column" style="flex:1; margin-right:50%">
								<a id="frrcmntCn" href="" onclick="">`+e.cmntCn+`</a>
							</div>
							<div class="right-column" style="flex:1;">
								<button type="button" id="updtBtn" class="updtBtn" style="border:2px; border-color:green;" data-content="` + e.cmntCn + `"><span class="btn btn-primary mr-4" style="float:right; color:black; background-color:white;">수정</span></button>
								<button type="button" id="delBtn" class="delBtn" style="border:2px; border-color:green;" data-cmntno="` + e.cmntNo + `"><span class="btn btn-primary mr-4" style="float:right; color:black; background-color:white;">삭제</span></button>
								<button type="button" id="RepBtn""><span class="btn btn-primary mr-4" style="float:right;">신고</span></button>
							</div>
						</div>
					</div>
				</div>
			</div>
		`;

	});
	$('#freeCmntList').html(html);

	$("#updtBtn").on("click",function(){
		 const updatefCmnt = tailwind.Modal.getInstance(document.querySelector("#updatefCmnt"));
		 $("#cmntCn").val($(this).data("content"))
		 updatefCmnt.show();
	});
}



// 게시글에 등록된 댓글 불러오기
$(function(){
	cmntLoad();


	//등록된 게시글 삭제하기
	$("#btnDelete").on("click", function(){
	   //<input id="crud-form-1" name="bookNo"
	   let pstId = $(this).val();
	   //json 오브젝트
	   let data = {"pstId":pstId};
	   console.log("data : " + JSON.stringify(data));

	   jQuery.ajax({
	      url: "/mem/cmnt/freebbs/deletePost",
	      contentType:"application/json;charset=utf-8",
	      data: JSON.stringify(data),
	      type: "post",
	      dataType: "text",
	     beforeSend : function(xhr) {
	        xhr.setRequestHeader("${_csrf.headerName}",
	              "${_csrf.token}");
	     },
	      success: function(result){
	         console.log("result : " + result);
	         if(result=="success"){
	            location.href="/mem/cmnt/freebbs";
	         }else{
	            alert("삭제에 실패하였습니다.");
	         }
	      }
	   });
	});


	//게시글에 댓글 작성하기
	$("#cmntBtn").on("click", function() {

	   var pstId = $("#pstId").val();
	   var cmntCn = $("#freeCmnt").val();
	   var memId = "${memId}";

	   var data = {
			   "pstId": pstId,
			   "cmntCn": cmntCn,
			   "memId": memId
			   };
	   console.log(data);

	   jQuery.ajax({
	      url: "/mem/cmnt/freebbs/freeCmntRegister",
	      contentType: "application/json;charset=utf-8",
	      data: JSON.stringify(data),
	      type: "post",
	      dataType: "text",
	      beforeSend: function(xhr) {
	         xhr.setRequestHeader("${_csrf.headerName}", "${_csrf.token}");
	      },
	      success: function(result) {
	         $("#freeCmnt").val("");
	         alert("댓글이 작성되었습니다.");
	         location.href="/mem/cmnt/freebbs/freedetail?pstId=${freeBbsVO.pstId}";
	      },
	      error: function(xhr, status, error) {
	         console.log("에러 발생:", error);
	      }
	   });
	});


	//게시물에 등록한 댓글 수정하기
	jQuery("#modalUpdtBtn").on("click", function() {

	   var pstId = $("#pstId").val();
	   var cmntNo = $("#cmntNo").val();
	   var cmntCn = $("#cmntCn").val();
	   var memId = "${memId}";

	   var data = {
			   "pstId": pstId,
			   "cmntNo": cmntNo,
			   "cmntCn": cmntCn,
			   "memId": memId
			   };

	   console.log(data);

	   jQuery.ajax({
	      url: "/mem/cmnt/freebbs/freeCmntUpdatePost",
	      contentType: "application/json;charset=utf-8",
	      data: JSON.stringify(data),
	      type: "post",
	      dataType: "text",
	      beforeSend: function(xhr) {
	         xhr.setRequestHeader("${_csrf.headerName}", "${_csrf.token}");
	      },
	      success: function(result) {
	    	 console.log("result : " + result);
	    	 if(result=="success"){
	    		alert("댓글이 수정되었습니다.")
	    		jQuery("#modalCloseBtn").trigger("click");
	    		cmntLoad();
	    	 }else{
	    		 alert("댓글수정에 실패하였습니다.")
	    	 }
	      },
	      error: function(xhr, status, error) {
	         console.log("에러 발생:", error);
	      }
	   });

	});

	//게시물에 등록한 댓글 삭제하기
	jQuery(document).on("click", ".delBtn", function(){

	   //댓글번호 불러오기
	    var cmntNo = $(this).data("cmntno");

	   //json 오브젝트
	   let data = {"cmntNo":cmntNo};
	   console.log("cmntData : " + JSON.stringify(data));

	   jQuery.ajax({
	      url: "/mem/cmnt/freebbs/deleteCmntPost",
	      contentType:"application/json;charset=utf-8",
	      data: JSON.stringify(data),
	      type: "post",
	      dataType: "text",
	     beforeSend : function(xhr) {
	        xhr.setRequestHeader("${_csrf.headerName}",
	              "${_csrf.token}");
	     },
	      success: function(result){
	         console.log("result : " + result);
	         if(result=="success"){
	        	 alert("댓글이 삭제되었습니다.");
		         location.href="/mem/cmnt/freebbs/freedetail?pstId=${freeBbsVO.pstId}";
	         }else{
	            alert("삭제에 실패하였습니다.");
	         }
	      }
	   });
	});

});
</script>