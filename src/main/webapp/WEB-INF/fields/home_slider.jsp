<%@ include file="/WEB-INF/tags/libs/tags_libs.jsp"%>
<div class="diapos-owl diapos-lg">
	<div class="owl-carousel owl-theme">
		<c:forEach var="i" begin="1" end="2">
			<div class="item" style="background: url('<c:url value="/static/picts/slider${i}.jpg" />') no-repeat center center;">
				<div class="container h-100">
					<div class="flexed flex-colone h-100 diapos-style">
						<div class="diapos-content animated fadeInUp my-auto">
							<span class="d-name"><spring:message code="app.name" /></span>
							<h1 class="h1-responsive font-bold m-t-40"><spring:message code="title.home${i}" /></h1>
							<c:choose>
								<c:when test="${i == 1}">
									<a href="<c:url value="/contact-us"/>" class="btn btn-yellow btn-big m-t-40"><spring:message code="btn.contact" /></a>
								</c:when>
								<c:otherwise>
									<a href="<c:url value="/business-creation"/>" class="btn btn-yellow btn-big m-t-40"><spring:message code="btn.expert" /></a>
								</c:otherwise>
							</c:choose>
						</div>
					</div>
				</div>
			</div>
		</c:forEach>
	</div>
</div>
