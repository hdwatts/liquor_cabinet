class IngredientsController < ApplicationController
  def show
    @recipes = Recipe.filter_ingredients(params[:name], Recipe.all)
    render "home/index"
  end
end