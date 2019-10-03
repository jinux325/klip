<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<!DOCTYPE html>
<html>
<head>
	<title>Popup Dialog</title>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge, chrome=1">
	<meta name="viewport" content="width=device-width, initial-scale=0.8, user-scalable=yes">
	<!-- <link rel="stylesheet" href="./css/import.css"> -->
	<link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
	<!-- <link rel="stylesheet" href="css/modal.css"> -->
	<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	<!-- <script src="./js/modal.js"></script> -->
</head>
<body>

	<!-- Modal -->
	<%@ include file="./pop.jsp" %>
	<!-- //Modal --> 

	<!-- Trigger -->
	<button id="insertItem">Open Modal</button>

</body>
</html>

