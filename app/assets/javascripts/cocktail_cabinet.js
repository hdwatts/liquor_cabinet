var ready = function() {
  
// add bootstrap styles to forms
  $('form fieldset').addClass('form-group')
  $('form label').addClass('form-control-label')
  $('form input').addClass('form-control')
  $('form textarea').addClass('form-control')

// replace empty profile imgs with icons
  $('img[src=""]').hide()
  // $('img[src=""].profile-sm').hide().before('<span class="glyphicon glyphicon-user"></span>')
};

$(document).ready(ready);
$(document).on("page:load", ready);
