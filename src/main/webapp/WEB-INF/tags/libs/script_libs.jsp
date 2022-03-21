<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<script src="<c:url value="/static/webjars/js/lib/jquery/jquery.min.js" />"></script>
<script src="<c:url value="/static/webjars/js/lib/popper/popper.min.js" />"></script>
<script src="<c:url value="/static/webjars/js/lib/bootstrap/bootstrap.js" />"></script>
<script src="<c:url value="/static/webjars/js/lib/jquery/jquery.easing.min.js" />"></script>
<script src="<c:url value="/static/webjars/js/lib/nprogress/nprogress.js" />"></script>
<script src="<c:url value="/static/webjars/js/lib/waves/waves.js" />"></script>
<script type="text/javascript">
	var serverContext = '<c:url value="/" />';
	
	$(function() {
		if (typeof NProgress != 'undefined') {NProgress.start();}
		cleanServerContext();
	});
	
	function cleanServerContext() {
		if (serverContext.indexOf(";") > 0) {
			serverContext = serverContext.substring(0, serverContext.indexOf(";"));
		}
	}
	
</script>