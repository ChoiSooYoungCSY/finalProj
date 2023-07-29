<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>

<!-- BEGIN: Body -->
<div class="bdy col-span-11 bg-white mt-10 mb-10">
	<div
		class="my-auto xl:bg-transparent px-5 py-8 rounded-md shadow-md xl:shadow-none w-full">
		<h2 class="intro-x font-bold text-3xl text-center" style="margin-top: 100px;">회원가입 신청 실패</h2>
		<h2 class="intro-x text-xl text-center" style="margin-top: 50px; margin-bottom: 100px;">다시 시도하거나 관리자에게 문의하세요.</h2>
	</div>
</div>
<!-- END: Body -->

<!-- <script type="text/javascript" src="/resources/js/jquery-3.6.4.min.js"></script> -->
<script type="text/javascript">
	$(function() {
		$("#main_menu").html("마이페이지");
		$("#sub_menu").html("개인정보 수정");

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

