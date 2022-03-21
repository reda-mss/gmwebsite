<%@ include file="/WEB-INF/tags/libs/tags_libs.jsp"%>
<div class="jobs-sidebar">
	<ul class="list-sidebar">
		<c:set var="liens" value="business-creation,accounting-assistance,legal,tax,social-audit" scope="page"></c:set>
		<c:forEach var="lien" items="${pageScope.liens}" varStatus="state">
			<li class="${state.count == requestScope.menuSidebar ? 'active' : ''}"><a class="transition-35" href="<c:url value="/${pageScope.lien}"/>">
				<spring:message code="menu.home3.${state.count}"/>
			</a></li>
		</c:forEach>
	</ul>
	<div class="m-t-40">
		<a href="#" class="btn btn-macro btn-file btn-block"><i class="fa fa-file-pdf i-yellow m-r-5"></i>
			<spring:message code="btn.company"/></a>
	</div>
	<div class="jobs-contact b-yellow m-t-20">
		<h6 class="i-primary"><spring:message code="txt.company1"/></h6>
		<p class="i-primary m-t-20 font-small"><spring:message code="txt.company2"/></p>
		<a href="<c:url value="/contact-us"/>" class="btn btn-white"><i class="fa fa-phone-square i-primary m-r-5"></i>
			<spring:message code="menu.home5"/></a>
	</div>
</div>