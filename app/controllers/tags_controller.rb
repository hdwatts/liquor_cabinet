class TagsController < ApplicationController
  def show
    @recipes = Recipe.filter_tag(params[:name], Recipe.all)
    render "home/index"
  end
end
