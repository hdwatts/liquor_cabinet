var param_limit = 15
var sort_order = "default"
var param_to_sort_by = "date"
var search_query = ""
var scrolling = false;
var bottom = false

$(function() {
  sort_params()
  search_params()
  lazy_load()
  prep();
  favoritePluralize()
})

function prep() {
  favoriteButtonListener()
  hasUserImg()
  thumbnailResize()
  recipeImgResize()
  userImgResize()
  hoverState()
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

function toggleClasses(elem, flip){
  $( elem ).toggleClass('on')
  $( elem ).children('.glyphicon').removeClass('glyphicon-menu-down')
  $( elem ).children('.glyphicon').removeClass('glyphicon-triangle-bottom')
  $( elem ).children('.glyphicon').removeClass('glyphicon-triangle-top')
  if ($( elem ).hasClass('on')) {
    var topBottom = 'top'
    if (flip) {
      topBottom = 'bottom'
    }
    $( elem ).children('.glyphicon').addClass('glyphicon-triangle-'+topBottom)
    sort_order = 'default'
  } else {
    var topBottom = 'bottom'
    if (flip) {
      topBottom = 'top'
    }
    $( elem ).children('.glyphicon').addClass('glyphicon-triangle-'+topBottom)
    sort_order = 'reverse'
  }
  $( elem ).siblings().removeClass('on')
  $( elem ).siblings().children('.glyphicon').removeClass('glyphicon-triangle-top')
  $( elem ).siblings().children('.glyphicon').removeClass('glyphicon-triangle-bottom')
  $( elem ).siblings().children('.glyphicon').addClass('glyphicon-menu-down')
}

function sort_params() {
  $('#index-filter .sort-btn').on('click', function() {

    if ($( this ).hasClass('date')) {
      param_to_sort_by = 'date'
      toggleClasses(this)

  } else if ($( this ).hasClass('difficulty')) {
      param_to_sort_by = 'difficulty'
      toggleClasses(this)

  } else if ($( this ).hasClass('servings')) {
      param_to_sort_by = 'servings'
      toggleClasses(this)

  } else if ($( this ).hasClass('popularity')) {
      param_to_sort_by = 'popularity'
      toggleClasses(this, true)
    }
    param_limit = 15
    bottom = false
    scrolling = 0

    $.ajax({
    method: "GET",
    url: "/sort",
    data: getData()
    }).done(function( data ) {
    $("#index-recipes").empty();
    ajaxSlider()
    $('.container.main').css("opacity", 0)
    $("#index-recipes").append(data);
    $('.container.main').animate({
    opacity: 1}, 1500);
    slideLoader()
    prep()
  });

  });
 }

function ajaxSlider() {
  $('.slider').width(0).css("background-color", "#C00")
  $('.slider').animate({
    width: $(window).width()
    }, 2000)
}

 function search_params() {
  $('#search-btn').on("click", doSearch)
 }

 function doSearch() {
   search_query = $('.search-params').val()
    param_limit = 15
    bottom = false
    scrolling = 0
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
    })
 }

function lazy_load() {
  $(window).scroll(function() {
    if($(window).scrollTop() == $(document).height() - $(window).height() && bottom == false) {
      scrolling = 1
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
          scrolling: scrolling,
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
