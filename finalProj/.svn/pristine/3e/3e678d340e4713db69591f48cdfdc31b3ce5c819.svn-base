<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>

<style>

.image-preview {
    display: flex;
    flex-wrap: wrap;
    gap: 10px;
}

.image-preview img {
    width: 100px;
    height: auto;
    object-fit: cover;
}

 .show-file-input {
    display: inline-block;
    background-color: #054232;
    color: #fff;
    padding: 10px 15px; *
    border-radius: 4px;
     cursor: pointer;
 }

</style>

<!-- BEGIN: Menu -->
<div class="col-span-12 lg:col-span-3 2xl:col-span-2">
    <div class="intro-y box bg-primary p-5 mt-0 text-lg" style="height: 100%">
    	<nav class="side-nav">
		    <ul>
		        <li>
		            <a href="/mem/cmnt/neighborbbs" class="side-menu">
		                <div class="side-menu__icon"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="home" data-lucide="home" class="lucide lucide-home"><path d="M3 9l9-7 9 7v11a2 2 0 01-2 2H5a2 2 0 01-2-2z"></path></svg></div>
		                <div class="side-menu__title"> 우리동네 </div>
		            </a>
		        </li>
		        <li>
		            <a href="/mem/cmnt/secondhandbbs" class="side-menu">
		                <div class="side-menu__icon"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="box" data-lucide="box" class="lucide lucide-box"><path d="M21 16V8a2 2 0 00-1-1.73l-7-4a2 2 0 00-2 0l-7 4A2 2 0 003 8v8a2 2 0 001 1.73l7 4a2 2 0 002 0l7-4A2 2 0 0021 16z"></path><polyline points="3.27 6.96 12 12.01 20.73 6.96"></polyline><line x1="12" y1="22.08" x2="12" y2="12"></line></svg></div>
		                <div class="side-menu__title"> 중고장터 </div>
		            </a>
		        </li>
		        <li>
		            <a href="/mem/cmnt/clubbbs" class="side-menu">
		                <div class="side-menu__icon"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="box" data-lucide="box" class="lucide lucide-box"><path d="M21 16V8a2 2 0 00-1-1.73l-7-4a2 2 0 00-2 0l-7 4A2 2 0 003 8v8a2 2 0 001 1.73l7 4a2 2 0 002 0l7-4A2 2 0 0021 16z"></path><polyline points="3.27 6.96 12 12.01 20.73 6.96"></polyline><line x1="12" y1="22.08" x2="12" y2="12"></line></svg></div>
		                <div class="side-menu__title"> 소모임 </div>
		            </a>
		        </li>
		        <li>
		            <a href="/mem/cmnt/freebbs" class="side-menu">
		                <div class="side-menu__icon"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="box" data-lucide="box" class="lucide lucide-box"><path d="M21 16V8a2 2 0 00-1-1.73l-7-4a2 2 0 00-2 0l-7 4A2 2 0 003 8v8a2 2 0 001 1.73l7 4a2 2 0 002 0l7-4A2 2 0 0021 16z"></path><polyline points="3.27 6.96 12 12.01 20.73 6.96"></polyline><line x1="12" y1="22.08" x2="12" y2="12"></line></svg></div>
		                <div class="side-menu__title"> 자유게시판 </div>
		            </a>
		        </li>
		        <li>
		            <a href="/mem/cmnt/cvplbbs" class="side-menu">
		                <div class="side-menu__icon"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="box" data-lucide="box" class="lucide lucide-box"><path d="M21 16V8a2 2 0 00-1-1.73l-7-4a2 2 0 00-2 0l-7 4A2 2 0 003 8v8a2 2 0 001 1.73l7 4a2 2 0 002 0l7-4A2 2 0 0021 16z"></path><polyline points="3.27 6.96 12 12.01 20.73 6.96"></polyline><line x1="12" y1="22.08" x2="12" y2="12"></line></svg></div>
		                <div class="side-menu__title"> 민원게시판 </div>
		            </a>
		        </li>
		    </ul>
		</nav>
    </div>
</div>
<!-- END: Menu -->
<!-- BEGIN: Body -->
<div class="col-span-12 lg:col-start-5 lg:col-span-8 2xl:col-start-4 2xl:col-span-9">
    <!-- BEGIN: Display Information -->
<form id="frm" action="/mem/cmnt/secondhandbbs/updatePost?${_csrf.parameterName}=${_csrf.token}"
	method="post" enctype="multipart/form-data">
    <div class="intro-y box lg:mt-15">
	    <sec:authentication property="principal.userVO.memberVO" var="memVO" />
		<input type="hidden" name="frstWrterId" value="${memVO.memId}">
		<input type="hidden" name="lastUpdusrId" value="${memVO.memId}">
		<input type="hidden" name="pstId" value="${updateOne.pstId}">
        <div class="flex items-center p-5 border-b border-slate-200/60 dark:border-darkmode-400">
            <h2 class="font-medium text-base mr-auto">
                중고장터
            </h2>
        </div>
        <div class="p-5">
            <div class="flex flex-col-reverse xl:flex-row flex-col">
                <div class="flex-1 mt-6 xl:mt-0">
                    <div class="grid grid-cols-12 gap-x-5">
                        <div class="col-span-12 2xl:col-span-6">
                            <div class="mt-3">
	                            <div class="flex flex-col sm:flex-row mt-3" style="vertical-align: top;">
					            </div>
                                <label for="update-profile-form-2-tomselected" class="form-label" id="update-profile-form-2-ts-label">카테고리 분류</label><br/>
                                <select name="schandSeCd"  data-search="true" class="tom-select w-full tomselected" tabindex="-1" hidden="hidden">
                                    <option value="${updateOne.schandSeCd}" selected="true">${updateOne.schandSeNm}</option>
                                    <option class="opt" value="SDHD01">여성아우터</option>
                                    <option class="opt" value="SDHD02">여성상의</option>
                                    <option class="opt" value="SDHD03">여성바지</option>
                                    <option class="opt" value="SDHD04">치마</option>
                                    <option class="opt" value="SDHD05">원피스</option>
                                    <option class="opt" value="SDHD06">여성점프수트</option>
                                    <option class="opt" value="SDHD07">여성셋업/세트</option>
                                    <option class="opt" value="SDHD08">여성언더웨어/홈웨어</option>
                                    <option class="opt" value="SDHD09">남성아우터</option>
                                    <option class="opt" value="SDHD10">남성상의</option>
                                    <option class="opt" value="SDHD11">남성바지</option>
                                    <option class="opt" value="SDHD12">남성점프수트</option>
                                    <option class="opt" value="SDHD13">남성셋업/세트</option>
                                    <option class="opt" value="SDHD14">남성언더웨어/홈웨어</option>
                                    <option class="opt" value="SDHD15">신발</option>
                                    <option class="opt" value="SDHD16">모자</option>
                                    <option class="opt" value="SDHD17">가방</option>
                                    <option class="opt" value="SDHD18">지갑</option>
                                    <option class="opt" value="SDHD19">시계</option>
                                    <option class="opt" value="SDHD20">팔찌</option>
                                    <option class="opt" value="SDHD21">목걸이</option>
                                    <option class="opt" value="SDHD22">휴대폰</option>
                                    <option class="opt" value="SDHD23">태블릿</option>
                                    <option class="opt" value="SDHD24">PC/노트북</option>
                                    <option class="opt" value="SDHD25">카메라</option>
                                    <option class="opt" value="SDHD26">생활가전</option>
                                    <option class="opt" value="SDHD27">주방가전</option>
                                    <option class="opt" value="SDHD28">냉장고</option>
                                    <option class="opt" value="SDHD29">에어컨</option>
                                    <option class="opt" value="SDHD30">세탁기/건조기</option>
                                    <option class="opt" value="SDHD31">TV</option>
                                    <option class="opt" value="SDHD32">골프</option>
                                    <option class="opt" value="SDHD33">축구</option>
                                    <option class="opt" value="SDHD34">야구</option>
                                    <option class="opt" value="SDHD35">농구</option>
                                    <option class="opt" value="SDHD36">배드민턴</option>
                                    <option class="opt" value="SDHD37">볼링</option>
                                    <option class="opt" value="SDHD38">탁구</option>
                                    <option class="opt" value="SDHD39">당구</option>
                                    <option class="opt" value="SDHD40">등산</option>
                                    <option class="opt" value="SDHD41">낚시</option>
                                    <option class="opt" value="SDHD42">캠핑</option>
                                    <option class="opt" value="SDHD43">예술작품</option>
                                    <option class="opt" value="SDHD44">골동품</option>
                                    <option class="opt" value="SDHD45">희귀/수집품</option>
                                    <option class="opt" value="SDHD46">악기</option>
                                    <option class="opt" value="SDHD47">CD/DVD/LP</option>
                                    <option class="opt" value="SDHD53">건강식품</option>
                                    <option class="opt" value="SDHD54">농축산물</option>
                                    <option class="opt" value="SDHD55">간식</option>
                                    <option class="opt" value="SDHD56">커피/차</option>
                                    <option class="opt" value="SDHD57">생수/음료</option>
                                    <option class="opt" value="SDHD58">기타식품</option>
                                    <option class="opt" value="SDHD59">여아의류</option>
                                    <option class="opt" value="SDHD60">남아의류</option>
                                </select>
                            </div><br/>
                             <div class="mt-3">
                                <label for="update-profile-form-4" class="form-label">제목</label>
                                <input id="update-profile-form-4" name="pstSj" type="text" class="form-control" value="${updateOne.pstSj}">
                            </div><br/>
                             <div class="mt-3">
                                <label for="update-profile-form-4" class="form-label">가격</label>
                                <input id="update-profile-form-4" name="scndhandPc" type="number" class="form-control" value="${updateOne.scndhandPc}">
                            </div><br /><br />
                            <div class="flex flex-col sm:flex-row mt-2">
                                 <div class="form-check mr-2">
                                     <input id="radio-switch-4" class="form-check-input" type="radio" name="ntslStts" value="판매중" checked>
                                     <label class="form-check-label" for="radio-switch-4">판매중</label>
                                     <input id="radio-switch-5" class="form-check-input" type="radio" name="ntslStts" value="판매완료">
                                     <label class="form-check-label" for="radio-switch-5">판매완료</label>
                                 </div>
                            </div>
                        </div>
						<div class="col-span-12 2xl:col-span-6">
						    <div class="border-2 border-dashed shadow-sm border-slate-200/60 dark:border-darkmode-400 rounded-md p-5">
						        <div class="flex justify-center items-center flex-col" id="imgUploadDiv">
						            <label for="productImage" class="mb-5" style="margin-top: 1px; display: inline-block;">
						                <span class="bg-blue-500 text-white px-4 py-2 rounded-md cursor-pointer" style="background-color: #054232; margin-left: 150px;">이미지 수정</span><br><br>
						                <c:forEach var="atchmnflDetailVO" items="${updateOne.atchmnflDetailList}" varStatus="stat">
						                    <div class="form-check mt-2" style="display: inline-block;">
						                        <input id="checkbox-switch-1 idAtchmnflNo${stat.index}" class="form-check-input clsAtchmnflNo" type="checkbox" name="atchmnflNo" value="${atchmnflDetailVO.atchmnflNo}" />
						                        <label class="form-check-label" for="checkbox-switch-1"></label>
												<div style="display: flex; justify-content: center; align-items: center; flex-direction: column;">
												    <img alt="Midone - HTML Admin Template" style="width: 130px; height: 130px;" id="productImage${atchmnflDetailVO.atchmnflNo}" class="rounded-md" src="/resources/upload${atchmnflDetailVO.flpth}/${atchmnflDetailVO.streFlNm}">
												    <input type="file" id="productImage2_${atchmnflDetailVO.atchmnflNo}" data-no="${atchmnflDetailVO.atchmnflNo}" name="productImage2" class="hidden clsProductImage" style="width: 70px;" multiple />
												</div>
						                    </div>
						                </c:forEach>
						            </label>
						            <div id="previewContainer" class="image-preview"></div>
						        </div>
						    </div>
						</div>
                        <div class="col-span-12">
                            <div class="mt-3">
                                <label for="update-profile-form-5" class="form-label">세부내용</label>
                                <textarea name="editor" rows="3" cols="5">${updateOne.pstCn}</textarea>
                                <input id="pstCn" name="pstCn" type="hidden"/>
                            </div>
                        </div>
                    </div>
                    <button type="submit" id="btnUpdate" class="btn btn-primary w-20 mt-3" style="background-color: #064E3B;">수정하기</button>
		            <a href="/mem/cmnt/secondhandbbs/detail?pstId=${updateOne.pstId}" class="btn btn-primary mr-4">취소</a>
                </div>
            </div>
        </div>
    </div>
    <sec:csrfInput/>
</form>
</div>
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


let formObj = document.querySelector("#frm");

$("#btnUpdate").on("click", function(){
	let content = CKEDITOR.instances.editor.getData();
	console.log(content);
	$("#pstCn").val(content);

	if(confirm("수정하시겠습니까?")){
		alert("게시글이 수정되었습니다.")
		formObj.submit();
	}

});


//체크박스 요소 (체크박스 선택시 파일선택 버튼 활성화) 시작////////////
let checkboxes = document.querySelectorAll('.clsAtchmnflNo');
let fileInputs = document.querySelectorAll('.clsProductImage');

checkboxes.forEach(function (checkbox, index) {
    const fileInput = fileInputs[index];

    checkbox.addEventListener('change', function () {
        if (this.checked) {
            fileInput.classList.remove('hidden');
        } else {
            fileInput.classList.add('hidden');
        }
    });
});
//체크박스 요소 (체크박스 선택시 파일선택 버튼 활성화) 끝 ////////////


//이미지 변경 시작 /////////////////////////////////////////
$("input[name='productImage2']").on("change",function(e){
	console.log("e.target.result에 왔다");
	//data-atchmnfl-no
	let atchmnflNo = $(this).data("no");
	console.log("atchmnflNo : " + atchmnflNo);

	// e.target : <input type="file" name="productImage" class="form-control" />
	let files = e.target.files;

	// 이미지 오브젝트 배열
	let fileArr = Array.prototype.slice.call(files); // 이미지를 잘라서 콜하는 것

	// f : fileArr(이미지 오브젝트 배열)에서 이미지 오브젝트 1개
	fileArr.forEach(function(f){
		// f.type : 이미지 오브젝트의 MIME 타입
		if (!f.type.match("image.*")) {
			alert("이미지 확장자만 가능합니다.");
			return; // 함수 종료
		}

		// if문을 통과 (이미지라면..)
		// 이미지 하나를 배열에 넣음
		sel_file.push(f);

		// 이미지를 읽기
		let reader = new FileReader();
		// e : 리더가 이미지를 읽을 때 그 이벤트를 의미
		reader.onload = function(e){
			// e.target : 이미지 객체

			let img_html = "<img src='" + e.target.result + "' style='width:30%; margin-right:3px;' />";
			$("#productImage"+atchmnflNo).attr("src",e.target.result);
		}
		// 다음 이미지 파일(f)를 위해 reader를 초기화
		reader.readAsDataURL(f);

	}); // end forEach

	gogo(atchmnflNo);
});


function gogo(atchmnflNo){
	console.log("atchmnflNo : " + atchmnflNo);
	//ajax파일업로드
	let formData = new FormData();
	let inputFile = $("#productImage2_"+atchmnflNo);
	let files = inputFile[0].files;
	console.log("files : " + files);
	for(let i=0;i<files.length;i++){
		formData.append("uploadFile",files[i]);
	}
	let strCsrf = $("input[name='_csrf']").val();
	console.log("strCsrf : " + strCsrf);
	formData.append("_csrf",strCsrf);
	formData.append("atchmnflNo",atchmnflNo);

	//아작났어유ㅠㅠ 피씨다타써
	jQuery.ajax({
		url:"/mem/cmnt/secondhandbbs/updateImages",
		processData:false,
		contentType:false,
		data:formData,
		type:"post",
		beforeSend : function(xhr) {   // 데이터 전송 전  헤더에 csrf값 설정
           xhr.setRequestHeader("${_csrf.headerName}", "${_csrf.token}");
        },
		success:function(result){
			console.log("result : " + result);
			console.log("uploaded");
		}
	});
}
//이미지 변경 끝 /////////////////////////////////////////

//이미지 미리보기 시작 //////////////////

//이미지 파일 객체를 담을 배열
let sel_file = [];

//<input type="file" name="productImage" class="form-control" />
$("input[name='productImage']").on("change",handleImgFileSelect);

//e : onchange 이벤트 객체
function handleImgFileSelect(e) {
	console.log("handleImgFileSelect에 왔다");
	// e.target : <input type="file" name="productImage" class="form-control" />
	let files = e.target.files;

	// 이미지 오브젝트 배열
	let fileArr = Array.prototype.slice.call(files); // 이미지를 잘라서 콜하는 것

	// f : fileArr(이미지 오브젝트 배열)에서 이미지 오브젝트 1개
	fileArr.forEach(function(f){
		// f.type : 이미지 오브젝트의 MIME 타입
		if (!f.type.match("image.*")) {
			alert("이미지 확장자만 가능합니다.");
			return; // 함수 종료
		}

		// if문을 통과 (이미지라면..)
		// 이미지 하나를 배열에 넣음
		sel_file.push(f);

		// 이미지를 읽어보자
		let reader = new FileReader();
		// e : 리더가 이미지를 읽을 때 그 이벤트를 의미
		reader.onload = function(e){
			// e.target : 이미지 객체

			let img_html = "<img src='" + e.target.result + "' style='width:30%; margin-right:3px;' />";
			$("#previewContainer").append(img_html);
		}
		// 다음 이미지 파일(f)를 위해 reader를 초기화
		reader.readAsDataURL(f);

	}); // end forEach
}

//이미지 미리보기 끝    //////////////////


</script>