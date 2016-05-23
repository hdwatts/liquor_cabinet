$(function() {
  sort_params()
  search_params()
})

function sort_params() {
  var param_to_sort_by
  var sort_order 
  $('#index-filter .btn').on('click', function() {
    if ($( this ).hasClass('date')) {
      param_to_sort_by = 'date'
      $( this ).toggleClass('on')
      if ($( this ).hasClass('on')) {
        sort_order = 'default'
      } else { sort_order = 'reverse' }
      $( this ).siblings().removeClass('on')

  } else if ($( this ).hasClass('difficulty')) {
      param_to_sort_by = 'difficulty'
      $( this ).toggleClass('on')
      if ($( this ).hasClass('on')) {
        sort_order = 'default'
      } else { sort_order = 'reverse' }
      $( this ).siblings().removeClass('on')

  } else if ($( this ).hasClass('servings')) {
      param_to_sort_by = 'servings'
      $( this ).toggleClass('on')
      if ($( this ).hasClass('on')) {
        sort_order = 'default'
      } else { sort_order = 'reverse' }
      $( this ).siblings().removeClass('on')
      
  } else if ($( this ).hasClass('popularity')) {
      param_to_sort_by = 'popularity'
      $( this ).toggleClass('on')
      if ($( this ).hasClass('on')) {
        sort_order = 'default'
      } else { sort_order = 'reverse' }
      $( this ).siblings().removeClass('on')
    }
    $.ajax({  
    method: "GET",
    url: "/recipe/sort",
    data: {sort: param_to_sort_by, tag: get_tag_from_url(), order: sort_order}
    }).done(function( data ) {
    $("#index-recipes").empty();
    $("#index-recipes").append(data);
  });

  });
 }

 function search_params() {
  $('#search-btn').on("click", function(event) {
    var search_params = $('.search-params').val()
    // $('input#search.search-params').empty();
    // event.preventDefault();
    $.ajax({
      method: "GET",
      url: "/search",
      data: {query: search_params}
    }).done(function(data) {
      $("#index-recipes").empty();
      $("#index-recipes").append(data);
    })
 })
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
