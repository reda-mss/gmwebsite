<%@ include file="/WEB-INF/tags/libs/tags_libs.jsp"%>
<div class="welcome-about" style="background: url('<c:url value="/static/picts/about.jpg" />') no-repeat center center; background-size: cover;">
	<div class="overlay"></div>
	<div class="welcome-content">
		<div class="container h-100">
			<div class="flexed flex-colone h-100">
				<div class="welcome-body my-auto">
					<ol class="bread-crumb font-small">
						<li><a href="<c:url value="/"/>" class="transition-35"><spring:message code="menu.home1"/></a></li>
						<li><spring:message code="menu.footer1.3"/></li>
					</ol>
					<div class="welcome-header">
						<h1 class="h-white font-bold"><spring:message code="menu.footer1.3"/></h1>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<div class="animated slow fadeIn">
	<div class="about-company">
		<div class="container">
			<div class="row">
				<div class="col-md-6">
					<h3 class="h-primary"><spring:message code="app.name"/></h3>
					<p class="text-justify m-t-40"><spring:message code="txt.mention1" /></p>
				</div>
				<div class="col-md-6">
					<h3 class="h-primary"><spring:message code="lbl.dev"/></h3>
					<p class="text-justify m-t-40"><spring:message code="txt.mention2" /></p>
					<a href="#"><spring:message code="app.website" /></a>
				</div>
			</div>
		</div>
	</div>
</div>
<c:import url="/WEB-INF/fields/home_contact.jsp"/>