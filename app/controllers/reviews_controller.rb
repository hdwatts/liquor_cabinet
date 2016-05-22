class ReviewsController < ApplicationController
  before_action :sign_in_user, only: :destroy

  def create
    @recipe = Recipe.find(params[:recipe_id])
    @review = @recipe.reviews.build(review_params)

    if @review.save
      @new_review = @recipe.reviews.new
      respond_to do |format|
        format.html do
          flash[:success] = "Your comment has been posted"
          redirect_to @recipe
        end
        format.js
      end
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @recipe = @recipe.review
    @review.destroy
    respond_to do |format|
      format.html do
        flash[:success] = "Comment deleted."
        redirect_to @recipe
      end
      format.js
    end

  end

  private

  def review_params
    params.require(:review).permit(:comment)
  end

end
