class RecipesController < ApplicationController

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
    if @recipe.save
      redirect_to recipe_path(@recipe)
    else
      render 'new'
    end
  end

  def edit
    @recipe = Recipe.find(params[:id])
    @blank_amount = Amount.new
    @blank_amount.ingredient = Ingredient.new
    #@recipe.amounts << @blank_amount
    #debugger
  end

  def update
    @recipe = Recipe.find(params[:id])
    @recipe.user_id = current_user.id
    if @recipe.update(recipe_params)
      redirect_to recipe_path(@recipe)
    else
      redirect_to edit_recipe_path(@recipe)
    end
  end

  def show
    @recipe = Recipe.find(params[:id])
  end

  def destroy
    @recipe = Recipe.find(params[:id])
    @recipe.destroy
    redirect_to root_path
  end

  def favorite
    @recipe = Recipe.find(params[:id])
    @recipe.update_favorites(current_user)
    render json: {heart: @recipe.heart_class(current_user), message: @recipe.favorites_message(current_user), recipe: @recipe.id, count: @recipe.favorites_count(current_user) }
  end


  private

  def recipe_params
    params.require(:recipe).permit(:name, :description, :tools, :steps, :difficulty, :img_url, :servings, amounts_attributes: [:id, :quantity, :unit, ingredient_attributes: [:name, :id]])
  end

end
