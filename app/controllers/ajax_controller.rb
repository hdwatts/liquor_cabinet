class AjaxController < ApplicationController

  def filter
    @recipes = Recipe.where(print_params)
    render template: "home/_print_recipes", layout: false
  end

  private
  def print_params
    str = ""
    if params["difficulty"] 
      str << "difficulty <= #{params['difficulty']}"
    end

    if params["servings"]
      str << "AND servings <= #{params['servings']}"
    end

    str
  end
end