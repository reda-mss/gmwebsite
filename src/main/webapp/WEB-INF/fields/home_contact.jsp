<%@ include file="/WEB-INF/tags/libs/form_libs.jsp"%>
<div class="vocation-home b-yellow">
	<div class="container">
		<p class="text-center m-b-0"><spring:message code="txt.vocation" /></p>
	</div>
</div>
<div class="contact-home b-primary">
	<div class="container">
		<div class="row">
			<div class="col-md-4">
				<div class="contact-info">
					<h4 class="h-white m-b-0"><spring:message code="title.contact1" /></h4>
				</div>
				<ul class="list-unstyled m-t-80">
					<li>
						<i class="fa fa-map-marker-alt i-24 i-link pull-left"></i>
						<span class="i-text it-22 i-wgray">
							<spring:message code="app.adr1" />
							<span class="block"><spring:message code="app.adr2" /></span>
							<span class="block"><spring:message code="app.adr3" /></span>
						</span>
					</li>
					<li class="m-t-20">
						<i class="fa fa-phone i-24 i-link pull-left"></i>
						<span class="i-text it-22 i-wgray">
							<span class="font-bold"><spring:message code="app.phone" /></span>
							<small class="block"><spring:message code="alt.phone" /></small>
						</span>
					</li>
					<li class="m-t-20">
						<i class="fa fa-envelope i-24 i-link pull-left"></i>
						<span class="i-text it-22">
							<a href="mailto:<spring:message code="app.mail" />" class="i-yellow transition-35"><spring:message code="app.mail" /></a>
						</span>
					</li>
				</ul>
			</div>
			<div class="col-md-8">
				<div class="contact-info">
					<h4 class="h-white m-b-0"><spring:message code="title.contact2" /></h4>
				</div>
				<form:form name="contactForm" action="/" method="POST" modelAttribute="contact" enctype="utf8" novalidate="novalidate">
					<div class="row m-t-80 m-b-40">
						<div class="col-md-6">
							<spring:bind path="name">
								<div id="nameForm" class="form-group">
									<c:set var="lblName" scope="page"><spring:message code="lbl.name"/></c:set>
									<form:input class="form-control" type="text" path="name" placeholder="${pageScope.lblName}"/>
									<span id="nameError" class="error"></span>
								</div>
							</spring:bind>
							<spring:bind path="email">
								<div id="emailForm" class="form-group">
									<c:set var="lblEmail" scope="page"><spring:message code="lbl.mail"/></c:set>
									<form:input class="form-control" type="email" path="email" placeholder="${pageScope.lblEmail}"/>
									<span id="emailError" class="error"></span>
								</div>
							</spring:bind>
							<spring:bind path="phone">
								<div id="phoneForm" class="form-group">
									<c:set var="lblPhone" scope="page"><spring:message code="lbl.phone"/></c:set>
									<form:input class="form-control" type="text" path="phone" placeholder="${pageScope.lblPhone}"/>
									<span id="phoneError" class="error"></span>
								</div>
							</spring:bind>
						</div>
						<div class="col-md-6">
							<spring:bind path="message">
								<div id="messageForm" class="form-group">
									<c:set var="lblMessage" scope="page"><spring:message code="lbl.message"/></c:set>
									<form:textarea class="form-control form-area" rows="2" path="message" placeholder="${pageScope.lblMessage}" />
									<span id="messageError" class="error"></span>
								</div>
							</spring:bind>
							<div class="form-group">
								<div id="submitContactForm" class="form-submit form-submit-right">
									<button type="submit" class="btn btn-yellow btn-big btn-submit">
										<spring:message code="btn.send"/><i class="fa fa-long-arrow-alt-right i-22 text-right"></i></button>
								</div>
							</div>
						</div>
					</div>
				</form:form>
			</div>
		</div>
		<hr class="my-2 hr-white">
		<div id="call-home" class="row">
			<div class="col-md-4">
				<div class="contact-info">
					<h4 class="h-white m-b-0"><spring:message code="btn.golden" /></h4>
				</div>
			</div>
			<div class="col-md-8">
				<form:form name="callForm" action="/" method="POST" modelAttribute="call" enctype="utf8" novalidate="novalidate">
					<div class="row m-t-40">
						<div class="col-md-8 col-lg-9">
							<spring:bind path="number">
								<div id="numberForm" class="form-group">
									<c:set var="lblMobile" scope="page"><spring:message code="lbl.mobile"/></c:set>
									<form:input class="form-control" type="text" path="number" placeholder="${pageScope.lblMobile}"/>
									<span id="numberError" class="error"></span>
								</div>
							</spring:bind>
						</div>
						<div class="col-md-4 col-lg-3">
							<div class="form-group">
								<div id="submitCallForm" class="form-submit form-submit-center block">
									<button type="submit" class="btn btn-yellow btn-big btn-submit btn-block">
										<spring:message code="btn.call"/><i class="fa fa-long-arrow-alt-right i-22 text-right"></i></button>
								</div>
							</div>
						</div>
					</div>
				</form:form>
			</div>
		</div>
	</div>
</div>