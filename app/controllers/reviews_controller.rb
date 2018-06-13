class ReviewsController < ApplicationController
before_action :set_booking, only: [:show, :new, :create]

  def show
    @review = Review.find(params[:id])
    authorize @review
  end

  def new
    @review = Review.new
    @review.booking_id = @booking.id
    @activity = @booking.activity
    authorize @review

  end

  def create

    @review = Review.new(review_params)
    @review.booking_id = @booking.id
    @activity = @booking.activity

    #raise
    authorize @review
    if @review.save
      redirect_to mybookings_path, notice: "Thanks for your review " + current_user.first_name + " !"
    else
      flash[:alert]= "You need to give at least 1 star !"
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








