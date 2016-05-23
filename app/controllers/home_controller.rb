class HomeController < ApplicationController

  def index
    @recipes = Recipe.sort_by_date(Recipe.all)
    if params[:limit] == "" || !params[:limit]
      params[:limit] = 15
    end

    @recipes = @recipes.slice(0, params[:limit].to_i)

    @max_servings = Recipe.maximum(:servings)
  end


end
