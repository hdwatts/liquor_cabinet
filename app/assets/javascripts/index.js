$(function() {
  get_sort_params()
})

function get_sort_params() {
  var param_to_sort_by
  $('#index_filter .btn').on('click', function() {
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
    $("#index_recipes").empty();
    $("#index_recipes").append(data);
  });

  });
 }

 function get_search_params() {
  $('#search form').submit(function(event) {
    var search_params = $('#search form .search-params').val()
    // event.preventDefault();

    $.ajax({
      method: "POST",
      url: "/search",
      data: search_params,
    }).done(function(data) {
      $("#index_recipes").empty();
      $("#index_recipes").append(data);
    })
 })
 }
