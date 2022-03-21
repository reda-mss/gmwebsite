<%@ include file="/WEB-INF/tags/libs/tags_libs.jsp"%>
<title><spring:message code="title.home.public"/></title>
<c:set var="menuHome" value="1" scope="request"></c:set>

<link rel="stylesheet" href='<c:url value="/static/webjars/css/lib/bootstrap/bootstrap.css"/>'>
<link rel="stylesheet" href='<c:url value="/static/webjars/css/lib/owlcarousel/owl_carousel.css"/>'>

<c:import url="/WEB-INF/tags/init_css.jsp"/>
<link rel="stylesheet" href='<c:url value="/static/webjars/css/golden.css"/>'>