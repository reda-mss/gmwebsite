<%@ include file="/WEB-INF/tags/libs/tags_libs.jsp"%>
<div class="welcome-about" style="background: url('<c:url value="/static/picts/about.jpg" />') no-repeat center center; background-size: cover;">
	<div class="overlay"></div>
	<div class="welcome-content">
		<div class="container h-100">
			<div class="flexed flex-colone h-100">
				<div class="welcome-body my-auto">
					<ol class="bread-crumb font-small">
						<li><a href="<c:url value="/"/>" class="transition-35"><spring:message code="menu.home1"/></a></li>
						<li><spring:message code="menu.home2"/></li>
					</ol>
					<div class="welcome-header">
						<h1 class="h-white font-bold"><spring:message code="menu.home2"/></h1>
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
				<div class="col-md-4 col-lg-3 hidden-sm-down">
					<div class="quick-logo mx-auto">
						<img class="img-responsive" src="<c:url value="/static/icons/logo.png" />" alt="<spring:message code="app.name" />">
					</div>
				</div>
				<div class="col-md-8 col-lg-9">
					<h3 class="h-primary"><spring:message code="txt.about1"/></h3>
					<p class="m-t-40"><spring:message code="txt.about2" /></p>
				</div>
			</div>
			<hr class="my-2 m-t-40 hr-black">
			<div class="m-t-50">
				<p class="text-justify"><spring:message code="txt.about3" /></p>
				<p class="m-t-40 text-justify"><spring:message code="txt.about4" /></p>
			</div>
		</div>
	</div>
	<div class="about-detail m-t-40">
		<div class="about-detail1"></div>
		<div class="about-detail2" style="background: url('<c:url value="/static/picts/about_show.jpg" />') no-repeat center center; background-size: cover;"></div>
		<div class="about-content">
			<div class="container">
				<div class="row">
					<div class="col-md-6">
						<h3 class="h-primary"><spring:message code="title.about1"/></h3>
						<p class="m-t-40"><i class="far fa-check-circle i-24 i-yellow pull-left"></i>
							<span class="block it-22"><spring:message code="txt.about5" /></span></p>
						<h3 class="h-primary m-t-50"><spring:message code="title.about2"/></h3>
						<ul class="list-unstyled m-t-40">
							<c:forEach var="i" begin="1" end="3">
								<li class="m-b-20"><i class="far fa-check-circle i-24 i-yellow pull-left"></i>
									<span class="block it-22"><spring:message code="txt.about5.${i}" /></span></li>
							</c:forEach>
						</ul>
					</div>
					<div class="col-md-6">
						<div class="about-progress">
							<h3 class="h-white m-b-20"><spring:message code="title.about3"/></h3>
							<c:set var="values" value="87,75,63,50,67" scope="page"></c:set>
							<c:forEach var="value" items="${pageScope.values}" varStatus="state">
								<div class="m-t-40">
									<p class="font-strong i-white m-b-0"><spring:message code="menu.home3.${state.count}"/>
										<span class="pull-right">${pageScope.value}%</span></p>
									<div class="progress progress-yellow m-t-0">
										<div class="progress-bar" style="width:${pageScope.value}%;" role="progressbar"></div>
									</div>
								</div>
							</c:forEach>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<c:import url="/WEB-INF/fields/home_contact.jsp"/>