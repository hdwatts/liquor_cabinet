class RecipesController < ApplicationController

  def new
    @recipe = Recipe.new
    @recipe.amounts.build()
    @recipe.amounts.first.build_ingredient();
    @recipe.amounts.build();
    @recipe.amounts.last.build_ingredient();
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
  end

  def update
    @recipe = Recipe.find(params[:id])
    @recipe.update(recipe_params)
    @recipe.user_id = current_user.id
    redirect_to recipe_path(@recipe)
  end

  def show
    @recipe = Recipe.find(params[:id])
  end

  def destroy
    @recipe = Recipe.find(params[:id])
    @recipe.destroy
  end

  private

  def recipe_params
    params.require(:recipe).permit(:name, :description, :tools, :steps, :difficulty, :img_url, :servings, amounts_attributes: [:quantity, :unit, ingredient_attributes: [:name]])
  end

end
