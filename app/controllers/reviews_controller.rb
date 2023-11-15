class ReviewsController < ApplicationController

  before_action :set_restaurant, only: %i[new create]

  def new
    # We need @restaurant in our `simple_form_for`
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new
  end

def create
      @review = Review.new(review_params)
      @review.restaurant = @restaurant
      if @review.save
        redirect_to restaurant_path(@restaurant)
      else
        render :new, status: :unprocessable_entity
      end
    end

    private

    def set_restaurant
      @restaurant = Restaurant.find(params[:restaurant_id])
    end

    def review_params
      params.require(:review).permit(:content, :rating)
    end
    def destroy
      @review = Review.find(params[:id])
      @review.destroy
      redirect_to restaurant_path(@review.restaurant), status: :see_other
    end
end


#if @review.valid?
  #if @review.rating.present? && @review.rating.is_a?(Numeric) && @review.rating.between?(0, 5)
    #@review.save
   # redirect_to restaurant_path(@restaurant), notice: 'Review was successfully created.'
