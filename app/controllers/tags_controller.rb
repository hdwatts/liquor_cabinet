class TagsController < ApplicationController
  def show
    t = Tag.find_by(name: params[:name])
    @recipes = t.recipes
    render "home/index"
  end
end
