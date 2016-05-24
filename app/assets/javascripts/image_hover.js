$(document).ready(function(){
  alterImageOpacityOnHover()
});


function alterImageOpacityOnHover() {
  $('img.thumbnail').hover(function() {
		$(this).stop().animate({ opacity: 0.25 }, "fast");
    // $(this).find('.description')removeClass('hide');
	},
	function() {
		$(this).stop().animate({ opacity: 1.0 }, "fast");
    // $(this).find('.description')addClass('hide');
	})
};
