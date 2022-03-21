<%@ include file="/WEB-INF/tags/libs/tags_libs.jsp"%>
<div class="page-error" style="background: url('<c:url value="/static/picts/404.jpg" />') no-repeat center center; background-size: cover;">
	<div class="overlay"></div>
	<div class="bottom-error">
		<div class="container">
			<h1 class="i-primary">404</h1>
		</div>
		<div class="b-primary">
			<div class="container">
				<div class="row">
					<div class="col-md-8 col-lg-9">
						<h2 class="font-strong i-white m-t-10 m-b-10"><spring:message code="txt.error" /></h2>
					</div>
					<div class="col-md-4 col-lg-3 text-md-right">
						<a href="<c:url value="/"/>" class="btn btn-yellow btn-big"><spring:message code="btn.home" /><i class="fa fa-arrow-right i-22 text-right"></i></a>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>