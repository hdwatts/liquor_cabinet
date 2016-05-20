class AjaxController < ApplicationController

  def filter
    @recipes = Recipe.where(print_params)
    render "home/_print_recipes"
  end

  def sort_by
    @recipes = Recipe.where().order_by()
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
