<%@ include file="/WEB-INF/tags/libs/tags_libs.jsp"%>
<div class="welcome-about" style="background: url('<c:url value="/static/picts/about.jpg" />') no-repeat center center; background-size: cover;">
	<div class="overlay"></div>
	<div class="welcome-content">
		<div class="container h-100">
			<div class="flexed flex-colone h-100">
				<div class="welcome-body my-auto">
					<ol class="bread-crumb font-small">
						<li><a href="<c:url value="/"/>" class="transition-35"><spring:message code="menu.home1"/></a></li>
						<li><a href="<c:url value="/business-creation"/>" class="transition-35"><spring:message code="menu.home3"/></a></li>
						<li><spring:message code="menu.home3.2"/></li>
					</ol>
					<div class="welcome-header">
						<h1 class="h-white font-bold"><spring:message code="menu.home3.2"/></h1>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<div class="animated slow fadeIn">
	<div class="container">
		<div class="row">
			<div class="col-lg-9">
				<div class="m-t-40"><img class="img-responsive" src="<c:url value="/static/picts/show3_2.jpg" />" alt="<spring:message code="menu.home3.2" />"></div>
				<div class="m-t-50">
					<h3 class="h-primary"><spring:message code="txt.assist1"/></h3>
					<p class="text-justify m-t-40"><spring:message code="txt.assist2" /></p>
					<p class="text-justify m-t-40"><spring:message code="txt.assist3" /></p>
					<hr class="my-2 m-t-40 hr-black">
					<p class="text-justify m-t-40"><spring:message code="txt.assist4" /></p>
					<p class="text-justify m-t-40 m-b-60"><spring:message code="txt.assist5" /></p>
				</div>
			</div>
			<div class="col-lg-3 hidden-lg-down">
				<c:import url="/WEB-INF/fields/jobs_sidebar.jsp"/>
			</div>
		</div>
	</div>
</div>
<c:import url="/WEB-INF/fields/home_contact.jsp"/>