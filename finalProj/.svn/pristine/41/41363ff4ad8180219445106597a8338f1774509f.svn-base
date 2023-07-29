<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"	uri="http://www.springframework.org/security/tags"%>

<div class="col-span-12 lg:col-span-3 2xl:col-span-2">
	<!-- BEGIN: Menu -->
	<div class="intro-y box bg-primary p-4 mt-0 text-lg">
		<nav class="side-nav">
			<ul>
				<li><a href="/emp/cmnt/empntcbbs" class="side-menu">
						<div class="side-menu__icon">
							<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
								viewBox="0 0 24 24" fill="none" stroke="currentColor"
								stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
								icon-name="home" data-lucide="home" class="lucide lucide-home">
								<path d="M3 9l9-7 9 7v11a2 2 0 01-2 2H5a2 2 0 01-2-2z"></path></svg>
						</div>
						<div class="side-menu__title">공지사항</div>
				</a></li>
				<li><a href="/emp/cmnt/freebbs" class="side-menu">
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
			</ul>
		</nav>
	</div>
	<!-- END: Menu -->
</div>
<!-- BEGIN: Body -->
<div class="bdy col-span-12 lg:caol-span-9 2xl:col-span-10">
	<!-- 게시글 영역 -->
	<div class="intro-y news p-5 box mt-0">
		<form id="frm" method="get" enctype="multipart/form-data">
			<div class="absolute sm:relative -mt-12 sm:mt-0 w-full flex justify-end text-slate-600 dark:text-slate-500 text-xs sm:text-sm">
				<sec:authentication property="principal.userVO.empVO" var="empVO" />
				<c:set var="empId" value="${empVO.empId}" />
				<c:if test="${freebbsdata.frstWrterId eq empId}">
					<a href="/emp/cmnt/freebbs/freeupdate?pstId=${freebbsdata.pstId}" class="btn btn-primary mr-4">수정하기</a>
					<button type="button" id="btnDelete" class="btn btn-outline-primary">삭제하기</button>
				</c:if>
			</div>
			<div class="intro-y font-medium text-xl sm:text-2xl mt-3 p-3  mt-0 pt-5 border-t border-slate-200/60 dark:border-darkmode-400" style="text-align: center;">
				<span>${freebbsdata.pstSj}</span>
			</div>
			<div class="intro-y flex relative pt-16 sm:pt-2 items-center -mt-0  mt-0 pt-5 border-t border-slate-200/60 dark:border-darkmode-400">
				<div class="intro-x flex mr-3" style="float: left;">
					<div class="intro-x w-8 h-8 sm:w-10 sm:h-10 image-fit">
						<img alt="" class="rounded-full border border-white zoom-in tooltip" src="/resources/images/emp/${freebbsdata.empImg}">
					</div>
				</div>
				<div
					class="absolute w-full flex text-slate-600 dark:text-slate-500 text-x"
					style="float: left; margin-left: 50px;">
					<div class="intro-x mr-1 sm:mr-3">${freebbsdata.frstWrterId}</div>
				</div>
				<div class="flex items-right" style="margin-left:500px;">
					<div class="font-medium leading-none mb-1">
						 조회수 : ${freebbsdata.rdcnt}
					</div>
					&nbsp;&nbsp;&nbsp;&nbsp;
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
			<div class="intro-y mt-2 pt-5 border-t border-slate-200/60 dark:border-darkmode-400">
				<div class="flex justify-between items-center">
					<div class="text-base sm:text-lg font-medium" id="cmntCount"></div>
					<div class="text-xs sm:text-sm mr-2">
						<a href="/emp/cmnt/freebbs" class="btn btn-primary mr-4">목록</a>
					</div>
				</div>
			</div>
		</form>
		<!-- 게시글 영역 끝 -->
		<!-- 댓글 입력 창 시작 -->
		<div class="news__input relative mt-5">
			<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="message-circle" data-lucide="message-circle" class="lucide lucide-message-circle w-5 h-5 absolute my-auto inset-y-0 ml-6 left-0 text-slate-500"><path d="M21 11.5a8.38 8.38 0 01-.9 3.8 8.5 8.5 0 01-7.6 4.7 8.38 8.38 0 01-3.8-.9L3 21l1.9-5.7a8.38 8.38 0 01-.9-3.8 8.5 8.5 0 014.7-7.6 8.38 8.38 0 013.8-.9h.5a8.48 8.48 0 018 8v.5z"></path></svg>
			<div class="news__input relative mt-5">
				<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="message-circle" data-lucide="message-circle" class="lucide lucide-message-circle w-5 h-5 absolute my-auto inset-y-0 ml-6 left-0 text-slate-500"><pathd="M21 11.5a8.38 8.38 0 01-.9 3.8 8.5 8.5 0 01-7.6 4.7 8.38 8.38 0 01-3.8-.9L3 21l1.9-5.7a8.38 8.38 0 01-.9-3.8 8.5 8.5 0 014.7-7.6 8.38 8.38 0 013.8-.9h.5a8.48 8.48 0 018 8v.5z"></path></svg>
				<div class="flex">
					<textarea id="empCmnt" name="empCmnt"
						class="form-control border-transparent bg-slate-100 pl-16 py-6 resize-none"
						rows="1" placeholder="댓글을 입력해주세요." style="width: 830px;">
					</textarea>
					<button type="button" id="cmntBtn" name="cmntBtn">
						<span class="btn btn-primary mr-4" style="margin-left: 20px;">등록</span>
					</button>
				</div>
				<input id="pstId" name="pstId" type="hidden" value="${freebbsdata.pstId}" />
			</div>
		</div>
		<!-- 댓글 입력 창 끝 -->
		<!-- 등록된 댓글 출력 -->
		<div class="mt-5 pb-10" id="empCmntList"></div>
		<!-- 댓글 출력창 끝 -->
	</div>
</div>
<!-- END: Body -->

<!-- 댓글 수정하기버튼을 눌렀을 때 나오는 모달 -->
<div id="updatefCmnt" class="modal" tabindex="-1" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<!-- BEGIN: Modal Header -->
			<div class="modal-header">
				<h2 class="font-medium text-base mr-auto">댓글 수정</h2>
				<div class="dropdown sm:hidden">
					<a class="dropdown-toggle w-5 h-5 block" href="javascript:;" aria-expanded="false" data-tw-toggle="dropdown">
					<i data-lucide="more-horizontal" class="w-5 h-5 text-slate-500"></i>
					</a>
				</div>
			</div>
			<!-- END: Modal Header -->
			<!-- BEGIN: Modal Body -->
			<div class="modal-body grid grid-cols-12 gap-4 gap-y-3">
				<div class="col-span-12 sm:col-span-12">
					<label for="modal-form-3" class="form-label">내용</label>
					<input id="cmntCn" name="cmntCn" type="text" class="form-control" placeholder="수정할 내용을 입력해주세요." />
					<input id="empId" name="empId" type="hidden" class="form-control" />
					<input id="cmntNo" name="cmntNo" type="hidden" value="" class="form-control" />
					<input id="pstId" name="pstId" type="hidden" value="${freebbsdata.pstId}" class="form-control" />
				</div>
			</div>
			<div class="modal-footer">
				<button type="button" id="modalUpdtBtn">
					<span class="btn btn-primary w-20">수정</span>
				</button>
				<button type="button" data-tw-dismiss="modal" id="modalCloseBtn">
					<span class="btn btn-outline-secondary w-20 mr-1">취소</span>
				</button>
			</div>
		</div>
	</div>
</div>
<!-- 수정하기 모달 끝 -->

<script type="text/javascript" src="/resources/js/jquery-3.6.4.min.js"></script>
<script type="text/javascript" src="/resources/ckeditor/ckeditor.js" ></script>
<script>
	// CKEDITOR 설정
	CKEDITOR.replace("editor");  // textarea의 name 값 입력
	// html 태그 사라지는 오류 해결
	CKEDITOR.config.allowedContent = true;
	// 입력란 활성화
	CKEDITOR.instances["editor"].setReadOnly(false);
</script>
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
		location.href = "/emp/cmnt/freebbs";
	});
});

</script>
<script type="text/javascript">


function cmntLoad(){
	jQuery.ajax({
	      url: "/emp/cmnt/freebbs/freeCmntList?pstId=" + `${param.pstId}`,
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
		let cmntIndent = ""
		if(e.cmntGrSq==2){
			cmntIndent = "recmntbox";
		}


		html += `
			<div class="cmntArea">
				<div class="pt-5 ` + cmntIndent + ` ">
					<div class="flex">
						<div class="mt-2 w-10 h-10 sm:w-12 sm:h-12 flex-none image-fit">
							<img alt="" class="rounded-full" src="/resources/images/emp/`+e.empImg+`">
						</div>
						<div class="ml-3 flex-1 mt-0 pt-5 border-t border-slate-200/60 dark:border-darkmode-400 hello">
							<div class="flex items-center">
								<span id="frrfrstWrterId" class="font-medium" style="">`+e.frstWrterId+`</span>
								<span id="frrlastUpdtTm" style="margin-left:65%;">작성일시 : `+e.lastUpdtTm+`</span>
							</div>
							<div class="mt-3 container" style="display:flex;">
								<div class="left-column" style="flex:1; margin-right:30%">
									<a class="frrcmntCn" href="#" data-cmntno="` + e.cmntNo + `"> `+e.cmntCn+`</a>
								</div>
								<div class="right-column" style="display: flex; justify-content:space-between; margin-right:60px;">
								<sec:authentication property="principal.userVO.empVO" var="empVO" />
									<c:set var="empId" value="\${e.empId}" />
									<c:if test="\${freebbsdata.frstWrterId eq empId}">
								<div id="updtBtn" data-cmntno="` + e.cmntNo + `" data-content="` + e.cmntCn + `" style="margin-right:10px;">
										<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24"
											fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round"
											stroke-linejoin="round" icon-name="edit" data-lucide="edit" class="lucide lucide-edit block mx-auto">
											<path d="M11 4H4a2 2 0 00-2 2v14a2 2 0 002 2h14a2 2 0 002-2v-7"></path>
											<path d="M18.5 2.5a2.121 2.121 0 013 3L12 15l-4 1 1-4 9.5-9.5z"></path>
										</svg>
									</div>
									<div class="delBtn" data-cmntno="` + e.cmntNo + `" style="margin-right:10px;">
										<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24"
											fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round"
											stroke-linejoin="round" icon-name="trash-2" data-lucide="trash-2" class="lucide lucide-trash-2 block mx-auto">
											<polyline points="3 6 5 6 21 6"></polyline><path d="M19 6v14a2 2 0 01-2 2H7a2 2 0 01-2-2V6m3 0V4a2 2 0 012-2h4a2 2 0 012 2v2"></path>
											<line x1="10" y1="11" x2="10" y2="17"></line><line x1="14" y1="11" x2="14" y2="17"></line>
										</svg>
									</div>
									</c:if>
									<div id="RepBtn" data-cmntno="` + e.cmntNo + `">
										<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24"
											fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
											icon-name="frown" data-lucide="frown" class="lucide lucide-frown block mx-auto"><circle cx="12" cy="12" r="10"></circle>
											<path d="M16 16s-1.5-2-4-2-4 2-4 2"></path><line x1="9" y1="9" x2="9.01" y2="9"></line><line x1="15" y1="9" x2="15.01" y2="9"></line>
										</svg>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			`;
		if(e.cmntGrSq == 1){

			html +=
				`
					<div id="vertical-form" class="p-5 vertical-form" style="display:none;">
						<div class="preview" style="display:flex;">
							<div class="" style="flex:1;">
								<label for="reCmntCn" class="form-label" style="margin-left:60px;">답글</label>
								<span>↳</span><input id="reCmntCn" type="text" class="form-control" style="width:650px; margin-left:10px;" placeholder="등록할 댓글을 입력해주세요">
							</div>
							<button class="reCmntBtn" type="button" style="float:right; margin-right:20px;" data-cmntgr="` + e.cmntGr + `" data-recmntno="` + e.cmntNo + `"><span class="btn btn-primary" style="float:right;">등록</span></button>
						</div>
					</div>
			`;
		}

		html += "				</div>";
	});
	$('#empCmntList').html(html);


 	// 댓글출력의 글 내용에 걸린 a링크 클릭 시 이벤트 처리
    document.querySelectorAll(".frrcmntCn").forEach(link => {
        link.addEventListener("click", function (event) {
            event.preventDefault();

        	jQuery(".vertical-form").each(function(i,v){
        		$(v).css("display", 'none');
        	});

        	jQuery(this).parents(".cmntArea").find(".vertical-form").css("display", "block");


        });
    });


	//댓글을 수정하는 모달띄우기
	$("#updtBtn").on("click",function(){
		 const updatefCmnt = tailwind.Modal.getInstance(document.querySelector("#updatefCmnt"));
		 $("#cmntCn").val($(this).data("content"))
		 $("#cmntNo").val($(this).data("cmntno"))
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
	   let data = {
			   "pstId" : "${freebbsdata.pstId}",
			   "empId" : "${empVO.empId}"
	   			};
	   console.log("data : " + JSON.stringify(data));

	   jQuery.ajax({
	      url: "/emp/cmnt/freebbs/deletePost",
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
	            location.href="/emp/cmnt/freebbs";
	         }else{
	            alert("삭제에 실패하였습니다.");
	         }
	      }
	   });
	});


	//게시글에 댓글 작성하기
	$("#cmntBtn").on("click", function() {
		let postWriter = "${freebbsdata.frstWrterId}";
	    let pstId = $("#pstId").val();
	   	let cmntCn = $("#freeCmnt").val();
		let empId = "${empId}";
	   	let data = {
			   "pstId": pstId,
			   "cmntCn": cmntCn,
			   "empId": empId
			   };
	    console.log(data);

	    jQuery.ajax({
	        url: "/emp/cmnt/freebbs/freeCmntRegister",
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
	          	cmntEcho(postWriter,data);
	       		location.href="/emp/cmnt/freebbs/freedetail?pstId=${empBbsVO.pstId}";
	        },
	        error: function(xhr, status, error) {
	        	console.log("에러 발생:", error);
	    	}
	    });
	});

	//댓글 입력시 해당 댓글 작성자에게 알림
	function cmntEcho(receiver, data) {
		let cmd = "echo";

		console.log("receiver",receiver);
		console.log("data",data.pstId);

		let today = new Date();
		let year = today.getFullYear();
		let month = ('0' + (today.getMonth() + 1)).slice(-2);
		let day = ('0' + today.getDate()).slice(-2);

		let dateString = year + '년 ' + month + '월 ' + day + '일 ';
		let hours = ('0' + today.getHours()).slice(-2);
		let minutes = ('0' + today.getMinutes()).slice(-2);
		let seconds = ('0' + today.getSeconds()).slice(-2);
		let timeString = hours + '시 ' + minutes + '분 ' + seconds + '초';

		let sendTime = dateString + timeString
		let msg = cmd + ":" + data.empId + ":" + receiver + ":" + dateString
				+ timeString + ":" + data.pstId;

		console.log("msg",msg);

		if (socket.readyState !== 1)
			return;
		socket.send(msg);
	};


	//게시물에 등록한 댓글 수정하기
	jQuery("#modalUpdtBtn").on("click", function() {

	   var pstId = $("#pstId").val();
	   var cmntNo = $("#cmntNo").val();
	   var cmntCn = $("#cmntCn").val();
	   var empId = "${empId}";

	   var data = {
			   "pstId": pstId,
			   "cmntNo": cmntNo,
			   "cmntCn": cmntCn,
			   "empId": empId
			   };

	   //console.log(data);

	   jQuery.ajax({
	      url: "/emp/cmnt/freebbs/freeCmntUpdatePost",
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
	      url: "/emp/cmnt/freebbs/deleteCmntPost",
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
		         location.href="/emp/cmnt/freebbs/freedetail?pstId=${freeBbsVO.pstId}";
	         }else{
	            alert("삭제에 실패하였습니다.");
	         }
	      }
	   });
	});


	//게시글의 댓글에 댓글 작성하기(대댓글)
	// 대댓글 등록 버튼 클릭 이벤트 처리
	jQuery(document).on("click", ".reCmntBtn", function () {
		let self = jQuery(this);
		console.log("this", this)
		let reCmntNo = self.data("recmntno");
		let reCmntCn = self.closest(".vertical-form").find("#reCmntCn").val();
		let empId = "${empId}";
		let pstId = "${empBbsVO.pstId}";
		let cmntGr = self.data("cmntgr");

		let data = {
	        "reCmntNo": reCmntNo,
	        "cmntCn": reCmntCn,
	        "empId": empId,
	        "pstId":pstId,
	        "cmntGr" : cmntGr
	    	};
	   	console.log("대댓글 달 data : " , data);

	   	jQuery.ajax({
	       url: "/emp/cmnt/freebbs/freeReCmntRegister",
	   	   contentType: "application/json;charset=utf-8",
	      data: JSON.stringify(data),
	      type: "post",
	      dataType: "text",
	      beforeSend: function(xhr) {
	         xhr.setRequestHeader("${_csrf.headerName}", "${_csrf.token}");
	      },
	      success: function(result) {
	         $("#reCmntCn").val("");
	         alert("답글이 작성되었습니다.");
	         location.href="/emp/cmnt/freebbs/freedetail?pstId=${empBbsVO.pstId}";
	      },
	      error: function(xhr, status, error) {
	         console.log("에러 발생:", error);
	      }
	   });
	});


});
</script>

