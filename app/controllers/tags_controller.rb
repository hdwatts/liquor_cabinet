class TagsController < ApplicationController
  def show
    @recipes = Recipe.filter_tag(params[:name])
    render "home/index"
  end
end
