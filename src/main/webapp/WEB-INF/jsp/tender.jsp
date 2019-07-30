<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>


<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:set var="contextPath" value="${pageContext.request.contextPath}" />


<%@ include file="/WEB-INF/jsp/includes.jsp"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Tender Search Demo</title>
</head>
<body>
	<div align="center">
		<%-- <h1>Tender Search</h1>

	<form:form role="form" action="${contextPath}/tender" method="POST"
		modelAttribute="tender" novalidate="novalidate">
		<table>
			<tr>
				<td>Reference No</td>
				<td><form:input path="referenceNo" /></td>
			</tr>
			<tr>
				<td>Title</td>
				<td><form:input path="title" /></td>
			</tr>
			<tr>
				<td>Publishing Date</td>
				<td><form:input path="publicationDate" /></td>
			</tr>

			<tr>
				<td>Closing Date</td>
				<td><form:input path="closingDate" /></td>
			</tr>
			<tr>
				<td colspan="2"><a href="${contextPath}/create">Save</a>
					<input type="submit" name="action" value="Edit" /> <input
					type="submit" name="action" value="Delete" /> <input type="submit"
					name="action" value="Search" /></td>
			</tr>
		</table>
	</form:form>
	<br> --%>

		<h1>All Tenders</h1>

		<form action="search" method="get">
			<span>Start Date:</span><input type="date" name="start"/>
			<span>End Date:</span><input type="date" name="start"/>
			<input type="text" name="id" /> <input type="submit"
				value="search" />
		</form>
<br/>
<br/>
		
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

			</tr>
			<c:forEach items="${tenderList}" var="tender">
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
				</tr>
			</c:forEach>

		</table>
	</div>
</body>
</html>
