class ReviewsController < ApplicationController
before_action :set_booking, only: [:show, :new, :create]

  def show
    @review = Review.find(params[:id])
    authorize @review
  end

  def new
    @review = Review.new
    authorize @review

  end

  def create
    @review = Review.new(review_params)
    @review.booking_id = @booking.id
    authorize @review
    if @review.save
      redirect_to booking_review_path(@booking, @review)
    else
      render :new
    end

  end

  private

  def review_params
    params.require(:review).permit(:content, :rating, :booking_id)
  end

  def set_booking
    @booking = Booking.find(params[:booking_id])
  end

end








