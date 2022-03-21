<%@ include file="/WEB-INF/tags/libs/tags_libs.jsp"%>
<c:import url="/WEB-INF/fields/home_slider.jsp"/>
<div class="console-home b-yellow">
	<div class="container">
		<div class="row">
			<div class="col-md-8 col-lg-9">
				<h4 class="font-strong m-t-10 m-b-10"><spring:message code="title.home3" /></h4>
			</div>
			<div class="col-md-4 col-lg-3 text-md-right">
				<a href="<c:url value="/business-creation"/>" class="btn btn-macro btn-big"><spring:message code="btn.more" /><i class="fa fa-long-arrow-alt-right i-22 text-right"></i></a>
			</div>
		</div>
	</div>
</div>
<div class="about-home">
	<div class="container">
		<div class="row animatedParent">
			<div class="col-md-7 animated halfed fadeInLeft">
				<h2 class="h-primary"><spring:message code="menu.home2" /></h2>
				<p class="m-t-50"><spring:message code="txt.show1" /></p>
				<div class="boxer boxer-yellow font-italic m-b-10">
					<p><spring:message code="txt.show2" /></p>
				</div>
			</div>
			<div class="col-md-5 animated halfed fadeInRight">
				<a href="<c:url value="/about"/>" class="quick-image" title="<spring:message code="btn.more" />">
					<img class="img-responsive transition-35" src="<c:url value="/static/picts/show1.jpg" />" alt="<spring:message code="alt.show1" />">
				</a>
			</div>
		</div>
	</div>
</div>
<div class="jobs-home">
	<div class="container">
		<div class="text-center animatedParent"><h1 class="i-primary font-strong animated halfed bounceIn"><spring:message code="title.jobs" /></h1></div>
		<div class="row m-t-50">
			<c:set var="liens" value="business-creation,accounting-assistance" scope="page"></c:set>
			<c:forEach var="lien" items="${pageScope.liens}" varStatus="state">
				<div class="col-md-6 m-b-10 animatedParent">
					<div class="quick-boxer transition-35 animated halfed ${state.count == 1 ? 'fadeInLeft' : 'fadeInRight'}">
						<a href="<c:url value="/${pageScope.lien}"/>" class="quick-image quick-overlay" title="<spring:message code="btn.read" />">
							<img class="img-responsive transition-35" src="<c:url value="/static/picts/show3_${state.count}.jpg" />" alt="<spring:message code="menu.home3.${state.count}" />">
						</a>
						<div class="quick-content">
							<h5 class="m-b-10"><a href="<c:url value="/${pageScope.lien}"/>" class="lien lien-primary font-strong"><spring:message code="menu.home3.${state.count}" /></a></h5>
							<p class="m-b-20"><spring:message code="txt.show3.${state.count}" /></p>
							<a href="<c:url value="/${pageScope.lien}"/>" class="lien lien-default"><spring:message code="btn.read" /><i class="fa fa-angle-right i-yellow i-16 text-right"></i></a>
						</div>
					</div>
				</div>
			</c:forEach>
		</div>
		<div class="row m-t-40">
			<c:set var="liens" value="legal,tax,social-audit" scope="page"></c:set>
			<c:forEach var="lien" items="${pageScope.liens}" varStatus="state">
				<div class="col-md-4 m-b-10 animatedParent">
					<div class="quick-boxer transition-35 animated onne fadeInUps">
						<a href="<c:url value="/${pageScope.lien}"/>" class="quick-image quick-overlay" title="<spring:message code="btn.read" />">
							<img class="img-responsive transition-35" src="<c:url value="/static/picts/show3_${state.count + 2}.jpg" />" alt="<spring:message code="menu.home3.${state.count + 2}" />">
						</a>
						<div class="quick-content">
							<h5 class="m-b-10"><a href="<c:url value="/${pageScope.lien}"/>" class="lien lien-primary font-strong"><spring:message code="menu.home3.${state.count + 2}" /></a></h5>
							<p class="m-b-20"><spring:message code="txt.show3.${state.count + 2}" /></p>
							<a href="<c:url value="/${pageScope.lien}"/>" class="lien lien-default"><spring:message code="btn.read" /><i class="fa fa-angle-right i-yellow i-16 text-right"></i></a>
						</div>
					</div>
				</div>
			</c:forEach>
		</div>
	</div>
</div>
<div id="news-home" class="news-home">
	<img src="<c:url value="/static/picts/show_home1.jpg" />" data-speed="-1" class="img-parallax">
	<div class="news-overlay"></div>
	<div class="news-content">
		<div class="container">
			<div class="news-body text-center animatedParent">
				<div class="news-header animated halfed growIn">
					<h2 class="font-strong text-uppercase m-b-0"><spring:message code="title.news" /></h2>
				</div>
				<div class="news-footer m-t-40 animated onne flipInX">
					<div class="row">
						<div class="col-md-5">
							<img class="img-responsive img-border" src="<c:url value="/static/picts/show2.jpg" />" alt="<spring:message code="alt.show2" />">
						</div>
						<div class="col-md-7 text-left">
							<h5 class="h-primary m-t-20"><spring:message code="txt.news1" /></h5>
							<p class="text-justify m-t-30"><spring:message code="txt.news2" /></p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<div class="partners-home animatedParent">
	<div class="container">
		<div class="text-center animated halfed bounceIn"><h1 class="i-primary font-strong"><spring:message code="title.partners" /></h1></div>
		<div class="row m-t-50">
			<c:set var="liens" value="#,#,#,#" scope="page"></c:set>
			<c:forEach var="lien" items="${pageScope.liens}" varStatus="state">
				<div class="col-3 text-center animated halfed zoomIn">
					<a href="#" class="img-lien m-auto"><img class="img-responsive transition-35" src="<c:url value="/static/picts/part${state.count}.jpg" />" alt="<spring:message code="alt.part${state.count}" />"></a>
				</div>
			</c:forEach>
		</div>
	</div>
</div>
<c:import url="/WEB-INF/fields/home_contact.jsp"/>