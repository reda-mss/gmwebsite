<%@ include file="/WEB-INF/tags/libs/tags_libs.jsp"%>
<div class="footer-home" style="background: url('<c:url value="/static/picts/footer.jpg" />') no-repeat center center; background-size: cover;">
	<div class="container">
		<div class="row">
			<div class="col-md-3 m-t-20">
				<a href="" class="brand-image">
					<img height="36" class="transition-35" src="<c:url value="/static/icons/gm_white.png" />" alt="<spring:message code="app.name" />">
				</a>
				<div class="brand-footer m-t-40">
					<spring:message code="lbl.copyright1" /> &copy; <span id="years-app">2019</span><br>
					<spring:message code="lbl.copyright2" />.<br>By
					<a href="#" class="i-yellow transition-35"><spring:message code="app.org" /></a>
				</div>
				<div class="brand-social m-t-40">
					<ul class="navbar-nav nav-flex-icons">
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
			<div class="col-md-3 m-t-20">
				<div class="footer-header">
					<h4 class="i-white font-strong m-b-0"><spring:message code="menu.home4" /></h4>
				</div>
				<div class="footer-content m-t-40">
					<a href="<c:url value="/#news-home"/>" class="lien font-strong transition-35"><spring:message code="txt.news3" /></a>
					<span class="help-text m-t-20"><i class="far fa-clock i-22 i-yellow"></i><spring:message code="lbl.newsdate" /></span>
				</div>
			</div>
			<div class="col-md-3 m-t-20">
				<div class="footer-header">
					<h4 class="i-white font-strong m-b-0"><spring:message code="menu.footer1" /></h4>
				</div>
				<ul class="list-unstyled list-footer m-t-40">
					<c:set var="liens" value="/,/plan,/mention,/contact-us,/about" scope="page"></c:set>
					<c:forEach var="lien" items="${pageScope.liens}" varStatus="state">
						<li><a href="<c:url value="${pageScope.lien}"/>" class="transition-35 m-b-10"><spring:message code="menu.footer1.${state.count}" /></a></li>
					</c:forEach>
				</ul>
			</div>
			<div class="col-md-3 m-t-20">
				<div class="footer-header">
					<h4 class="i-white font-strong m-b-0"><spring:message code="menu.footer2" /></h4>
				</div>
				<ul class="list-unstyled list-footer m-t-40">
					<c:set var="liens" value="business-creation,accounting-assistance,legal,tax,social-audit" scope="page"></c:set>
					<c:forEach var="lien" items="${pageScope.liens}" varStatus="state">
						<li><a href="<c:url value="/${pageScope.lien}"/>" class="transition-35 m-b-10"><spring:message code="menu.home3.${state.count}" /></a></li>
					</c:forEach>
				</ul>
			</div>
		</div>
	</div>
</div>