class AjaxController < ApplicationController

  def sort
    @recipes = Recipe.sort_by_ajax(params[:sort], params[:tag], params[:order])
    render template: "recipes/_render_recipes", layout: false
  end

  def search
    # search_params = params[:search].split
    # @recipes = Recipe.search(search_params).order("created_at DESC")
    @recipes = Recipe.search(params[:query])
    render template: "recipes/_render_recipes", layout: false
  end

end
