<%@ include file="/WEB-INF/tags/libs/tags_libs.jsp"%>
<title><spring:message code="title.home.app"/> | <spring:message code="menu.home3.1"/></title>
<c:set var="menuJob" value="1" scope="request"></c:set>
<c:set var="menuSidebar" value="1" scope="request"></c:set>
<link rel="stylesheet" href='<c:url value="/static/webjars/css/lib/bootstrap/bootstrap.css"/>'>

<c:import url="/WEB-INF/tags/init_css.jsp"/>
<link rel="stylesheet" href='<c:url value="/static/webjars/css/golden.css"/>'>