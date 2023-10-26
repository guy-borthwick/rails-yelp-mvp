class ReviewsController < ApplicationController
  def create
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = @restaurant.reviews.build(review_params)

    if @review.save
      redirect_to @restaurant, notice: 'Review added successfully!'
    else
      # Send back to the restaurant's show page with error messages
      flash[:alert] = @review.errors.full_messages.join(', ')
      redirect_to @restaurant
    end
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
