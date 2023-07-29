<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="/resources/css/bootstrap.min.css" />
<title>임경빈 쇼핑몰</title>
</head>
<body>

	<!-- header -->
	<tiles:insertAttribute name="header" />
		
	<!------------ body 시작 ------------->
	<tiles:insertAttribute name="body" />
	<!------------ body 끝 -------------->
	
	<!-- footer -->
	<tiles:insertAttribute name="footer" />
		
</body>
</html>






