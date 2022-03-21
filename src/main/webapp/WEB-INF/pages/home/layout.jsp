<%@ include file="/WEB-INF/tags/libs/tiles_libs.jsp"%>
<!DOCTYPE html>
<html dir="ltr" lang="${langage.lang}">
<head>
	<tiles:insertAttribute name="meta"/>
	<tiles:insertAttribute name="link"/>
</head>
<body id="page-top">
	<c:if test="${hasLoading}"><tiles:insertAttribute name="load"/></c:if>
	<div class="wrapper">
		<tiles:insertAttribute name="menu"/>
		<tiles:insertAttribute name="body"/>
		<tiles:insertAttribute name="footer"/>
	</div>
	<tiles:insertAttribute name="scrolltop"/>
	<tiles:insertAttribute name="dialog"/>
	<tiles:insertAttribute name="script"/>
</body>
</html>