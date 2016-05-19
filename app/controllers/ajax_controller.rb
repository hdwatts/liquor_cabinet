class AjaxController < ApplicationController

  def filter
    @recipes = Recipe.where(print_params)
    render "home/_print_recipes"
  end

  private
  def print_params
    str = ""
    if params["difficulty"] 
      str << "difficulty <= #{params['difficulty']}"
    end

    str
  end
end