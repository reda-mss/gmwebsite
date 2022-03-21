<%@ include file="/WEB-INF/tags/libs/script_libs.jsp"%>
<script src="<c:url value="/static/webjars/js/golden.js" />"></script>
<script type="text/javascript">
	
	$(function() {
		$('form[name=contactForm]').submit(function(event) {
			registerContact(event);
		});
	});
	
	function isValidForm() {
		var fields = ["name", "email", "phone", "message"];
		initVerifyFields(fields, '<spring:message code="message.input.required"/>', false);
		if(initVerify) {
			return false;
		}
		if(!isValidLenght($("#name").val(), 3, 90)) {
			showError("name", '<spring:message code="message.input.lenghts" arguments="3,90"/>', false);
		}
		if(!isValidEmail($("#email").val())) {
			showError("email", '<spring:message code="message.input.invalide" javaScriptEscape="true"/>', false);
		}
		if(!isValidPhone($("#phone").val())) {
			showError("phone", '<spring:message code="message.input.invalide" javaScriptEscape="true"/>', false);
		}
		if(!isValidLenght($("#message").val(), 10, 512)) {
			showError("message", '<spring:message code="message.input.lenghts" arguments="10,250"/>', false);
		}
		if(initVerify) {
			return false;
		}
		return true;
	}
	
	function registerContact(e) {
		e.preventDefault();
		resetError();
		if(!isValidForm()) {return;}
		submitForm();
	}
	
	function submitForm() {
		if($hasPreload) {return;}
		hasPreload('submitContact', true);
		var formData = $('form[name=contactForm]').serialize();
		$.post(serverContext + "contact-home", formData, function(data) {
			if(data.message === "success") {
				showModalInfo("success", '<spring:message code="message.success.contact"/>');
				$('form[name=contactForm]')[0].reset();
			}
		}).fail(function(data) {
			try{
				if(data.responseJSON.error.indexOf("Internal") > -1) {
					showModalInfo("error", data.responseJSON.message);
				} else {
					var errors = $.parseJSON(data.responseJSON.message);
					$.each(errors, function(index, item) {
						showError(item.field, item.defaultMessage, false);
					});
				}
			} catch(e) {
				showModalInfo("error", '<spring:message code="message.error.email" javaScriptEscape="true"/>');
			}
		}).always(function(data) {
			hasPreload('submitContact', false);
		});
	}
	
</script>