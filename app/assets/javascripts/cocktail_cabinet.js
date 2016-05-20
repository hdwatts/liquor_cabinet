var ready = function() {
  $('form fieldset').addClass('form-group')
  $('form label').addClass('form-control-label')
  $('form input').addClass('form-control')
  $('form textarea').addClass('form-control')
};

$(document).ready(ready);
$(document).on("page:load", ready);
