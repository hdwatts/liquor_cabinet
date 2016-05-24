var ready = function() {
  
// add bootstrap styles to forms
  $('form fieldset').addClass('form-group')
  $('form label').addClass('form-control-label')
  $('form input').addClass('form-control')
  $('form textarea').addClass('form-control')

// replace empty profile imgs with icons
  $('img[src=""]').hide()
//
  thumbnailResize()
  recipeImgResize()
  userImgResize()
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

 