$(document).ready(function(){
  favoriteButtonListener()
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
      $('div[recipe_id=' + response.recipe + '] span').attr('class', response.heart)
      $('div[recipe_message_id=' + response.recipe + ']').html(response.message)
     }
   })
  })
}