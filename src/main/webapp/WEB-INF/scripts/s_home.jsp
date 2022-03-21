<%@ include file="/WEB-INF/tags/libs/script_libs.jsp"%>
<script src="<c:url value="/static/webjars/js/lib/owlcarousel/owl_carousel.js" />"></script>
<script src="<c:url value="/static/webjars/js/lib/animate/animate_it.js" />"></script>


<script src="<c:url value="/static/webjars/js/golden.js" />"></script>
<script type="text/javascript">
	$(function() {
		$('.diapos-owl').find('.owl-carousel').owlCarousel({
			items: 2,
			singleItem: true,
	        loop: true,
	        autoplay: true,
	        smartSpeed: 300,
	        autoplayTimeout: 9000,
	        autoplayHoverPause: true,
	        margin: 0,
	        nav: false,
	        dots: true,
	        dotsSpeed: 300,
	        responsive: {0: {items: 1}, 600: {items: 1}, 1000: {items: 1}},
	        animateOut: 'onne fadeOut',
            animateIn: 'onne fadeIn'
		});
		$('.diapos-owl').find('.owl-carousel').on('changed.owl.carousel', function(e) {
			$('.diapos-content').hide();
			setTimeout(function() {$('.diapos-content').show();}, 500);
		});
		$('.img-parallax').each(function () {
		    var img = $(this);
		    var imgParent = $(this).parent();
		    function parallaxImg() {
		        var speed = img.data('speed');
		        var imgY = imgParent.offset().top;
		        var winY = $(this).scrollTop();
		        var winH = $(this).height();
		        var parentH = imgParent.innerHeight();
		        var winBottom = winY + winH;
		        if (winBottom > imgY && winY < imgY + parentH) {
		            var imgBottom = ((winBottom - imgY) * speed);
		            var imgTop = winH + parentH;
		            var imgPercent = ((imgBottom / imgTop) * 100) + (50 - (speed * 50));
		        }
		        img.css({
		            top: imgPercent + '%',
		            transform: 'translate(-50%, -' + imgPercent + '%)'
		        });
		    }
		    $(document).on({
		        scroll: function () {parallaxImg();},
		        ready: function () {parallaxImg();}
		    });
		});
		setTimeout(function() {$('.mesh-loader').fadeOut(200);}, 100);
	});
</script>
<c:import url="/WEB-INF/scripts/script_contact.jsp"/>