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
						<li><spring:message code="menu.home3.3"/></li>
					</ol>
					<div class="welcome-header">
						<h1 class="h-white font-bold"><spring:message code="menu.home3.3"/></h1>
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
				<div class="m-t-40"><img class="img-responsive" src="<c:url value="/static/picts/show3_3.jpg" />" alt="<spring:message code="menu.home3.3" />"></div>
				<div class="m-t-50">
					<h3 class="h-primary"><spring:message code="txt.legal1"/></h3>
					<p class="text-justify m-t-40"><spring:message code="txt.legal2" /></p>
					<p class="text-justify m-t-40"><spring:message code="txt.legal3" /></p>
					<div class="boxer boxer-yellow font-italic m-t-20 m-b-10">
						<p><spring:message code="txt.legal4" /></p>
					</div>
					<p class="text-justify m-t-40"><spring:message code="txt.legal5" /></p>
					<p class="text-justify m-t-40"><spring:message code="txt.legal6" /></p>
					<p class="text-justify m-t-40"><spring:message code="txt.legal7" /></p>
					<hr class="my-2 m-t-40 hr-black">
					<div class="m-t-40 m-b-60">
						<h3 class="h-primary"><spring:message code="txt.legal8"/></h3>
						<ul class="list-unstyled m-t-40">
							<c:forEach var="i" begin="1" end="9">
								<li class="m-b-20"><i class="far fa-check-circle i-24 i-yellow pull-left"></i>
									<span class="block it-22"><spring:message code="txt.legal8.${i}" /></span></li>
							</c:forEach>
						</ul>
					</div>
				</div>
			</div>
			<div class="col-lg-3 hidden-lg-down">
				<c:import url="/WEB-INF/fields/jobs_sidebar.jsp"/>
			</div>
		</div>
	</div>
</div>
<c:import url="/WEB-INF/fields/home_contact.jsp"/>