class ReviewsController < ApplicationController
  before_action :set_review, only: [:new]

  def new
  end

  def create
    @review= Review.new(review_params)
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review.restaurant = @restaurant
    if @review.save
      redirect_to restaurant_path(@restaurant)
    else
      render 'reviews/new'
    end
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end

  def set_review
    @review = Review.new
    @restaurant = Restaurant.find(params[:restaurant_id])
  end
end
