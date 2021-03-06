class RecipesController < ApplicationController
  before_action :set_recipe, except: [:new, :create]

  def new
    @recipe = Recipe.new
    @recipe.amounts.build
    @recipe.amounts.first.build_ingredient
    @blank_amount = Amount.new
    @blank_amount.ingredient = Ingredient.new
  end

  def create
    @recipe = Recipe.new(recipe_params)
    @recipe.user_id = current_user.id
    @recipe.downcase_ingredients
    @recipe.downcase_tags
    if @recipe.save
      redirect_to recipe_path(@recipe)
    else
      str = ""
      @recipe.errors.full_messages.each { |error| str << "#{error}.<br>"}
      @blank_amount = Amount.new
      @blank_amount.ingredient = Ingredient.new
      flash[:danger] = str.html_safe
      render 'new'
      flash.clear
    end
  end

  def edit
    correct_user
    @blank_amount = Amount.new
    @blank_amount.ingredient = Ingredient.new
  end

  def update
    @recipe.user_id = current_user.id
    @recipe.downcase_ingredients
    @recipe.downcase_tags
    @recipe.amounts.clear
    @recipe.tags.clear

    if @recipe.update(recipe_params)
      redirect_to recipe_path(@recipe)
    else
      str = ""
      @recipe.errors.full_messages.each { |error| str << "#{error}.<br>"}
      flash[:danger] = str.html_safe
      redirect_to edit_recipe_path(@recipe)
    end
  end

  def show
    @reviews = @recipe.reviews
    @new_review = @recipe.reviews.new
  end

  def destroy
    correct_user
    @recipe.destroy
    redirect_to root_path
  end

  def favorite
    @recipe.update_favorites(current_user)
    render json: {heart: @recipe.heart_class(current_user), message: @recipe.favorites_message(current_user), recipe: @recipe.id, count: @recipe.favorites_count(current_user) }
  end


  private

  def set_recipe
    @recipe = Recipe.find(params[:id])
  end

  def recipe_params
    params.require(:recipe).permit(:name, :description, :tools, :steps, :difficulty, :img_url, :img_upload, :servings, amounts_attributes: [:id, :quantity, :unit, ingredient_attributes: [:name, :id]], :tag_names => [])
  end

  def correct_user
    @recipe = Recipe.find(params[:id])
    redirect_to(user_path(current_user)) unless current_user?(@recipe.user) || current_user.id < 4
  end

end