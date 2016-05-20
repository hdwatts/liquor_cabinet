class HomeController < ApplicationController

  def index
    @recipes = Recipe.all
    @max_servings = Recipe.maximum(:servings)
  end


end
