class AjaxController < ApplicationController

  def get_recipes
    @recipes = Recipe.sort_by_date(Recipe.all)
    if params[:query] != "" && params[:query]
      @recipes = Recipe.search(params[:query])
    end

    if params[:sort] != "" && params[:sort]
      @recipes = Recipe.sort_by_ajax(@recipes, params[:sort], params[:tag], params[:ingredient], params[:order])
    end

    if params[:limit] == "" || !params[:limit]
      params[:limit] = 15
    end

    if params[:limit].to_i > @recipes.size + 3 && params[:scrolling] == 1
      render nothing: true, :status => 400
    else
      @recipes = @recipes.slice(0, params[:limit].to_i)
      render template: "recipes/_render_recipes", layout: false
    end
  end
end
