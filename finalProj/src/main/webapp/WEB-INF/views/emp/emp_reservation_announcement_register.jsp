<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<div class="col-span-12 lg:col-span-3 2xl:col-span-2">
    <!-- BEGIN: Menu -->
    <div class="intro-y box bg-primary p-4 mt-0 text-lg">
    	<nav class="side-nav">
		    <ul>
		        <li>
		            <a href="/emp/onair/annnc" class="side-menu">
		                <div class="side-menu__icon"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="home" data-lucide="home" class="lucide lucide-home"><path d="M3 9l9-7 9 7v11a2 2 0 01-2 2H5a2 2 0 01-2-2z"></path></svg></div>
		                <div class="side-menu__title"> 안내방송 </div>
		            </a>
		        </li>
		        <li>
		            <a href="/emp/onair/resveannnc" class="side-menu side-menu--active">
		                <div class="side-menu__icon"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" icon-name="box" data-lucide="box" class="lucide lucide-box"><path d="M21 16V8a2 2 0 00-1-1.73l-7-4a2 2 0 00-2 0l-7 4A2 2 0 003 8v8a2 2 0 001 1.73l7 4a2 2 0 002 0l7-4A2 2 0 0021 16z"></path><polyline points="3.27 6.96 12 12.01 20.73 6.96"></polyline><line x1="12" y1="22.08" x2="12" y2="12"></line></svg></div>
		                <div class="side-menu__title"> 방송 예약 설정 </div>
		            </a>
		        </li>
		    </ul>
		</nav>
    </div>
    <!-- END: Menu -->
</div>
<!-- BEGIN: Body -->
<div class="bdy col-span-12 lg:col-span-9 2xl:col-span-10">
  <form id="radioFrm" name="frm" action="/emp/onair/resveannnc/resvRegisterPost" method="post">
    <!-- form fields -->
    <div class="intro-y box p-5">
      <sec:authentication property="principal.userVO" var="userVO" />
      <input type="hidden" name="frstWrterId" value="${userVO.empVO.empId}">
      <input type="hidden" name="lastUpdusrId" value="${userVO.empVO.empId}">
      <div class="mt-3">
        <label for="crud-form-2" class="form-label text-xl font-semibold mt-3" id="crud-form-2">예약 시간</label>
<!--         <select id="annncResveTm" name="annncResveTm" class="form-select w-full text-lg font-semibold mt-1"> -->
<%-- 				<c:set var="breakPoint" value="0" /> --%>
<%-- 				<c:forEach var="i" begin="00" end="23"> --%>
<%-- 				    <c:forEach var="j" begin="0" end="1"> --%>
<%-- 				        <c:if test="${(i == 23) && (j == 1)}"> --%>
<%-- 				            <c:set var="breakPoint" value="1" /> --%>
<%-- 				        </c:if> --%>
<%-- 				        <c:if test="${breakPoint == 0}"> --%>
<%-- 				            <option value="${i}:<fmt:formatNumber pattern="00" value="${j*30}" />">${i}:<fmt:formatNumber pattern="00" value="${j*30}" /></option> --%>
<%-- 				        </c:if> --%>
<%-- 				    </c:forEach> --%>
<%-- 				</c:forEach> --%>
<!-- 			</select> -->

			<select id="annncResveTm" name="annncResveTm" class="form-select w-full text-lg font-semibold mt-1">
			  <c:forEach var="hour" begin="0" end="23">
			    <c:forEach var="minute" begin="0" end="50" step="10">
			      <c:set var="time" value="${hour}:${minute}" />
			      <option value="${time}"><fmt:formatNumber pattern="00" value="${hour}" />:<fmt:formatNumber pattern="00" value="${minute}" /></option>
			    </c:forEach>
			  </c:forEach>
			</select>

      </div>
      <div class="mt-3">
        <label for="crud-form-3" class="form-label text-xl font-semibold mt-3 mb-3" id="crud-form-3">내용</label>
        <textarea name="editor" rows="3" cols="5"></textarea>
        <input type="hidden" id="annncCn" name="annncCn" />
      </div>
      <div class="text-right mt-5">
        <button type="button" id="btnReg" class="btn btn-primary" style="background-color:rgb(30,58,138);">등록하기</button>
        <a href="#" id="btnCncl" class="btn btn-primary mr-4">취소</a>
      </div>
    </div>
    <sec:csrfInput/>
  </form>
</div>
<!-- END: Body -->

<script type="text/javascript" src="/resources/js/jquery-3.6.4.min.js"></script>
<script type="text/javascript" src="/resources/ckeditor/ckeditor.js" ></script>
<script type="text/javascript">
$(document).ready(function() {
	  // CKEDITOR 설정
	  CKEDITOR.replace("editor"); // textarea의 name 값 입력
	  // html 태그 사라지는 오류 해결
	  CKEDITOR.config.allowedContent = true;
	  // 입력란 활성화
	  //CKEDITOR.instances["editor"].setReadOnly(false);

	  // form submit
	  let formObj = document.querySelector("#radioFrm");

	  $("#btnReg").on("click", function() {
		  // CKEditor 인스턴스 업데이트
		  CKEDITOR.instances["editor"].updateElement();
		  let content = CKEDITOR.instances["editor"].getData();
		  jQuery("#annncCn").val(content);
		  console.log("content : " + content);

	    // 서버로 폼을 제출합니다.
	    formObj.submit();
	  });

	  // 취소 버튼 이벤트 핸들러 함수
	  $("#btnCncl").on("click", function() {
	    location.href = "/emp/onair/resveannnc";
	  });
});
</script>