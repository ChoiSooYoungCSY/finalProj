<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<!DOCTYPE html>
<html lang="en" class="light">
<head>
    <meta charset="utf-8">
    <link href="/resources/tinker/dist/images/logo.svg" rel="shortcut icon">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>[도란도란] 입주민</title>
    <!-- BEGIN: CSS Assets-->
    <link rel="stylesheet" href="/resources/tinker/dist/css/app.css" />
    <!-- END: CSS Assets-->
    <script src="https://cdn.tailwindcss.com"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.3/font/bootstrap-icons.css">
    <script src="https://cdn.jsdelivr.net/npm/fullcalendar@6.1.8/index.global.min.js"></script>
<style type="text/css">
body {
	padding-left: 14%;
	padding-right: 14%;
	letter-spacing: 1px;
}
.intro-y:has(.side-nav) {
	width: 150%;
	height: 800px;
}
.side-nav {
	width: 110%;
	padding: 5%;
	padding-left: 0%;
	font-size: 18px;
}
@media (max-width: 100%) {
	.side-nav {
		width: calc(100% * (100 / 120));
	}
}
@media (max-height: 170%) {
	.side-nav {
		height: calc(100% * (170 / 100));
	}
}
.side-menu, .side-menu-ul {
	width: 95%;
}
.bdy {
	margin-left: 9%;
}
#menuPath {
	font-size: 16px;
}
::-webkit-scrollbar {
    width: 5px;
}
::-webkit-scrollbar-track {
    background-color: darkgrey;
    border-radius: 100px;
}
::-webkit-scrollbar-thumb {
    box-shadow: inset 0 0 6px rgba(0, 0, 0, 0.3);
    border-radius: 100px;
}
</style>
</head>
<body class="py-5 md:py-0 bg-black/[0.15] dark:bg-transparent" style="font-family: 'Pretendard'">

    <!-- BEGIN: Top Menu -->
    <tiles:insertAttribute name="header" />
    <!-- END: Top Menu -->

    <!-- BEGIN: Content -->
    <div class="content content--top-nav">
        <div class="grid grid-cols-12 gap-6 mt-8">
			<tiles:insertAttribute name="body" />
        </div>
    </div>
    <!-- END: Content -->

	<tiles:insertAttribute name="footer" />

</body>
<!-- BEGIN: JS Assets-->
<script src="https://developers.google.com/maps/documentation/javascript/examples/markerclusterer/markerclusterer.js"></script>
<!-- <script src="https://maps.googleapis.com/maps/api/js?key=["your-google-map-api"]&libraries=places"></script> -->
<script src="/resources/tinker/dist/js/app.js"></script>
<!-- END: JS Assets-->
</html>