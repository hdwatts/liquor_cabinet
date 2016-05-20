class AjaxController < ApplicationController

  def sort
    if params.keys[0] == "date"
     @recipes =  Recipe.sort_by_date
    elsif params.keys[0] == "difficulty"
     @recipes =  Recipe.sort_by_difficulty
    elsif params.keys[0] == "servings"
     @recipes = Recipe.sort_by_servings
    end
    render template: "home/_print_recipes", layout: false    
  end

end
