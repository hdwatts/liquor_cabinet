$(function() {
  get_sort_params() 
})

function get_sort_params() {
  var data

  $('#index_filter .btn').on('click', function() {
    if ($( this ).hasClass('date')) {
      data = "date"
  } else if ($( this ).hasClass('difficulty')) {
      data = "difficulty"
  } else if ($( this ).hasClass('servings')) {
      data = 'servings'
    }
    $.ajax({
    method: "GET",
    url: "/recipe/sort",
    data: data
    }).done(function( data ) {
    $("#index_recipes").empty();
    $("#index_recipes").append(data);
  });

  });
 }


