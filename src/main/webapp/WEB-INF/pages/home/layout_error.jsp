<%@ include file="/WEB-INF/tags/libs/tiles_libs.jsp"%>
<!DOCTYPE html>
<html dir="ltr" lang="${langage.lang}">
<head>
	<tiles:insertAttribute name="meta"/>
	<tiles:insertAttribute name="link"/>
</head>
<body>
	<tiles:insertAttribute name="body"/>
	<tiles:insertAttribute name="script"/>
</body>
</html>