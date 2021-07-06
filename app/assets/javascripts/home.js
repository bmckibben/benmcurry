
function main() {

(function () {
   'use strict';

	// Hide .navbar-custom first
	$(".navbar-custom").hide();
	
	// Fade in .navbar-custom
	$(function () {
		$(window).scroll(function () {
            // set distance user needs to scroll before we fadeIn navbar-custom
			if ($(this).scrollTop() > 200) {
				$('.navbar-custom').fadeIn();
			} else {
				$('.navbar-custom').fadeOut();
			}
		});

	
	});
	
	// Preloader */
	  	$(window).load(function() {

   	// will first fade out the loading animation 
    	$("#status").fadeOut("slow"); 

    	// will fade out the whole DIV that covers the website. 
    	$("#preloader").delay(500).fadeOut("slow").remove();      

  	}) 

   // Page scroll
  	$('a.page-scroll').click(function() {
        if (location.pathname.replace(/^\//,'') == this.pathname.replace(/^\//,'') && location.hostname == this.hostname) {
          var target = $(this.hash);
          target = target.length ? target : $('[name=' + this.hash.slice(1) +']');
          if (target.length) {
            $('html,body').animate({
              scrollTop: target.offset().top - 40
            }, 900);
            return false;
          }
        }
      });

    // Show Menu on Book
    $(window).bind('scroll', function() {
        var navHeight = $(window).height() - 100;
        if ($(window).scrollTop() > navHeight) {
            $('.navbar-default').addClass('on');
        } else {
            $('.navbar-default').removeClass('on');
        }
    });

    $('body').scrollspy({ 
        target: '.navbar-default',
        offset: 80
    })

  	$(document).ready(function() {
/*  	    $("#testimonial").owlCarousel({
        navigation : false, // Show next and prev buttons
        slideSpeed : 300,
        paginationSpeed : 400,
        singleItem:true
        });
*/
  	});

  	// Merch Isotope Filter
    $(window).load(function() {
        var $container = $('.merch-items');
        $container.isotope({
            filter: '*',
            animationOptions: {
                duration: 750,
                easing: 'linear',
                queue: false
            }
        });
        $('.cat a').click(function() {
            $('.cat .active').removeClass('active');
            $(this).addClass('active');
            var selector = $(this).attr('data-filter');
            $container.isotope({
                filter: selector,
                animationOptions: {
                    duration: 750,
                    easing: 'linear',
                    queue: false
                }
            });
            return false;
        });

    });
	
	

  // jQuery Parallax
  function initParallax() {
    $('#intro').parallax("100%", 0.3);
    $('#recipes').parallax("100%", 0.3);
    $('#aboutimg').parallax("100%", 0.3);	
    $('#testimonials').parallax("100%", 0.1);

  }
  initParallax();

  	// Pretty Photo
	$("a[rel^='prettyPhoto']").prettyPhoto({
		social_tools: false
	});	

}());

};

$(document).ready(function() {
  main();
});

function printMe(printDiv){
  var printContent = $("#"+printDiv).html();
  var printStyle = "";

  $('link[rel=stylesheet').each(function(){
    var href = $(this).attr('href');
    if (href) {
      printStyle += '<link type="text/css" rel="stylesheet" href="'+href+'" media="all">';
    }
  });

  var printHTML = '<!DOCTYPE html><html xml:lang="en-US" xmlns="http://www.w3.org/1999/xhtml" lang="en-us"><head>' + printStyle + '<body>' + printContent + '</body></html>'
  
  $('<iframe>', {
    name: 'printFrame',
    class: 'printFrame'
  })
  .appendTo('body:first')

  objFrame = window.frames['printFrame']

  objDoc = objFrame.document;
  objDoc.open();
  objDoc.write(printHTML);
  objDoc.close();

  objFrame.focus();
  objFrame.print();

  setTimeout(() => { $(".printFrame").remove();}, 1000);
};