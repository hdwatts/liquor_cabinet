$(function(){

  // add bootstrap classes to forms
  $('form fieldset').addClass('form-group')
  $('form label').addClass('form-control-label')
  $('form input').addClass('form-control')
  $('form textarea').addClass('form-control')

})


$(function() {
  var ingredient = [""
      <% Ingredient.all.each do |ingredient| %>
        , "<%= ingredient.name %>"
      <% end %>
    ];

  $(".new_recipe").on('submit', function(e){
    updateHiddenAll();
  })

  $(".ui-autocomplete-input").each(function(){
    var hidden = $(this).parent().children()[1];
    $(this).val($(hidden).val());
  });

  $(document).on('keydown.autocomplete', ".ingredient_input", function() {
      $(this).autocomplete({source: ingredient});
  });
});

function updateHiddenAll() {
  $(".ui-autocomplete-input").each(function(){
    var hidden = $(this).parent().children()[1];
    hidden.val($(this).val());
  });
}

function addIngredient(){
  var x = $('.blank-amount-ingredient-field')
  x.removeClass('blank-amount-ingredient-field');

  var num_amounts = parseInt($("#num_amounts").val());
  $("#num_amounts").val(num_amounts + 1);
  //update [X] and _X_
  var hiddenhtml = x.html().replace(/\[\d+\]/g, "["+(num_amounts + 1)+"]");
  hiddenhtml = hiddenhtml.replace(/_\d+_/, "_"+(num_amounts + 1)+"_");

  $('#amounts-ingredients').append('<div class="blank-amount-ingredient-field">'
                                    + hiddenhtml
                                    + '</div>');

  return false;
}

function removeIngredient(element){
  var x = $(element).parent();
  x.remove();
  var num_amounts = parseInt($("#num_amounts").val());
  $("#num_amounts").val(num_amounts - 1);

  return false;
}
