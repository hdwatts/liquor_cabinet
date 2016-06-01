class AjaxCaller

  def self.filter(params)
    recipes = Recipe.sort_by_date(Recipe.all)
    if params[:query] != "" && params[:query]
      recipes = Recipe.search(params[:query])
    end

    if params[:sort] != "" && params[:sort]
      recipes = Recipe.sort_by_ajax(recipes, params[:sort], params[:tag], params[:ingredient], params[:order])
    end

    recipes
  end

  def self.search_msg(params, recipes)
    @search_msg = "Search for '#{params[:query]}' found #{recipes.size} result(s)"
    if params[:tag] != "" && !params[:tag].nil?
      @search_msg << " that have the #{params[:tag]} tag"
    end
    if params[:ingredient] != "" && !params[:ingredient].nil?
      @search_msg << " that use #{params[:ingredient]}"
    end
    @search_msg << "."
  end


end
