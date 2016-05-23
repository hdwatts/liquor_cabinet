class HomeController < ApplicationController

  def index
    @recipes = Recipe.sort_by_date(Recipe.all)
    @max_servings = Recipe.maximum(:servings)
  end


end
