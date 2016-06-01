class AjaxController < ApplicationController

  def get_recipes
    @recipes = AjaxCaller.filter(params)

    if params[:limit] == "" || !params[:limit]
      params[:limit] = 15
    end

    if params[:query] != "" && params[:query]
      @search_msg = AjaxCaller.search_msg(params, @recipes)
    end

    if params[:limit].to_i > @recipes.size + 3 && params[:scrolling] == "1"
      render nothing: true, :status => 400
    else
      @recipes = @recipes.slice(0, params[:limit].to_i)
      render template: "recipes/_render_recipes", layout: false
    end

  end
end
