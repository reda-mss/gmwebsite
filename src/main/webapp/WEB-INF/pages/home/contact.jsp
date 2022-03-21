<%@ include file="/WEB-INF/tags/libs/form_libs.jsp"%>
<div class="welcome-about" style="background: url('<c:url value="/static/picts/about.jpg" />') no-repeat center center; background-size: cover;">
<div class="overlay"></div>
<div class="welcome-content">
    <div class="container h-100">
        <div class="flexed flex-colone h-100">
            <div class="welcome-body my-auto">
                <ol class="bread-crumb font-small">
                    <li><a href="<c:url value="/"/>" class="transition-35">
                            <spring:message code="menu.home1" /></a></li>
                    <li>
                        <spring:message code="menu.home5" />
                    </li>
                </ol>
                <div class="welcome-header">
                    <h1 class="h-white font-bold">
                        <spring:message code="btn.contact" />
                    </h1>
                </div>
            </div>
        </div>
    </div>
</div>
</div>
<div class="animated slow fadeIn">
    <div class="about-company">
        <div class="container">
            <p class="text-justify">
                <spring:message code="txt.contact1" />
            </p>
            <div class="row m-t-40">
                <div class="col-sm-6 col-md-6 col-lg-3 m-b-20">
                    <i class="fa fa-phone icon-circle pull-left"></i>
                    <span class="block it-24">
                        <span class="font-small i-gray">
                            <spring:message code="lbl.contact1" /></span>
                        <span class="block font-strong">
                            <spring:message code="app.phone" /></span>
                    </span>
                </div>
                <div class="col-sm-6 col-md-6 col-lg-3 m-b-20">
                    <i class="fa fa-fax icon-circle pull-left"></i>
                    <span class="block it-24">
                        <span class="font-small i-gray">
                            <spring:message code="lbl.contact2" /></span>
                        <span class="block font-strong">
                            <spring:message code="app.phone" /></span>
                    </span>
                </div>
                <div class="col-sm-6 col-md-6 col-lg-3 m-b-20">
                    <i class="fa fa-envelope icon-circle pull-left"></i>
                    <span class="block it-24">
                        <span class="font-small i-gray">
                            <spring:message code="lbl.contact3" /></span>
                        <span class="block font-strong">
                            <spring:message code="app.mail" /></span>
                    </span>
                </div>
                <div class="col-sm-6 col-md-6 col-lg-3 m-b-20">
                    <i class="fa fa-map-marker-alt icon-circle pull-left"></i>
                    <span class="block it-24">
                        <span class="font-small i-gray">
                            <spring:message code="app.adr2" /></span>
                        <span class="block font-strong">
                            <spring:message code="app.adr3" /></span>
                    </span>
                </div>
            </div>
        </div>
    </div>
    <div class="contact-company">
        <div class="container">
            <h2 class="h-white">
                <spring:message code="txt.contact2" />
            </h2>
            <div class="m-t-40">
                <form:form name="contactForm" action="/" method="POST" modelAttribute="contact" enctype="utf8" novalidate="novalidate">
                    <spring:bind path="message">
                        <div id="messageForm" class="form-group">
                            <c:set var="lblMessage" scope="page">
                                <spring:message code="lbl.message1" />
                            </c:set>
                            <form:textarea class="form-control form-area" rows="2" path="message" placeholder="${pageScope.lblMessage}" />
                            <span id="messageError" class="error"></span>
                        </div>
                    </spring:bind>
                    <div class="row m-t-20">
                        <div class="col-md-4">
                            <spring:bind path="name">
                                <div id="nameForm" class="form-group">
                                    <c:set var="lblName" scope="page">
                                        <spring:message code="lbl.name" /> *</c:set>
                                    <form:input class="form-control" type="text" path="name" placeholder="${pageScope.lblName}" />
                                    <span id="nameError" class="error"></span>
                                </div>
                            </spring:bind>
                        </div>
                        <div class="col-md-4">
                            <spring:bind path="email">
                                <div id="emailForm" class="form-group">
                                    <c:set var="lblEmail" scope="page">
                                        <spring:message code="lbl.mail" /> *</c:set>
                                    <form:input class="form-control" type="email" path="email" placeholder="${pageScope.lblEmail}" />
                                    <span id="emailError" class="error"></span>
                                </div>
                            </spring:bind>
                        </div>
                        <div class="col-md-4">
                            <spring:bind path="phone">
                                <div id="phoneForm" class="form-group">
                                    <c:set var="lblPhone" scope="page">
                                        <spring:message code="lbl.phone" /> *</c:set>
                                    <form:input class="form-control" type="text" path="phone" placeholder="${pageScope.lblPhone}" />
                                    <span id="phoneError" class="error"></span>
                                </div>
                            </spring:bind>
                        </div>
                    </div>
                    <div class="form-group">
                        <div id="submitContactForm" class="form-submit form-submit-right">
                            <button type="submit" class="btn btn-yellow btn-big btn-submit">
                                <spring:message code="btn.send" /><i class="fa fa-long-arrow-alt-right i-22 text-right"></i></button>
                        </div>
                    </div>
                </form:form>
            </div>
        </div>
    </div>
</div>