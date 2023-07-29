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

<div class="col-span-12 lg:col-start-5 lg:col-span-8 2xl:col-start-4 2xl:col-span-9">
<!-- 권한 설정-->
<form id="frm" action="/mem/cmnt/secondhandbbs/registerPost?${_csrf.parameterName}=${_csrf.token}" method="post" enctype="multipart/form-data">
	<div class="intro-y box lg:mt-15">
	<sec:authentication property="principal.userVO.memberVO" var="memVO" />
	<input type="hidden" name="frstWrterId" value="${memVO.memId}">
	<input type="hidden" name="lastUpdusrId" value="${memVO.memId}">
        <div class="p-5">
            <div class="flex flex-col-reverse xl:flex-row flex-col">
                <div class="flex-1 mt-2 xl:mt-0">
                    <div class="grid grid-cols-12 gap-x-5">
                        <div class="col-span-12 2xl:col-span-6">
                            <div class="mt-3">
                                <label for="update-profile-form-2-tomselected" class="form-label text-xl font-semibold" id="update-profile-form-2-ts-label">카테고리 분류</label><a id="autoBtn" class="btn btn-secondary p-1 font-bold h-6 ml-2" style="width: 65px;"> 자동완성</a><br/>
                                <select name="schandSeCd"  data-search="true" class="tom-select w-full tomselected" tabindex="-1" hidden="hidden"><option value="1" selected="true">선택해주세요</option>
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
                                <label for="update-profile-form-4" class="form-label text-xl font-semibold">제목</label>
                                <input id="update-profile-form-4" name="pstSj" type="text" class="form-control" placeholder="제목을 입력해주세요">
                            </div><br/>
                             <div class="mt-3">
                                <label for="update-profile-form-4" class="form-label text-xl font-semibold">가격</label>
                                <input id="update-profile-form-4" name="scndhandPc" type="number" class="form-control" placeholder="희망 가격을 입력해주세요">
                            </div>
                        </div>
						<div class="col-span-12 2xl:col-span-6">
						    <div class="border-2 border-dashed shadow-sm border-slate-200/60 dark:border-darkmode-400 rounded-md p-5" style="margin-top: 20px;">
						        <div class="flex justify-center items-center flex-col" id="imgUploadDiv">
						            <label for="productImage" class="mb-5">
						                <span class="bg-blue-500 text-white px-4 py-2 rounded-md cursor-pointer" style="background-color: #054232">이미지 업로드</span>
						                <input type="file" id="productImage" name="productImage" class="hidden" multiple>
						            </label>
						            <div id="previewContainer" class="image-preview"></div>
						        </div>
						    </div>
						</div>
                        <div class="col-span-12">
                            <div class="mt-3">
                                <label for="update-profile-form-5" class="form-label text-xl font-semibold">세부 내용</label>
                                <textarea name="editor" rows="3" cols="5"></textarea>
                                <input id="pstCn" name="pstCn" type="hidden"/>
                            </div>
                        </div>
                    </div>
                    <button type="button" id="btnReg" class="btn btn-primary w-20 mt-3" style="background-color: #064E3B;">등록하기</button>
                    <a href="/mem/cmnt/secondhandbbs" class="btn btn-primary mr-4">취소</a>
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

<!-- 자동완성 기능 -->
<script>
document.getElementById("autoBtn").addEventListener("click", function() {
    // 제목과 가격 입력 요소에 내용을 채웁니다.
    document.getElementById("update-profile-form-4").value = "여성 상의 팔아요";
    document.getElementsByName("scndhandPc")[0].value = "30000"; // 여러 개의 input 중 첫 번째 요소에 값을 입력합니다.

    // CKEDITOR 인스턴스에서 세부 내용을 설정합니다.
    var editorInstance = CKEDITOR.instances["editor"];
    if (editorInstance) {
        editorInstance.setData("산지 얼마안된 새옷같은 여성 상의 3가지 팔아요.");
    } else {
        console.error("CKEDITOR 인스턴스를 찾을 수 없습니다.");
    }
});
</script>


<script type="text/javascript">

let formObj = document.querySelector("#frm");

$("#btnReg").on("click", function(){
	let content = CKEDITOR.instances.editor.getData();
	$("#pstCn").val(content);

	if(confirm("등록하시겠습니까?")){
		formObj.submit();
	}
});

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

		// 이미지를 읽기
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