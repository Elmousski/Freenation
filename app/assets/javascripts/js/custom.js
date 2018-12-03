(function($){
	"use strict";

	$(window).on('load', function(){
		$('#status').fadeOut();
		$('#preloader').delay(350).fadeOut('fast');
		$(window).stellar({});
	});

	/*====== countdown ========*/
	$('[data-countdown]').each(function () {
		var $this = $(this),
			finalDate = $(this).data('countdown');
		$this.countdown(finalDate, function (event) {
			$this.html(event.strftime('<ul><li><span class="cdown days"><span class="time-count">%-D</span><p class="day-css">Days</p></span></li><li><span class="cdown hour"><span class="time-count">%-H</span> <p class="day-css">Hour</p></span><l/i><li><span class="cdown minutes"><span class="time-count">%M</span> <p class="day-css">Min</p></span></li><li> <span class="cdown second"><span class="time-count">%S</span> <p class="day-css">Sec</p></span></li></ul>'));
		});
	});

	/*====== Map Pointer ========*/
	$('.mapp').addClass('scrolloff');

	$('#overlay').on("mouseup", function() {
	  	$('.mapp').addClass('scrolloff');
  	});
	$('#overlay').on("mousedown", function() {
	  	$('.mapp').removeClass('scrolloff');
  	});
	$(".map").mouseleave(function() {
	  	$('.mapp').addClass('scrolloff');
	});

	/*====== jQuery MeanMenu ========*/
	jQuery('nav').meanmenu();
  
	/*====== wow js ========*/
	new WOW().init();

	/*====== counter ========*/
	$('.counter').counterUp({
		delay: 10,
		time: 1000
	}); 
	
	/*====== carasol destination ========*/
	$('.destination-slider-active').owlCarousel({
		loop:true,
		margin:10,
		nav:true,
		autoplay:false,
		autoplayTimeout:1000,
		animateOut:true,
		animateIn:true,
		responsive:{
			0:{
				items:1
			},
			600:{
				items:3
			},
			1000:{
				items:5
			}
		}
	});

	/*====== Testimonial Carousel Slick ========*/
	$('.slider-for').slick({
		slidesToShow: 1,
		slidesToScroll: 1,
		arrows: false,
		fade: true,
		asNavFor: '.slider-nav',
		dots: false,
	});
	
	$('.slider-nav').slick({
		slidesToShow:3,
		slidesToScroll:1,
		asNavFor: '.slider-for',
		dots: false,
		centerMode: true,
		centerPadding: '0px',
		focusOnSelect: true,
		variableWidth: false,
		arrows: false,
		autoplay: false,
		responsive: [
			{
			  breakpoint: 768,
			  settings: {
				arrows: false,
				centerMode: true,
				centerPadding: '0px',
				slidesToShow: 3
			  }
			},
			{
			  breakpoint: 480,
			  settings: {
				arrows: false,
				centerMode: true,
				centerPadding: '0px',
				slidesToShow: 3
			  }
			}
		]
	});

	/*====== partner slider ========*/
	$('.partner-slider-active').owlCarousel({
		loop:true,
		margin:20,
		nav:false,
		autoplay:false,
		autoplayTimeout:1000,
		animateOut:true,
		animateIn:true,
		responsive:{
			0:{
				items:2
			},
			600:{
				items:3
			},
			1000:{
				items:5
			}
		}
	});

	/*====== tab js ========*/
	$(function(){var b="fadeInLeft";var c;var a;d($("#myTab1 a"),$("#tab-content1"));function d(e,f,g){e.click(function(i){i.preventDefault();$(this).tab("show");var h=$(this).data("easein");if(c){c.removeClass(a);}if(h){f.find("div.active").addClass("animated "+h);a=h;}else{if(g){f.find("div.active").addClass("animated "+g);a=g;}else{f.find("div.active").addClass("animated "+b);a=b;}}c=f.find("div.active");});}$("a[rel=popover]").popover().click(function(f){f.preventDefault();if($(this).data("easein")!=undefined){$(this).next().removeClass($(this).data("easein")).addClass("animated "+$(this).data("easein"));}else{$(this).next().addClass("animated "+b);}});});
	$(function(){var b="fadeInLeft";var c;var a;d($("#myTab2 a"),$("#tab-content2"));function d(e,f,g){e.click(function(i){i.preventDefault();$(this).tab("show");var h=$(this).data("easein");if(c){c.removeClass(a);}if(h){f.find("div.active").addClass("animated "+h);a=h;}else{if(g){f.find("div.active").addClass("animated "+g);a=g;}else{f.find("div.active").addClass("animated "+b);a=b;}}c=f.find("div.active");});}$("a[rel=popover]").popover().click(function(f){f.preventDefault();if($(this).data("easein")!=undefined){$(this).next().removeClass($(this).data("easein")).addClass("animated "+$(this).data("easein"));}else{$(this).next().addClass("animated "+b);}});});
	
	/*====== date picker ========*/
	$( "#datepicker" ).datepicker();
	$( "#datepicker1" ).datepicker();
	$( "#datepicker2" ).datepicker();
	$( "#datepicker3" ).datepicker();
	$( "#datepicker4" ).datepicker();
	$( "#pickupdate" ).datepicker();
	$( "#shippickupdate" ).datepicker();
	$( "#daperture_date" ).datepicker();
	$( "#return_date" ).datepicker();
	$( "#booking-date" ).datepicker();

	/*====== select option ========*/
	$("#standard1").customselect();
	$("#standard2").customselect();
	$("#standard3").customselect();
	$("#standard4").customselect();
	$("#nosearch").customselect({search: false});
	$("#nosearch1").customselect({search: false});
	$("#nosearch2").customselect({search: false});


	/*====== Scroll to top ========*/
	jQuery('.to-top').on('click', function(event) {
	  	jQuery('html,body').animate({
		  	scrollTop: 0
	  	}, 1000);
	});

	jQuery(window).scroll(function() {
	  	if (jQuery(window).scrollTop() > 100) {
		  	jQuery('.to-top').fadeIn(1000);
	  	} else {
		  	jQuery('.to-top').fadeOut(1000);
	  	};
	});

	/*====== contact form ========*/
	$('#contactform').submit(function(){
		var action = $(this).attr('action');
		$("#message").slideUp(750,function() {
		$('#message').hide();
		$('#submit')
			.after('')
			.attr('disabled','disabled');
		$.post(action, {
			name: $('#name').val(),
			email: $('#email').val(),
			subject: $('#subject').val(),
			comments: $('#comments').val()
		},
			function(data){
				document.getElementById('message').innerHTML = data;
				$('#message').slideDown('slow');
				$('#contactform img.loader').fadeOut('slow',function(){$(this).remove()});
				$('#submit').removeAttr('disabled');
				if(data.match('success') != null) $('#contactform').slideUp('slow');
			}
		);
		});
		return false;
	});

	/*====== home version 5 slider ========*/
	$('.slider-bg-acive').owlCarousel({
		loop:true,
		nav:false,
		autoplay:true,
		autoplayTimeout:11000,
		mergeFit:true,
		responsive:{
			0:{
				items:1
			},
			600:{
				items:1
			},
			1000:{
				items:1
			}
		}
	});
	
	/*====== home 5 testimonoial  ========*/
	$('.testimonial-5-active').owlCarousel({
		loop:true,
		margin:10,
		nav:true,
		dots:true,
		autoplay:true,
		autoplayTimeout:11000,
		responsive:{
			0:{
				items:1
			},
			600:{
				items:1
			},
			1000:{
				items:1
			}
		}
	}); 

	/*====== package slider ========*/
	$('.popular-packages-carasoul').owlCarousel({
		loop:true,
		margin:20,
		nav:true,
		autoplay:false,
		autoplayTimeout:1000,
		navText:['<i class="fa fa-angle-left"></i>','<i class="fa fa-angle-right"></i>'],
		responsive:{
			0:{
				items:1
			},
			600:{
				items:2
			},
			1000:{
				items:3
			}
		}
	});

	/*====== Magnific Popup for video ========*/
	$('.video_iframe').magnificPopup({
		type: 'iframe',
		iframe: {
		  markup: '<div class="mfp-iframe-scaler">' +
			  '<div class="mfp-close"></div>' +
			  '<iframe class="mfp-iframe" frameborder="0" allowfullscreen></iframe>' +
			  '</div>',
	  	patterns: {
			youtube: {
			  	index: 'youtube.com/',
			  	id: 'v=',
			  	src: 'http://www.youtube.com/embed/%id%?autoplay=1'
			},
		 	vimeo: {
		  	index: 'vimeo.com/',
		  	id: '/',
		  	src: '//player.vimeo.com/video/%id%?autoplay=1'
		},
		gmaps: {
		  	index: '//maps.google.',
		  	src: '%id%&output=embed'
		}
		  	},
		  	srcAction: 'iframe_src'
		}
	});

	/*====== slick partner slider ========*/
	$('.partner-slider-2').slick({
		infinite: true,
		slidesToShow: 5,
		slidesToScroll: 5,
		autoplay: true,
		dots: false,
		arrows : false,
		autoplay: true,
		autoplaySpeed: 5000,
		responsive: [
		{
	  	breakpoint: 1024,
		  	settings: {
				slidesToShow: 3,
				slidesToScroll: 3,
				infinite: true,
				dots: false
		  	}
		},
		{
	  	breakpoint: 600,
		  	settings: {
				slidesToShow: 2,
				slidesToScroll: 2
		  	}
		},
		{
	  	breakpoint: 480,
		  	settings: {
				slidesToShow: 1,
				slidesToScroll: 1
		  	}
		}]
	});

	/*====== masonary gallery ========*/
 	var $grid1 = $('.grid-3').imagesLoaded(function() {
       	$grid1.isotope({
        	itemSelector: '.grid-item',
        	percentPosition: true,
       		masonry: {
          		columnWidth:1
        	}
      	}); 
    });
	 
    $('.grid-3').each(function() {
		$(this).magnificPopup({
        delegate: 'a',
        type: 'image',
        gallery: {
			enabled: true
        },
			removalDelay: 300,
			mainClass: 'mfp-fade'
		});
    });

	/*====== select 2 ========*/
	$(".location-results").select2({
  		minimumResultsForSearch: Infinity
	});

  	$(".location-search").select2({
		maximumSelectionLength: 3
	});


	//Testimonial Carousel (Slick2)
  	$('.slider-for-two').slick({
		slidesToShow: 1,
		slidesToScroll: 1,
		arrows: false,
		fade: true,
		asNavFor: '.slider-nav-two',
  	});


  	$('.slider-nav-two').slick({
		slidesToShow:7,
		slidesToScroll:1,
		asNavFor: '.slider-for-two',
		dots: false,
		centerMode: true,
		centerPadding: '0px',
		focusOnSelect: true,
		variableWidth: false,
		arrows: false,
		focusOnSelect: true,
		responsive: [
	  	{
			breakpoint: 600,
			settings: {
			  slidesToShow:5,
			  slidesToScroll: 2
			}
	  	},
	  	{
			breakpoint: 480,
			settings: {
			  	slidesToShow: 3,
			  	slidesToScroll: 1
			}
	  	}] 
	});

	$('.ImageBackground').each(function(){
		var $this = $(this),
			$imgHolder = $this.children('.ImageBackground__holder'),
			thisIMG = $imgHolder.children().attr('src'),
			thisURL = 'url('+thisIMG+')';
			$imgHolder.css('background-image', thisURL);

		if ($this.hasClass('js-Parallax') && windowWidth >768) {
			$imgHolder.regentParallax();
		}
	});

})(jQuery);
