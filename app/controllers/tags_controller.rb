class TagsController < ApplicationController
  def show
    if t = Tag.find_by(name: params[:name])
      @recipes = t.recipes
    else
      @recipes = []
    end
    render "home/index"
  end
end
