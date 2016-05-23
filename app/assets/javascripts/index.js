$(function() {
  get_sort_params()
  // get_description()
})

function get_sort_params() {
  var param_to_sort_by
  $('#index-filter .btn').on('click', function() {
    if ($( this ).hasClass('date')) {
      param_to_sort_by = 'date'
  } else if ($( this ).hasClass('difficulty')) {
      param_to_sort_by = 'difficulty'
  } else if ($( this ).hasClass('servings')) {
      param_to_sort_by = 'servings'
  } else if ($( this ).hasClass('popularity')) {
      param_to_sort_by = 'popularity'
    }
    $.ajax({
    method: "GET",
    url: "/recipe/sort",
    data: param_to_sort_by
    }).done(function( data ) {
    $("#index-recipes").empty();
    $("#index-recipes").append(data);
  });

  });
 }

// Description shows when image index hovered over.
 // function get_description(){
 //   var recipeDescr = $('h3.recipe-descrp').text()
 //   $.('span.description').append(recipeDescr)
 // }
