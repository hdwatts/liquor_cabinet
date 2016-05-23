$(document).ready(function(){
  favoriteButtonListener()
  favoritePluralize()
})

function favoriteButtonListener() {
  $('div.favorite-btn').click(function(e){
    e.preventDefault()
    e.stopPropagation()
    var url = $(this).parent().attr('href')
    $.ajax({
      type: "POST",
      url: url,
      success: function(response) {
      $('div[recipe_id=' + response.recipe + '] span.glyphicon').attr('class', response.heart)
      $('div[recipe_message_id=' + response.recipe + ']').html(response.message)
      $('div[recipe_id=' + response.recipe + '] span.count').html(response.count)
      favoritePluralize()
     }
   })
  })
}

function favoritePluralize() {
  if (parseInt($('.recipe.show .glyphicon-heart').siblings().text()) == 1) {
    $('.recipe.show .glyphicon-heart').siblings().append(" Favorite")
  } else {
    $('.recipe.show .glyphicon-heart').siblings().append(" Favorites") 
 }
}