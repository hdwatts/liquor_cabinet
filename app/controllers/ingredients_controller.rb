class IngredientsController < ApplicationController
  def show
    @recipes = Recipe.filter_ingredients(params[:name])
    render "home/index"
  end
end