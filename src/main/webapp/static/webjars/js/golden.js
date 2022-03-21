/**
 * 
 */
var initVerify = false;
var $hasPreload = false;
var $showing_modal = null;
/**
 * ScrollTop
 * @param $
 * @returns
 */
(function($) {
	"use strict";
	$('a.js-scroll-trigger[href*="#"]:not([href="#"])').click(function() {
		if (location.pathname.replace(/^\//, '') == this.pathname.replace(/^\//, '') && location.hostname == this.hostname) {
			var target = $(this.hash);
			target = target.length ? target : $('[name=' + this.hash.slice(1) + ']');
			if (target.length) {
				$('html, body').animate({scrollTop : target.offset().top}, 1000, "easeInOutExpo");
				return false;
			}
		}
	});
})(jQuery);

$(function() {
	cleanParamSession();
	$('#years-app').html(new Date().getFullYear());
	
	Waves.attach('.btn', ['waves-light']);
	Waves.attach('.dropdown-item', ['waves-light']);
	Waves.attach('.jobs-sidebar .list-sidebar li a', ['waves-effect']);
	Waves.attach('.navbar-collapse.nav-responsive .nav-link', ['waves-light']);
	Waves.init();
	
	$(window).scroll(function () {
		var scrollDistance = $(this).scrollTop();
		if (scrollDistance > 100) {$('.navbar-pc').addClass('topnav-collapse');} 
		else {$('.navbar-pc').removeClass('topnav-collapse');}
		if (scrollDistance > 250) {$('.to-top').fadeIn();} 
		else {$('.to-top').fadeOut();}
	});
	
	if (typeof NProgress != 'undefined') {NProgress.done();}
});
function resetError() {
	initVerify = false;
	$(".error").html("");
	$(".form-group").removeClass('has-error');
}
function scrollToID(ident) {
	$('html, body').animate({scrollTop: $($("#" + ident)).offset().top - 50}, 300, 'linear');
}
function scrollToFormID(field) {
	$('html, body').animate({scrollTop: $($("#" + field + "Form")).offset().top - 50}, 300, 'linear');
}
function showError(field, message, hasScroll) {
	$("#"+field+"Error").html(message);
	$("#"+field+"Form").addClass('has-error');
	if(hasScroll && !initVerify) {scrollToFormID(field);}
	if(!initVerify) {initVerify = true;}
}
function isValidLenght(field, min, max) {
	return field.length >= min && field.length <= max;
}
function isValidEmail(email) {
	var pattern = /^([\w-\.]+@([\w-]+\.)+[\w-]{2,4})?$/;
	return pattern.test(email);
}
function isValidPhone(phone) {
	var pattern = /^[0-9\\+\\.\\ -]{8,30}$/;
	return pattern.test(phone);
}
function initVerifyFields(fields, message, hasScroll) {
	fields.forEach(function (field) {
		if($("#"+field).val().trim() === "") {
			showError(field, message, hasScroll);
		}
	});
}
function setLangage(sprovider) {
	var uri = window.location.toString();
	if (uri.indexOf("?") > 0) {uri = uri.substring(0, uri.indexOf("?"));}
	else if (uri.indexOf("#") > 0) {uri = uri.substring(0, uri.indexOf("#"));}
	window.location.href = uri + "?lang=" + sprovider;
}
function hasPreload(field, preload) {
	if($hasPreload === preload) {return;}
	if($hasPreload = preload) {
		$("#"+field+"Form").addClass('has-preload');
	} else {
		$("#"+field+"Form").removeClass('has-preload');
	}
}
function showModalInfo(info, message) {
	if($showing_modal) {return;}
	var $infoModal = $("#"+info+"Modal");
	$infoModal.on('shown.bs.modal', function () {
		$showing_modal = $("#"+info+"Modal");
		setTimeout(function() {
			if($showing_modal) {
				$showing_modal.modal('hide');
			}
		}, 9000);
	}).on('hidden.bs.modal', function () {
		$showing_modal = null;
	});
	$(".provider-modal").html(message);
	$infoModal.modal('show');
}
function cleanParamSession() {
	var uri = window.location.toString();
	if (uri.indexOf(";") > 0) {
		var clean_uri = uri.substring(0, uri.indexOf(";"));
		window.history.replaceState({}, document.title, clean_uri);
	}
}









