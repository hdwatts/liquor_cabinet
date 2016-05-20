$(function() {
  get_sort_params() 
})

function get_sort_params() {
  var param_to_sort_by
  $('#index_filter .btn').on('click', function() {
    if ($( this ).hasClass('date')) {
      param_to_sort_by = "date"
  } else if ($( this ).hasClass('difficulty')) {
      param_to_sort_by = "difficulty"
  } else if ($( this ).hasClass('servings')) {
      param_to_sort_by = 'servings'
    }
    $.ajax({
    method: "GET",
    url: "/recipe/sort",
    data: param_to_sort_by
    }).done(function( data ) {
    $("#index_recipes").empty();
    $("#index_recipes").append(data);
  });

  });
 }


