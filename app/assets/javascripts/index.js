$(function() {
  get_sort_params()
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
    data: {sort: param_to_sort_by, tag: get_tag_from_url()}
    }).done(function( data ) {
    $("#index-recipes").empty();
    $("#index-recipes").append(data);
  });

  });
 }

 function get_tag_from_url(){
  url = window.location.href
  tag = null
  if (url.indexOf("/tags/") != -1) {
    tag = url.split('/').pop()
    tag = tag.split("?")[0]
  }
  return tag
}
