var ready = function() {

// add bootstrap styles to forms
$('form fieldset').addClass('form-group')
$('form label').addClass('form-control-label')
$('form input').addClass('form-control')
$('form textarea').addClass('form-control')

// replace empty imgs
$('img[src=""]').hide()
$('.favorites-message').hide()

if ( $('#index-filter').length ) {
  $('body').css('margin-top', '80px')
}

hasUserImg()
thumbnailResize()
recipeImgResize()
userImgResize()
hoverState()
};

$(document).ready(ready);
$(document).on("page:load", ready);

$(window).resize(function(){
  thumbnailResize()
  });

function thumbnailResize() {
  var win_wid = $('div.thumbnail').width();
  $('div.thumbnail').height(win_wid);
}

function recipeImgResize() {
  var win_wid = $('.item-img').width();
  $('.recipe .item-img img').css('max-height', win_wid).width('auto');
}

function userImgResize() {
  var win_w = $('.user.show .left').width();
  $('.item-img').width(win_w).height(win_w);
}

function hasUserImg() {
  $('.user.show .item-img span').hide()
    if ($('.user.show .item-img').css("background-image") == "none") {
      $('.user.show .item-img span').show()
    }
}

function hoverState() {
  $('.recipe.teaser').mouseenter(function() {
		$(this).children().children().children('.static-state').stop().animate({ opacity: 0.15 }, "fast");
    $(this).children().children().children('.active-state').stop().animate({ opacity: 1.0 }, "fast");
	})
  $('.recipe.teaser').mouseleave(function() {
    $(this).children().children().children('.static-state').stop().animate({ opacity: 1.0 }, "fast");
    $(this).children().children().children('.active-state').stop().animate({ opacity: 0.0 }, "fast");
  })
};
