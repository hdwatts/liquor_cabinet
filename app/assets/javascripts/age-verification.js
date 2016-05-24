// // Append the prompt to the end of the document
// 	$('body').append(modal_screen, modal_content);
//
// 	// Center the box
// 	av_positionPrompt();
//
// 	modal_content.find('a.av_btn').on('click', av_setCookie);
// };
//
// av_setCookie = function(e) {
// 	e.preventDefault();
//
// 	var is_legal = $(e.currentTarget).attr('rel');
//
// 	$.cookie('is_legal', is_legal, {
// 		expires: 30,
// 		path: '/'
// 	});
//
// 	if (is_legal == "yes") {
// 		av_closeModal();
// 		$(window).off('resize');
// 	} else {
// 		av_showRegret();
// 	}
// };
//
// av_closeModal = function() {
// 	modal_content.fadeOut();
// 	modal_screen.fadeOut();
// };
//
// av_showRegret = function() {
// 	modal_screen.addClass('nope');
// 	modal_content.find('#modal_content_wrapper').hide();
// 	modal_content.find('#modal_regret_wrapper').show();
// };
//
// av_positionPrompt = function() {
// 	var top = ($(window).outerHeight() - $('#modal_content').outerHeight()) / 2;
// 	var left = ($(window).outerWidth() - $('#modal_content').outerWidth()) / 2;
// 	modal_content.css({
// 		'top': top,
// 		'left': left
// 	});
//
// 	if (modal_content.is(':hidden') && ($.cookie('is_legal') != "yes")) {
// 		modal_content.fadeIn('slow')
// 	}
// };
