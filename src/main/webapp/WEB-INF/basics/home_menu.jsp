<%@ include file="/WEB-INF/tags/libs/tags_libs.jsp"%>
<nav class="navbar navbar-responsive navbar-expand-lg navbar-dark hidden-md-down">
	<div class="container">
		<div class="navbar-collapse">
			<ul class="navbar-nav">
				<li class="nav-item dropdown langage-menu">
					<a class="nav-link" data-toggle="dropdown">
						<i class="fa fa-caret-down i-8"></i>
						<c:out value="${langage.lang == 'fr' ? 'Français' : 'English'}" />
					</a>
					<ul class="dropdown-menu animated slideInY">
						<c:set var="providers" scope="page">${langage.lang == "fr" ? "en" : "fr"}</c:set>
						<c:forEach var="provider" items="${pageScope.providers}">
							<li>
								<a class="dropdown-item transition-35" onclick="setLangage('${pageScope.provider}')" >
									<i class="fa i-8"></i>
									<c:out value="${pageScope.provider == 'fr' ? 'Français' : 'English'}" />
								</a>
							</li>
						</c:forEach>
					</ul>
				</li>
				<li class="nav-text"><i class="fa fa-map-marker-alt i-22 i-yellow"></i><spring:message code="app.adress" /></li>
				<li class="nav-text"><i class="fa fa-clock i-22 i-yellow"></i><spring:message code="app.time" /></li>
				<li class="nav-text"><i class="fa fa-phone i-22 i-yellow"></i><spring:message code="app.phone" /></li>
			</ul>
			<ul class="navbar-nav ml-auto hidden-lg-down">
				<li class="nav-item">
					<a href="<c:url value="/#call-home"/>" class="nav-link nav-yellow text-center">
						<spring:message code="btn.golden" />
					</a>
				</li>
			</ul>
		</div>
	</div>
</nav>
<nav class="navbar navbar-pc navbar-expand-lg navbar-light">
	<div class="container">
		<div class="navbar-header">
			<a class="navbar-brand" href="<c:url value="/"/>">
				<img height="34" class="brand-black"
					src="<c:url value="/static/icons/gm_black.png"/>" alt="<spring:message code="app.name"/>" />
				<img height="34" class="brand-white" 
					src="<c:url value="/static/icons/gm_white.png"/>" alt="<spring:message code="app.name"/>" />
			</a>
		</div>
		<button class="navbar-toggler transition-35" type="button" 
			data-toggle="collapse" data-target=".nav-responsive" aria-expanded="false">
			<i class="fa fa-bars i-14"></i>
		</button>
		<ul class="navbar-nav nav-menu m-auto hidden-md-down">
			<li class="nav-item ${!empty requestScope.menuHome ? 'active' : ''}">
				<a class="nav-link transition-35" href="<c:url value="/"/>"><spring:message code="menu.home1"/></a>
			</li>
			<li class="nav-item ${!empty requestScope.menuAbout ? 'active' : ''}">
				<a class="nav-link transition-35" href="<c:url value="/about"/>"><spring:message code="menu.home2"/></a>
			</li>
			<li class="nav-item dropdown metier-menu ${!empty requestScope.menuJob ? 'active' : ''}">
				<a href="<c:url value="/business-creation"/>" class="nav-link transition-35">
					<spring:message code="menu.home3"/>
				</a>
				<ul class="dropdown-menu animated slideInY" role="menu">
					<c:set var="liens" value="business-creation,accounting-assistance,legal,tax,social-audit" scope="page"></c:set>
					<c:forEach var="lien" items="${pageScope.liens}" varStatus="state">
						<li><a class="dropdown-item transition-35" href="<c:url value="/${pageScope.lien}"/>">
							<spring:message code="menu.home3.${state.count}"/>
						</a></li>
					</c:forEach>
				</ul>
			</li>
			<li class="nav-item ${!empty requestScope.menuNews ? 'active' : ''}">
				<a class="nav-link transition-35" href="<c:url value="/#news-home"/>"><spring:message code="menu.home4"/></a>
			</li>
			<li class="nav-item ${!empty requestScope.menuContact ? 'active' : ''}">
				<a class="nav-link transition-35" href="<c:url value="/contact-us"/>"><spring:message code="menu.home5"/></a>
			</li>
		</ul>
		<ul class="navbar-nav nav-flex-icons ml-auto hidden-md-down">
			<li class="nav-item">
				<a href="#" class="nav-link nav-icon transition-35">
					<i class="fa4 fa4-facebook"></i>
				</a>
			</li>
			<li class="nav-item">
				<a href="#" class="nav-link nav-icon transition-35">
					<i class="fa4 fa4-twitter"></i>
				</a>
			</li>
			<li class="nav-item">
				<a href="#" class="nav-link nav-icon transition-35">
					<i class="fa4 fa4-google"></i>
				</a>
			</li>
			<li class="nav-item">
				<a href="#" class="nav-link nav-icon transition-35">
					<i class="fa4 fa4-linkedin"></i>
				</a>
			</li>
		</ul>
		<div class="collapse navbar-collapse nav-responsive m-t-10">
			<ul class="navbar-nav">
				<li class="nav-item ${!empty requestScope.menuHome ? 'active' : ''}">
					<a class="nav-link transition-35" href="<c:url value="/"/>"><spring:message code="menu.home1"/></a>
				</li>
				<li class="nav-item ${!empty requestScope.menuAbout ? 'active' : ''}">
					<a class="nav-link transition-35" href="<c:url value="/about"/>"><spring:message code="menu.home2"/></a>
				</li>
				<li class="nav-item ${!empty requestScope.menuJob ? 'active' : ''}">
					<a href="#" class="nav-link nav-down transition-35" data-toggle="collapse" data-target=".nav-metier" aria-expanded="false">
						<spring:message code="menu.home3"/><i class="fa fa-plus i-14"></i>
					</a>
					<div class="collapse navbar-collapse nav-metier">
						<ul class="navbar-nav">
							<c:set var="liens" value="business-creation,accounting-assistance,legal,tax,social-audit" scope="page"></c:set>
							<c:forEach var="lien" items="${pageScope.liens}" varStatus="state">
								<li class="nav-item"><a class="nav-link nav-down" href="<c:url value="/${pageScope.lien}"/>">
									<spring:message code="menu.home3.${state.count}"/>
								</a></li>
							</c:forEach>
						</ul>
					</div>
				</li>
				<li class="nav-item ${!empty requestScope.menuNews ? 'active' : ''}">
					<a class="nav-link transition-35" href="<c:url value="/#news-home"/>"><spring:message code="menu.home4"/></a>
				</li>
				<li class="nav-item ${!empty requestScope.menuContact ? 'active' : ''}">
					<a class="nav-link transition-35" href="<c:url value="/contact-us"/>"><spring:message code="menu.home5"/></a>
				</li>
			</ul>
		</div>
	</div>
</nav>