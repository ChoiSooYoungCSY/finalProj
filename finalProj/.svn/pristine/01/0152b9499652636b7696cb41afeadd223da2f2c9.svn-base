<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html>
<html lang="en" class="light">
<!-- BEGIN: Head -->
<head>
	<script src="https://cdn.tailwindcss.com"></script>
	<meta charset="utf-8">
	<link href="/resources/icewall/dist/images/logo.svg" rel="shortcut icon">
	<title>[도란도란] 관리자</title>
	<!-- BEGIN: CSS Assets-->
	<link rel="stylesheet" href="/resources/icewall/dist/css/app.css" />
	<!-- END: CSS Assets-->
	<!-- <link href="https://unpkg.com/tabulator-tables@5.5.0/dist/css/tabulator.min.css" rel="stylesheet"> -->
	<link href="https://unpkg.com/tabulator-tables@4.9.3/dist/css/tabulator.min.css" rel="stylesheet">
<style type="text/css">
.main {
	padding-left: 15%;
	padding-right: 15%;
	font-family: 'Pretendard';
	letter-spacing: 1px;
}
.intro-y:has(.side-nav) {
	width: 150%;
	height: 850px;
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
<!-- END: Head -->
<body class="main">

	<!-- BEGIN: Top Menu -->
	<tiles:insertAttribute name="header" />
	<!-- END: Top Menu -->

    <!-- BEGIN: Content -->
    <div class="wrapper wrapper--top-nav">
        <div class="wrapper-box">
            <div class="content">
                <div class="grid grid-cols-12 gap-6 mt-8">
                	<!-- BEGIN: Body -->
						<tiles:insertAttribute name="body" />
					<!-- END: Body -->
                </div>
            </div>
        </div>
    </div>
    <!-- END: Content -->

    <tiles:insertAttribute name="footer" />

</body>
<!-- BEGIN: JS Assets-->
<script src="https://developers.google.com/maps/documentation/javascript/examples/markerclusterer/markerclusterer.js"></script>
<!-- <script src="https://maps.googleapis.com/maps/api/js?key=["your-google-map-api"]&libraries=places"></script> -->
<script src="/resources/icewall/dist/js/app.js"></script>
<!-- END: JS Assets-->
<!-- <script type="text/javascript" src="https://unpkg.com/tabulator-tables@5.5.0/dist/js/tabulator.min.js"></script> -->
<script type="text/javascript" src="https://unpkg.com/tabulator-tables@4.9.3/dist/js/tabulator.min.js"></script>
</html>

