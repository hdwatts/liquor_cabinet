class AjaxController < ApplicationController

  def get_recipes
    @recipes = Recipe.sort_by_date(Recipe.all)
    if params[:query].length > 0
      @recipes = Recipe.search(params[:query])
    end

    if params[:sort].length > 0
      @recipes = Recipe.sort_by_ajax(@recipes, params[:sort], params[:tag], params[:ingredient], params[:order])
    end

    if params[:limit] == "" || !params[:limit]
      params[:limit] = 15
    end

    if params[:query].length > 0
      @search_msg = "Search for '#{params[:query]}' found #{@recipes.size} result(s)"
      if params[:tag] != "" && !params[:tag].nil?
        @search_msg << " that have the #{params[:tag]} tag"
      end
      if params[:ingredient] != "" && !params[:ingredient].nil?
        @search_msg << " that use #{params[:ingredient]}"
      end
      @search_msg << "."
    end

    if params[:limit].to_i > @recipes.size + 3 && params[:scrolling] == "1"
      render nothing: true, :status => 400
    else
      @recipes = @recipes.slice(0, params[:limit].to_i)
      render template: "recipes/_render_recipes", layout: false
    end

  end
end
