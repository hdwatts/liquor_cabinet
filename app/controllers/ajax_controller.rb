class AjaxController < ApplicationController

  def sort
    @recipes = Recipe.sort_by_ajax(params[:sort], params[:tag])
    render template: "recipes/_render_recipes", layout: false
  end

end


