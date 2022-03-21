<%@ include file="/WEB-INF/tags/libs/tags_libs.jsp"%>
<div class="welcome-about" style="background: url('<c:url value="/static/picts/about.jpg" />') no-repeat center center; background-size: cover;">
	<div class="overlay"></div>
	<div class="welcome-content">
		<div class="container h-100">
			<div class="flexed flex-colone h-100">
				<div class="welcome-body my-auto">
					<ol class="bread-crumb font-small">
						<li><a href="<c:url value="/"/>" class="transition-35"><spring:message code="menu.home1"/></a></li>
						<li><spring:message code="menu.footer1.2"/></li>
					</ol>
					<div class="welcome-header">
						<h1 class="h-white font-bold"><spring:message code="menu.footer1.2"/></h1>
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
				<div class="col-md-6 col-lg-8">
					<h3 class="h-primary"><spring:message code="app.name"/></h3>
					<ul class="list-unstyled list-plan l-30 m-t-40">
						<li><a href="<c:url value="/"/>"><spring:message code="menu.home1"/></a></li>
						<li><a href="<c:url value="/about"/>"><spring:message code="menu.home2"/></a></li>
						<li><a href="<c:url value="/business-creation"/>"><spring:message code="menu.home3"/></a>
							<ul class="list-unstyled list-plan l-30">
								<c:set var="liens" value="business-creation,accounting-assistance,legal,tax,social-audit" scope="page"></c:set>
								<c:forEach var="lien" items="${pageScope.liens}" varStatus="state">
									<li><a href="<c:url value="/${pageScope.lien}"/>">
										<spring:message code="menu.home3.${state.count}"/>
									</a></li>
								</c:forEach>
							</ul>
						</li>
						<li><a href="<c:url value="/#news-home"/>"><spring:message code="menu.home4"/></a></li>
						<li><a href="<c:url value="/contact-us"/>"><spring:message code="menu.home5"/></a></li>
					</ul>
				</div>
				<div class="col-md-6 col-lg-4">
					<div class="plan-contact" style="background: url('<c:url value="/static/picts/plan.jpg" />') no-repeat center center; background-size: cover;">
						<h4 class="h-white"><spring:message code="title.contact3"/></h4>
						<ul class="list-unstyled m-t-40">
							<li>
								<i class="fa fa-map-marker-alt i-24 i-yellow pull-left"></i>
								<span class="i-text it-22 i-wgray">
									<spring:message code="app.adr2" />
									<span class="block"><spring:message code="app.adr3" /></span>
								</span>
							</li>
							<li class="m-t-20">
								<i class="fa fa-phone i-24 i-yellow pull-left"></i>
								<span class="i-text it-22 i-wgray">
									<span class="font-bold"><spring:message code="app.phone" /></span>
								</span>
							</li>
							<li class="m-t-20">
								<i class="fa fa-envelope i-24 i-yellow pull-left"></i>
								<span class="i-text it-22">
									<a href="mailto:<spring:message code="app.mail" />" class="i-yellow transition-35"><spring:message code="app.mail" /></a>
								</span>
							</li>
						</ul>
						<ul class="navbar-nav nav-flex-icons nav-plan m-t-30">
							<li>
								<a href="#" class="transition-35">
									<i class="fa4 fa4-facebook"></i>
								</a>
							</li>
							<li>
								<a href="#" class="transition-35">
									<i class="fa4 fa4-twitter"></i>
								</a>
							</li>
							<li>
								<a href="#" class="transition-35">
									<i class="fa4 fa4-google"></i>
								</a>
							</li>
							<li>
								<a href="#" class="transition-35">
									<i class="fa4 fa4-linkedin"></i>
								</a>
							</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
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
</div>