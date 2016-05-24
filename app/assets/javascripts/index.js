var param_limit = 15
var sort_order = "default"
var param_to_sort_by = "date"
var search_query = ""

$(function() {
  $(".btn.btn-default.date").toggleClass('on');
  sort_params()
  search_params()
  lazy_load()
  prep();
    favoritePluralize()
})

function prep() {
  favoriteButtonListener()
  $(".thumbnail").on("mouseenter", function(){
    act($(this).find(".water"));
  })
}

function act(elem) {
  //console.log("running " + elem)
  if ( $(elem)[0] != undefined && $(elem)[0].animated != false) {
    $(elem)[0].animated = false

    $(elem)
     .animate({ height: '90%' }, (Math.random() * 1000) + 1000, "easeInOutBack")
     .animate({ height: '95%' }, (Math.random() * 1000) + 1000, "easeInOutBack", function() { $(elem)[0].animated = true });
  }
}

function sort_params() {
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
    search_query = $('.search-params').val()
    param_limit = 15

    $.ajax({
    method: "GET",
    url: "/sort",
    data: getData()
    }).done(function( data ) {
    $("#index-recipes").empty();
    $("#index-recipes").append(data);
    prep()
    thumbnailResize();
  });

  });
 }

 function search_params() {
  $('#search-btn').on("click", doSearch)
 }

 function doSearch() {
   search_query = $('.search-params').val()
    param_limit = 15
    // $('input#search.search-params').empty();
    // event.preventDefault();
    $.ajax({
      method: "GET",
      url: "/search",
      data: getData()
    }).done(function(data) {
      $("#index-recipes").empty();
      $("#index-recipes").append(data);
      prep()
      thumbnailResize();
    })
 }

function lazy_load() {
  var bottom = false;
  $(window).scroll(function() {
    if($(window).scrollTop() == $(document).height() - $(window).height() && bottom == false) {
      param_limit += 3
      $.ajax({
        method: "GET",
        url: "/sort",
        data: getData()
      }).done(function(data) {
        var curr = $(document).scrollTop();
        $("#index-recipes").empty();
        $("#index-recipes").append(data);
        prep();
        thumbnailResize();
        $(document).scrollTop(curr)
      }).fail(function(){
        bottom = true
      });
    }
  });
}

function getData() {
  return {sort: param_to_sort_by,
          tag: get_tag_from_url(),
          query: search_query,
          ingredient: get_ingredient_from_url(),
          limit: param_limit,
          order: sort_order};
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

function get_ingredient_from_url(){
  url = window.location.href
  ing = null
  if (url.indexOf("/ingredients/") != -1) {
    ing = url.split('/').pop()
    ing = ing.split("?")[0]
  }
  return ing
}
