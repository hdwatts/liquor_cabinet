class ReviewsController < ApplicationController

  def create
    @recipe = Recipe.find(params[:recipe_id])
    @review = @recipe.reviews.build(review_params)

    if @review.save
      @new_review = @recipe.reviews.build
      respond_to do |format|
        format.html do
          redirect_to @recipe
        end
        format.js
      end
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @recipe = @review.recipe
    @review.destroy
    respond_to do |format|
      format.html do
        redirect_to @recipe
      end
      format.js
    end

  end

  private

  def review_params
    params.require(:review).permit(:comment, :user_id)
  end

end
