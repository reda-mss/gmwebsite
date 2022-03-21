<%@ include file="/WEB-INF/tags/libs/tags_libs.jsp"%>
<c:set var="tabsModal" value="success,error" scope="page"></c:set>
<c:forEach var="tab" items="${pageScope.tabsModal}">
	<div id="${pageScope.tab}Modal" class="modal fade ${pageScope.tab}Modal" tabindex="-1" role="dialog" data-backdrop="false">
		<c:import url="/WEB-INF/dialogs/modal_info.jsp"/>
	</div>
</c:forEach>