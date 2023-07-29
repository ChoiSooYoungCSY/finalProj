<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<script type="text/javascript" src="/resources/js/jquery-3.6.4.min.js"></script>
<style>
.content {
	margin-left: -35px; /* 원하는 만큼의 좌측 여백을 설정하세요 */
	margin-top: -1px;
}

.link-item {
	/* 	 padding: 20px; /* 원하는 공백 크기로 조정 */

}

.accordion-item {
	max-width: 150px; /* 원하는 크기로 조정 */
	margin-left: 0; /* 좌측 정렬 */
}


.sidebar {
    position: fixed;
    margin-top: 90px;
    top: 50%;
    right: 70px;
    transform: translateY(-50%);
    width: 200px;
    background-color: #f1f1f1;
    padding: 20px;
    border-radius: 20px;
}

/*   호버 시 배경색과 텍스트 색상 변경 */
 .accordion-button:hover {
   background-color: lightgray;
   color: #000000;
 }

 .link-item:hover {
   font-weight: bold; /* 호버 시 글자 굵게
   cursor: pointer; /* 호버 시 커서 모양 변경
   color: #000000;
   background-color: #f1f1f1;
 }

.pagination-container {
    margin-right: 100px;
}

</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<!-- BEGIN: Menu -->
<div class="col-span-12 lg:col-span-3 2xl:col-span-2">
	<div class="intro-y box bg-primary p-5 mt-0 text-lg" style="height: 100%;">
		<nav class="side-nav">
			<ul>
				<li>
					<a href="/mem/cmnt/neighborbbs" class="side-menu">
						<div class="side-menu__icon">
							<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="home" data-lucide="home" class="lucide lucide-home"><path d="M3 9l9-7 9 7v11a2 2 0 01-2 2H5a2 2 0 01-2-2z"></path></svg>
						</div>
						<div class="side-menu__title">우리동네</div>
					</a>
				</li>
				<li>
					<a href="/mem/cmnt/secondhandbbs" class="side-menu">
						<div class="side-menu__icon">
							<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="box" data-lucide="box" class="lucide lucide-box"><path d="M21 16V8a2 2 0 00-1-1.73l-7-4a2 2 0 00-2 0l-7 4A2 2 0 003 8v8a2 2 0 001 1.73l7 4a2 2 0 002 0l7-4A2 2 0 0021 16z"></path><polyline points="3.27 6.96 12 12.01 20.73 6.96"></polyline><line x1="12" y1="22.08" x2="12" y2="12"></line></svg>
						</div>
						<div class="side-menu__title">중고장터</div>
					</a>
				</li>
				<li>
					<a href="/mem/cmnt/clubbbs" class="side-menu">
						<div class="side-menu__icon">
							<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="box" data-lucide="box" class="lucide lucide-box"><path d="M21 16V8a2 2 0 00-1-1.73l-7-4a2 2 0 00-2 0l-7 4A2 2 0 003 8v8a2 2 0 001 1.73l7 4a2 2 0 002 0l7-4A2 2 0 0021 16z"></path><polyline points="3.27 6.96 12 12.01 20.73 6.96"></polyline><line x1="12" y1="22.08" x2="12" y2="12"></line></svg></div>
						<div class="side-menu__title">소모임</div>
					</a>
				</li>
				<li>
					<a href="/mem/cmnt/freebbs" class="side-menu">
						<div class="side-menu__icon">
							<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="box" data-lucide="box" class="lucide lucide-box"><path d="M21 16V8a2 2 0 00-1-1.73l-7-4a2 2 0 00-2 0l-7 4A2 2 0 003 8v8a2 2 0 001 1.73l7 4a2 2 0 002 0l7-4A2 2 0 0021 16z"></path><polyline points="3.27 6.96 12 12.01 20.73 6.96"></polyline><line x1="12" y1="22.08" x2="12" y2="12"></line></svg>
						</div>
						<div class="side-menu__title">자유게시판</div>
					</a>
				</li>
				<li>
					<a href="/mem/cmnt/cvplbbs" class="side-menu">
						<div class="side-menu__icon">
							<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="box" data-lucide="box" class="lucide lucide-box"><path d="M21 16V8a2 2 0 00-1-1.73l-7-4a2 2 0 00-2 0l-7 4A2 2 0 003 8v8a2 2 0 001 1.73l7 4a2 2 0 002 0l7-4A2 2 0 0021 16z"></path><polyline points="3.27 6.96 12 12.01 20.73 6.96"></polyline><line x1="12" y1="22.08" x2="12" y2="12"></line></svg>
						</div>
						<div class="side-menu__title">민원게시판</div>
					</a>
				</li>
			</ul>
		</nav>
	</div>
</div>
<!-- END: Menu -->
<!-- BEGIN: Body -->
<div class="bdy col-span-12 lg:caol-span-9 2xl:col-span-10">
    <form name="frm" id="frm" action="/mem/cmnt/secondhandbbs" method="get">
	<div class="flex w-full" style="margin-left: 10px;">
		<div style="margin-right: auto; margin-top: 10px;">
		  <h5 class="text-lg font-medium leading-none">커뮤니티 &gt; 중고장터</h5>
		</div>
		<div style="display: flex; align-items: center; margin-right: 45px;">
			<select name="cond" id="cond" class="w-20 form-select box mt-0 mr-2 font-semibold" style="width: 120px;font-size: 16px;">
				<option value="">전체</option>
				<option value="pstSj" <c:if test="${param.cond == 'pstSj'}">selected</c:if>>게시글 제목</option>
				<option value="pstCn" <c:if test="${param.cond == 'pstCn'}">selected</c:if>>게시글 내용</option>
				<option value="frstWrterId" <c:if test="${param.cond == 'frstWrterId'}">selected</c:if>>게시글 작성자</option>
			</select>
			<div class="w-56 relative text-slate-500 mr-2">
				<input type="text" name="keyword" class="form-control w-56 box pr-10" placeholder="검색..">
				<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="search" class="lucide lucide-search w-4 h-4 absolute my-auto inset-y-0 mr-3 right-0" data-lucide="search"><circle cx="11" cy="11" r="8"></circle><line x1="21" y1="21" x2="16.65" y2="16.65"></line></svg>
			</div>
		  <button id="search" class="btn btn-primary shadow-md" style="letter-spacing: 1px;font-size: 16px;">검색</button>
		</div>
	</div>
	<div class="content">
		<div class="grid grid-cols-12 gap-6 mt-3" style="margin-left: 7px;">
			<!-- ACCORDION 중고장터 카테고리 분류 시작 -->
			<div class="intro-y col-span-12 items-center mt-2" style="position: relative; margin-right: 7px;">
				<div id="faq-accordion-2" class="accordion accordion-boxed" style="width: 94px; float: left;">
					<div class="box accordion-item">
						<div id="faq-accordion-content-5" class="accordion-header flex flex-col items-center">
							<button class="accordion-button collapsed" type="button" data-tw-toggle="collapse" data-tw-target="#faq-accordion-collapse-5" aria-expanded="true" aria-controls="faq-accordion-collapse-5">
								<div class="text-center">
									<img src="/resources/images/secondhand/secondhandcategory/catewoman.png" alt="여성의류" class="mb-2 mx-auto" style="width: 50px; height: 50px;">
								</div>
								<div class="text-center">여성의류</div>
							</button>
						</div>
						<div id="faq-accordion-collapse-5" class="accordion-collapse collapse show" aria-labelledby="faq-accordion-content-5" data-tw-parent="#faq-accordion-2" style="display: none">
							<div class="accordion-body text-slate-600 dark:text-slate-500 leading-relaxed">
								<ul class="text-center">
									<li style="font-size: 14px;"><a href="/mem/cmnt/secondhandbbs?keyword=SDHD01"  style="font-size: 14px;" class="link-item">아우터</a></li>
									<li style="font-size: 14px;"><a href="/mem/cmnt/secondhandbbs?keyword=SDHD02"  style="font-size: 14px;" class="link-item">상의</a></li>
									<li style="font-size: 14px;"><a href="/mem/cmnt/secondhandbbs?keyword=SDHD03"  style="font-size: 14px;" class="link-item">바지</a></li>
									<li style="font-size: 14px;"><a href="/mem/cmnt/secondhandbbs?keyword=SDHD04"  style="font-size: 14px;" class="link-item">치마</a></li>
									<li style="font-size: 14px;"><a href="/mem/cmnt/secondhandbbs?keyword=SDHD05"  style="font-size: 14px;" class="link-item">원피스</a></li>
									<li style="font-size: 14px;"><a href="/mem/cmnt/secondhandbbs?keyword=SDHD06"  style="font-size: 14px;" class="link-item">점프수트</a></li>
									<li style="font-size: 14px;"><a href="/mem/cmnt/secondhandbbs?keyword=SDHD07"  style="font-size: 14px;" class="link-item">셋업/세트</a></li>
									<li style="font-size: 14px;"><a href="/mem/cmnt/secondhandbbs?keyword=SDHD08"  style="font-size: 14px;" class="link-item">언더웨어</a></li>
									<li style="font-size: 14px;"><a href="/mem/cmnt/secondhandbbs?keyword=SDHD08"  style="font-size: 14px;" class="link-item">홈훼어</a></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
				<div id="faq-accordion-2" class="accordion accordion-boxed" style="width: 94px; float: left;">
					<div class="box accordion-item">
						<div id="faq-accordion-content-5" class="accordion-header flex flex-col items-center">
							<button class="accordion-button collapsed" type="button" data-tw-toggle="collapse" data-tw-target="#faq-accordion-collapse-5" aria-expanded="true" aria-controls="faq-accordion-collapse-5">
								<div class="text-center">
									<img src="/resources/images/secondhand/secondhandcategory/cateman.png" alt="남성의류" class="mb-2 mx-auto" style="width: 50px; height: 50px;">
								</div>
								<div class="text-center">남성의류</div>
							</button>
						</div>
						<div id="faq-accordion-collapse-5" class="accordion-collapse collapse show" aria-labelledby="faq-accordion-content-5" data-tw-parent="#faq-accordion-2" style="display: none">
							<div
								class="accordion-body text-slate-600 dark:text-slate-500 leading-relaxed">
								<ul class="text-center">
									<li style="font-size: 14px;"><a href="/mem/cmnt/secondhandbbs?keyword=SDHD09"  style="font-size: 14px;" class="link-item">아우터</a></li>
									<li style="font-size: 14px;"><a href="/mem/cmnt/secondhandbbs?keyword=SDHD10"  style="font-size: 14px;" class="link-item">상의</a></li>
									<li style="font-size: 14px;"><a href="/mem/cmnt/secondhandbbs?keyword=SDHD11"  style="font-size: 14px;" class="link-item">바지</a></li>
									<li style="font-size: 14px;"><a href="/mem/cmnt/secondhandbbs?keyword=SDHD12"  style="font-size: 14px;" class="link-item">점프수트</a></li>
									<li style="font-size: 14px;"><a href="/mem/cmnt/secondhandbbs?keyword=SDHD13"  style="font-size: 14px;" class="link-item">셋업/세트</a></li>
									<li style="font-size: 14px;"><a href="/mem/cmnt/secondhandbbs?keyword=SDHD14"  style="font-size: 14px;" class="link-item">언더웨어</a></li>
									<li style="font-size: 14px;"><a href="/mem/cmnt/secondhandbbs?keyword=SDHD14"  style="font-size: 14px;" class="link-item">홈훼어</a></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
				<div id="faq-accordion-2" class="accordion accordion-boxed" style="width: 94px; float: left;">
					<div class="box accordion-item">
						<div id="faq-accordion-content-5" class="accordion-header flex flex-col items-center">
							<button class="accordion-button collapsed" type="button" data-tw-toggle="collapse" data-tw-target="#faq-accordion-collapse-5" aria-expanded="true" aria-controls="faq-accordion-collapse-5">
								<div class="text-center">
									<img src="/resources/images/secondhand/secondhandcategory/catestuff.png" alt="패션잡화" class="mb-2 mx-auto" style="width: 50px; height: 50px;">
								</div>
								<div class="text-center">패션잡화</div>
							</button>
						</div>
						<div id="faq-accordion-collapse-5" class="accordion-collapse collapse show" aria-labelledby="faq-accordion-content-5" data-tw-parent="#faq-accordion-2" style="display: none">
							<div class="accordion-body text-slate-600 dark:text-slate-500 leading-relaxed">
								<ul class="text-center">
									<li style="font-size: 14px;"><a href="/mem/cmnt/secondhandbbs?keyword=SDHD15"  style="font-size: 14px;" class="link-item">신발</a></li>
									<li style="font-size: 14px;"><a href="/mem/cmnt/secondhandbbs?keyword=SDHD16"  style="font-size: 14px;" class="link-item">모자</a></li>
									<li style="font-size: 14px;"><a href="/mem/cmnt/secondhandbbs?keyword=SDHD17"  style="font-size: 14px;" class="link-item">가방</a></li>
									<li style="font-size: 14px;"><a href="/mem/cmnt/secondhandbbs?keyword=SDHD18"  style="font-size: 14px;" class="link-item">지갑</a></li>
									<li style="font-size: 14px;"><a href="/mem/cmnt/secondhandbbs?keyword=SDHD19"  style="font-size: 14px;" class="link-item">시계</a></li>
									<li style="font-size: 14px;"><a href="/mem/cmnt/secondhandbbs?keyword=SDHD20"  style="font-size: 14px;" class="link-item">팔찌</a></li>
									<li style="font-size: 14px;"><a href="/mem/cmnt/secondhandbbs?keyword=SDHD21"  style="font-size: 14px;" class="link-item">목걸이</a></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
				<div id="faq-accordion-2" class="accordion accordion-boxed" style="width: 94px; float: left;">
					<div class="box accordion-item">
						<div id="faq-accordion-content-5" class="accordion-header flex flex-col items-center">
							<button class="accordion-button collapsed" type="button" data-tw-toggle="collapse" data-tw-target="#faq-accordion-collapse-5" aria-expanded="true" aria-controls="faq-accordion-collapse-5">
								<div class="text-center">
									<img src="/resources/images/secondhand/secondhandcategory/catedigital.png" alt="가전제품" class="mb-2 mx-auto" style="width: 50px; height: 50px;">
								</div>
								<div class="text-center">디지털</div>
							</button>
						</div>
						<div id="faq-accordion-collapse-5" class="accordion-collapse collapse show" aria-labelledby="faq-accordion-content-5" data-tw-parent="#faq-accordion-2" style="display: none">
							<div class="accordion-body text-slate-600 dark:text-slate-500 leading-relaxed">
								<ul class="text-center">
									<li style="font-size: 14px;"><a href="/mem/cmnt/secondhandbbs?keyword=SDHD22"  style="font-size: 14px;" class="link-item">휴대폰</a></li>
									<li style="font-size: 14px;"><a href="/mem/cmnt/secondhandbbs?keyword=SDHD23"  style="font-size: 14px;" class="link-item">태블릿</a></li>
									<li style="font-size: 14px;"><a href="/mem/cmnt/secondhandbbs?keyword=SDHD24"  style="font-size: 14px;" class="link-item">PC/노트북</a></li>
									<li style="font-size: 14px;"><a href="/mem/cmnt/secondhandbbs?keyword=SDHD25"  style="font-size: 14px;" class="link-item">카메라</a></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
				<div id="faq-accordion-2" class="accordion accordion-boxed" style="width: 94px; float: left;">
					<div class="box accordion-item">
						<div id="faq-accordion-content-5" class="accordion-header flex flex-col items-center">
							<button class="accordion-button collapsed" type="button" data-tw-toggle="collapse" data-tw-target="#faq-accordion-collapse-5" aria-expanded="true" aria-controls="faq-accordion-collapse-5">
								<div class="text-center">
									<img src="/resources/images/secondhand/secondhandcategory/catehome.png" alt="가전제품" class="mb-2 mx-auto" style="width: 50px; height: 50px;">
								</div>
								<div class="text-center">가전제품</div>
							</button>
						</div>
						<div id="faq-accordion-collapse-5" class="accordion-collapse collapse show" aria-labelledby="faq-accordion-content-5" data-tw-parent="#faq-accordion-2" style="display: none">
							<div class="accordion-body text-slate-600 dark:text-slate-500 leading-relaxed">
								<ul class="text-center">
									<li style="font-size: 14px;"><a href="/mem/cmnt/secondhandbbs?keyword=SDHD26"  style="font-size: 14px;" class="link-item">생활가전</a></li>
									<li style="font-size: 14px;"><a href="/mem/cmnt/secondhandbbs?keyword=SDHD27"  style="font-size: 14px;" class="link-item">주방가전</a></li>
									<li style="font-size: 14px;"><a href="/mem/cmnt/secondhandbbs?keyword=SDHD28"  style="font-size: 14px;" class="link-item">냉장고</a></li>
									<li style="font-size: 14px;"><a href="/mem/cmnt/secondhandbbs?keyword=SDHD29"  style="font-size: 14px;" class="link-item">에어컨</a></li>
									<li style="font-size: 14px;"><a href="/mem/cmnt/secondhandbbs?keyword=SDHD30"  style="font-size: 14px;" class="link-item">세탁기</a></li>
									<li style="font-size: 14px;"><a href="/mem/cmnt/secondhandbbs?keyword=SDHD30"  style="font-size: 14px;" class="link-item">건조기</a></li>
									<li style="font-size: 14px;"><a href="/mem/cmnt/secondhandbbs?keyword=SDHD31"  style="font-size: 14px;" class="link-item">TV</a></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
				<div id="faq-accordion-2" class="accordion accordion-boxed" style="width: 94px; float: left;">
					<div class="box accordion-item">
						<div id="faq-accordion-content-5" class="accordion-header flex flex-col items-center">
							<button class="accordion-button collapsed" type="button" data-tw-toggle="collapse" data-tw-target="#faq-accordion-collapse-5" aria-expanded="true" aria-controls="faq-accordion-collapse-5">
								<div class="text-center">
									<img src="/resources/images/secondhand/secondhandcategory/catesport.png" alt="스포츠" class="mb-2 mx-auto" style="width: 50px; height: 50px;">
								</div>
								<div class="text-center">스포츠</div>
							</button>
						</div>
						<div id="faq-accordion-collapse-5" class="accordion-collapse collapse show" aria-labelledby="faq-accordion-content-5" data-tw-parent="#faq-accordion-2" style="display: none">
							<div class="accordion-body text-slate-600 dark:text-slate-500 leading-relaxed">
								<ul class="text-center">
									<li style="font-size: 14px;"><a href="/mem/cmnt/secondhandbbs?keyword=SDHD32"  style="font-size: 14px;" class="link-item">골프</a></li>
									<li style="font-size: 14px;"><a href="/mem/cmnt/secondhandbbs?keyword=SDHD33"  style="font-size: 14px;" class="link-item">축구</a></li>
									<li style="font-size: 14px;"><a href="/mem/cmnt/secondhandbbs?keyword=SDHD34"  style="font-size: 14px;" class="link-item">야구</a></li>
									<li style="font-size: 14px;"><a href="/mem/cmnt/secondhandbbs?keyword=SDHD35"  style="font-size: 14px;" class="link-item">농구</a></li>
									<li style="font-size: 14px;"><a href="/mem/cmnt/secondhandbbs?keyword=SDHD36"  style="font-size: 14px;" class="link-item">배드민턴</a></li>
									<li style="font-size: 14px;"><a href="/mem/cmnt/secondhandbbs?keyword=SDHD37"  style="font-size: 14px;" class="link-item">볼링</a></li>
									<li style="font-size: 14px;"><a href="/mem/cmnt/secondhandbbs?keyword=SDHD38"  style="font-size: 14px;" class="link-item">탁구</a></li>
									<li style="font-size: 14px;"><a href="/mem/cmnt/secondhandbbs?keyword=SDHD39"  style="font-size: 14px;" class="link-item">당구</a></li>
									<li style="font-size: 14px;"><a href="/mem/cmnt/secondhandbbs?keyword=SDHD41"  style="font-size: 14px;" class="link-item">캠핑</a></li>
									<li style="font-size: 14px;"><a href="/mem/cmnt/secondhandbbs?keyword=SDHD42"  style="font-size: 14px;" class="link-item">낚시</a></li>
									<li style="font-size: 14px;"><a href="/mem/cmnt/secondhandbbs?keyword=SDHD40"  style="font-size: 14px;" class="link-item">등산</a></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
				<div id="faq-accordion-2" class="accordion accordion-boxed" style="width: 94px; float: left;">
					<div class="box accordion-item">
						<div id="faq-accordion-content-5" class="accordion-header flex flex-col items-center">
							<button class="accordion-button collapsed" type="button" data-tw-toggle="collapse" data-tw-target="#faq-accordion-collapse-5" aria-expanded="true" aria-controls="faq-accordion-collapse-5">
								<div class="text-center">
									<img src="/resources/images/secondhand/secondhandcategory/cateart.png" alt="예술" class="mb-2 mx-auto" style="width: 50px; height: 50px;">
								</div>
								<div class="text-center">예술</div>
							</button>
						</div>
						<div id="faq-accordion-collapse-5" class="accordion-collapse collapse show" aria-labelledby="faq-accordion-content-5" data-tw-parent="#faq-accordion-2" style="display: none">
							<div class="accordion-body text-slate-600 dark:text-slate-500 leading-relaxed">
								<ul class="text-center">
									<li style="font-size: 14px;"><a href="/mem/cmnt/secondhandbbs?keyword=SDHD43"  style="font-size: 14px;" class="link-item">예술작품</a></li>
									<li style="font-size: 14px;"><a href="/mem/cmnt/secondhandbbs?keyword=SDHD44"  style="font-size: 14px;" class="link-item">골동품</a></li>
									<li style="font-size: 14px;"><a href="/mem/cmnt/secondhandbbs?keyword=SDHD45"  style="font-size: 14px;" class="link-item">희귀품</a></li>
									<li style="font-size: 14px;"><a href="/mem/cmnt/secondhandbbs?keyword=SDHD45"  style="font-size: 14px;" class="link-item">수집품</a></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
				<div id="faq-accordion-2" class="accordion accordion-boxed" style="width: 94px; float: left;">
					<div class="box accordion-item">
						<div id="faq-accordion-content-5" class="accordion-header flex flex-col items-center">
							<button class="accordion-button collapsed" type="button" data-tw-toggle="collapse" data-tw-target="#faq-accordion-collapse-5" aria-expanded="true" aria-controls="faq-accordion-collapse-5">
								<div class="text-center">
									<img src="/resources/images/secondhand/secondhandcategory/catemusic.png" alt="음악" class="mb-2 mx-auto" style="width: 50px; height: 50px;">
								</div>
								<div class="text-center">음악</div>
							</button>
						</div>
						<div id="faq-accordion-collapse-5" class="accordion-collapse collapse show" aria-labelledby="faq-accordion-content-5" data-tw-parent="#faq-accordion-2" style="display: none">
							<div class="accordion-body text-slate-600 dark:text-slate-500 leading-relaxed">
								<ul class="text-center">
									<li style="font-size: 14px;"><a href="/mem/cmnt/secondhandbbs?keyword=SDHD46"  style="font-size: 14px;" class="link-item">악기</a></li>
									<li style="font-size: 14px;"><a href="/mem/cmnt/secondhandbbs?keyword=SDHD47"  style="font-size: 14px;" class="link-item">CD/DVD/LP</a></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
				<div id="faq-accordion-2" class="accordion accordion-boxed" style="width: 94px; float: left;">
					<div class="box accordion-item">
						<div id="faq-accordion-content-5" class="accordion-header flex flex-col items-center">
							<button class="accordion-button collapsed" type="button" data-tw-toggle="collapse" data-tw-target="#faq-accordion-collapse-5" aria-expanded="true" aria-controls="faq-accordion-collapse-5">
								<div class="text-center">
									<img src="/resources/images/secondhand/secondhandcategory/catefood.png" alt="식품" class="mb-2 mx-auto" style="width: 50px; height: 50px;">
								</div>
								<div class="text-center">식품</div>
							</button>
						</div>
						<div id="faq-accordion-collapse-5" class="accordion-collapse collapse show" aria-labelledby="faq-accordion-content-5" data-tw-parent="#faq-accordion-2" style="display: none">
							<div class="accordion-body text-slate-600 dark:text-slate-500 leading-relaxed">
								<ul class="text-center">
									<li style="font-size: 14px;"><a href="/mem/cmnt/secondhandbbs?keyword=SDHD53"  style="font-size: 14px;" class="link-item">건강식품</a></li>
									<li style="font-size: 14px;"><a href="/mem/cmnt/secondhandbbs?keyword=SDHD54"  style="font-size: 14px;" class="link-item">농수축산물</a></li>
									<li style="font-size: 14px;"><a href="/mem/cmnt/secondhandbbs?keyword=SDHD55"  style="font-size: 14px;" class="link-item">간식</a></li>
									<li style="font-size: 14px;"><a href="/mem/cmnt/secondhandbbs?keyword=SDHD55"  style="font-size: 14px;" class="link-item">커피/차</a></li>
									<li style="font-size: 14px;"><a href="/mem/cmnt/secondhandbbs?keyword=SDHD57"  style="font-size: 14px;" class="link-item">생수/음료</a></li>
									<li style="font-size: 14px;"><a href="/mem/cmnt/secondhandbbs?keyword=sDHD58"  style="font-size: 14px;" class="link-item">기타식품</a></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
				<div id="faq-accordion-2" class="accordion accordion-boxed" style="width: 94px; float: left;">
					<div class="box accordion-item">
						<div id="faq-accordion-content-5" class="accordion-header flex flex-col items-center">
							<button class="accordion-button collapsed" type="button" data-tw-toggle="collapse" data-tw-target="#faq-accordion-collapse-5" aria-expanded="true" aria-controls="faq-accordion-collapse-5">
								<div class="text-center">
									<img src="/resources/images/secondhand/secondhandcategory/cateinfant.png" alt="영유아" class="mb-2 mx-auto" style="width: 50px; height: 50px;">
								</div>
								<div class="text-center">영유아</div>
							</button>
						</div>
						<div id="faq-accordion-collapse-5" class="accordion-collapse collapse show" aria-labelledby="faq-accordion-content-5" data-tw-parent="#faq-accordion-2" style="display: none">
							<div class="accordion-body text-slate-600 dark:text-slate-500 leading-relaxed">
								<ul class="text-center">
									<li style="font-size: 14px;"><a href="/mem/cmnt/secondhandbbs?keyword=SDHD59"  style="font-size: 14px;" class="link-item">여아의류</a></li>
									<li style="font-size: 14px;"><a href="/mem/cmnt/secondhandbbs?keyword=SDHD60"  style="font-size: 14px;" class="link-item">남아의류</a></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- ACCORDION 중고장터 카테고리 분류 끝 -->
		</div>
		<!-- 중고장터 카테고리 판매게시글 추천 시작 -->
		<div class="sidebar" >
			<div class="map-intro-y block sm:flex h-10"
					style="justify-content: center;">
					<i class="bi bi-info-circle tooltip" title="관심사와 연령, 성별, 중고 물품 카테고리 기반으로한 중고장터 판매 게시글 추천입니다."></i>
					<h5 class="text-lg font-medium leading-none mt-0 ml-1">AI추천 품목</h5>
				</div>
			<c:forEach var="recomVO" items="${scndhdBbsVOList}" varStatus="status">
				<ul class="text-center border-bottom">
					<a href="/mem/cmnt/secondhandbbs/detail?pstId=${recomVO.pstId}">
						<c:forEach var="AtchmnflDetailVO" items="${recomVO.atchmnflDetailList}" varStatus="status">
							<img src="/resources/upload${AtchmnflDetailVO.flpth}/${AtchmnflDetailVO.streFlNm}" alt="추천이미지"><br />
						</c:forEach>
						<p>${recomVO.pstSj}<br /><fmt:formatNumber value='${recomVO.scndhandPc}' type="number"/>원</p><br />
					</a>
				</ul>
			</c:forEach>
		</div>
		<!-- 중고장터 카테고리 판매게시글 추천 끝 -->
<!-- 		<div class="intro-y col-span-12 items-center mt-0" style="position: relative;"> -->
		<!--상품 목록 시작 -->
		<div class="grid grid-cols-12 gap-5 mt-5 pt-5 border-t">
			<c:forEach var="scndhdBbsVO" items="${data.content}" varStatus="status" >
				<c:if test="${status.index < 12}">
					<a href="/mem/cmnt/secondhandbbs/detail?pstId=${scndhdBbsVO.pstId}" class="intro-y block col-span-12 sm:col-span-4 2xl:col-span-3">
						<div class="box rounded-md p-3 relative zoom-in">
							<c:choose>
								<c:when test="${scndhdBbsVO.ntslStts == '판매중'}">
									<span class="absolute top-0 bg-pending/80 text-white text-xs m-5 px-2 py-1 rounded z-10">${scndhdBbsVO.ntslStts}</span>
								</c:when>
								<c:when test="${scndhdBbsVO.ntslStts == '판매완료'}">
									<span class="absolute top-0 bg-green-700 bg-opacity-80 text-white text-xs m-5 px-2 py-1 rounded z-10">${scndhdBbsVO.ntslStts}</span>
								</c:when>
							</c:choose>
							<div class="flex-none relative block before:block before:w-full before:pt-[100%]">
								<div class="absolute top-0 left-0 w-full h-full image-fit">
									<img alt="Midone - HTML Admin Template" class="rounded-md" src="/resources/upload${scndhdBbsVO.atchmnflDetailList[0].flpth}/${scndhdBbsVO.atchmnflDetailList[0].streFlNm}">
								</div>
							</div>
							<div class="block font-medium text-center truncate mt-3">${scndhdBbsVO.pstSj}</div>
							<p class="text-center text-sm font-medium"><fmt:formatNumber value='${scndhdBbsVO.scndhandPc}' type="number"/>원</p>
						</div>
					</a>
				</c:if>
			</c:forEach>
		</div>
		<br />
		<!-- 상품 목록 끝 -->
			<div class="hidden md:block mx-auto text-slate-500">
				<!-- Showing 시작행 to 종료행 of 전체행수 entries
					종료행  : currentPage * size
					시작행  : 종료행 - (size - 1)
					전체행수 : total
				-->
				<!-- data.currentPage : articlePage.currentPage -->
				<!-- 종료행 : currentPage * size -->
				<c:set var="endRow" value="${data.currentPage * data.size}" />
				<!-- 시작행 : 종료행 - (size - 1) -->
				<c:set var="startRow" value="${endRow - (data.size - 1)}" />
				<!-- 전체행수 : total -->
				<c:set var="total" value="${data.total}" />
				<!-- http://localhost/list?currentPage=2 -->
				<!-- Showing 1 to 10 of 1 entries -->
				<c:if test="${endRow > total}">
					<c:set var="endRow" value="${total}" />
				</c:if>
			</div>
		</form>
		<div class="intro-y col-span-12 flex flex-wrap sm:flex-row sm:flex-nowrap items-center justify-center">
			<nav class="w-full sm:w-auto sm:mr-auto">
			  	<div class="pagination-container">
			        <ul class="pagination text-center" style="width: 100px;">
						<!--시작 페이지 이동 -->
			            <li class="page-item">
			                <a class="page-link" href="/mem/cmnt/secondhandbbs?currentPage=1"> <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="chevrons-left" class="lucide lucide-chevrons-left w-4 h-4" data-lucide="chevrons-left"><polyline points="11 17 6 12 11 7"></polyline><polyline points="18 17 13 12 18 7"></polyline></svg> </a>
			            </li>
						<!--이전 페이지 이동 -->
			            <li class="page-item">
			                <a class="page-link"
			                <c:if test='${data.startPage < 6}'>style="pointer-events: none;"</c:if>
			                href="/mem/cmnt/secondhandbbs?currentPage=${data.startPage-5}&size=${param.size}&cond=${param.cond}&keyword=${param.keyword}">
							<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="chevron-left" class="lucide lucide-chevron-left w-4 h-4" data-lucide="chevron-left"><polyline points="15 18 9 12 15 6"></polyline></svg> </a>
			            </li>
			            <c:forEach var="pNo" begin="${data.startPage}" end="${data.endPage}">
				            <li class="page-item">
				            	<c:if test='${param.currentPage eq pNo || (pNo == 1 && param.currentPage == null)}'></c:if>
				            	<a href="/mem/cmnt/secondhandbbs?currentPage=${pNo}&size=${param.size}&cond=${param.cond}&keyword=${param.keyword}" class="page-link">${pNo}</a>
				            </li>
			            </c:forEach>
						<!-- 다음 페이지 이동 -->
			            <li class="page-item">
			                <a class="page-link"
			            	<c:if test='${data.endPage == data.totalPages}'>style="pointer-events: none;"</c:if>
			            	href="/mem/cmnt/secondhandbbs?currentPage=${data.startPage+5}&size=${param.size}&cond=${param.cond}&keyword=${param.keyword}">
			                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="chevron-right" class="lucide lucide-chevron-right w-4 h-4" data-lucide="chevron-right"><polyline points="9 18 15 12 9 6"></polyline></svg> </a>
			            </li>
						<!-- 마지막 페이지 이동 -->
			            <li class="page-item">
			                <a class="page-link"
			                <c:if test='${data.endPage == data.totalPages}'>style="pointer-events: none;"</c:if>
			                href="/mem/cmnt/secondhandbbs?currentPage=${data.totalPages}"> <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="chevrons-right" class="lucide lucide-chevrons-right w-4 h-4" data-lucide="chevrons-right"><polyline points="13 17 18 12 13 7"></polyline><polyline points="6 17 11 12 6 7"></polyline></svg> </a>
			            </li>
			        </ul>
		        </div>
			</nav>
			<a href="/mem/cmnt/secondhandbbs/register" class="btn btn-primary shadow-md mr-2" style="letter-spacing: 1px;">판매하기</a>
		</div>
		</div>
	</div>
</div>
<%-- Showing ${startRow} to ${endRow} of ${total} entries --%>
<%-- ${data.content} --%>

<script type="text/javascript">
$(function() {
	$("#main_menu").html("커뮤니티");
	$("#sub_menu").html("중고장터");

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

	// accordion
	$(".accordion-button").on("click", function() {
		$("#faq-accordion-collapse-5").removeClass("collapse");
	});

	// 검색 버튼 클릭 이벤트
	$("#search").on("click", function(){
		var obj_frm = document.querySelector("#frm");
		obj_frm.submit();
	});

	// 페이징 처리
	$("#size").on("change", function(){
		var obj_frm = document.querySelector("#frm");
		obj_frm.submit();
	});
});
</script>