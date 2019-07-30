<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:set var="contextPath" value="${pageContext.request.contextPath}" />


<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Tender Search</title>
</head>
<body>

	<div align="center">
	<h1>Search Result</h1>

	<%-- <table border="1">
		<tr>
			<th>Tender ID</th>
			<th>Reference No</th>
			<th>Title</th>
			<th>Publishing Date</th>
			<th>Closing Date</th>
	
		</tr>--%>
		
		<table border="1">

			<tr>
				<th>Indicator ID</th>
				<th>Office ID</th>
				<th>PEOffice Name</th>
				<th>Tender Id</th>
				<th>Days Between Contract</th>
				<th>Award PubCP TU Website</th>
				<th>Ministry ID</th>
				<th>Division ID</th>
				<th>Org_ID_ID</th>
				<th>Modify_Date</th>
				<th>Action</th>

			</tr>
		
		<c:forEach items="${result}" var="tender">
			<tr>
					<td>${tender.id}</td>
					<td>${tender.officeId}</td>
					<td>${tender.peOfficeName}</td>
					<td>${tender.tenderId}</td>
					<td>${tender.daysBetweenIftContarct}</td>
					<td>${tender.awardPubCptuWebsite}</td>
					<td>${tender.mininsty}</td>
					<td>${tender.division}</td>
					<td>${tender.organization}</td>
					<td>${tender.modifyDate}</td>
					
				<td colspan="2"><a href="${contextPath}/index">Home</a>  
				</td>
					
			</tr>
		</c:forEach>

	</table>
	</div>
</body>
</html>
	

<!-- This contains the most used tag libraries -->
