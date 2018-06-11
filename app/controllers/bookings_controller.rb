class BookingsController < ApplicationController
  before_action :set_activity, except: [:index, :mybookings, :bookingtimer]
  before_action :set_booking, only: [:show, :bookingtimer]

  # GET /bookings
  def index
    @bookings = policy_scope(Booking).order(created_at: :desc)
  end

  # GET /activities/1/bookings
  def show
   authorize @booking
   #@booking = current_user.bookings.find(params[:id])
  end

  def mybookings
    @bookings = Booking.where(user: current_user)
    authorize @bookings
  end

  def bookingtimer
    @activity = @booking.activity
    @duration = @booking.activity.duration
    authorize @booking
  end

  # GET /activities/1/bookings/new
  def new
    @booking = Booking.new
    authorize @booking
  end

  # POST /activities/1/bookings
  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.activity = @activity
    @booking.state = "pending"

    authorize @booking

    if @booking.save
      #redirect_to new_booking_payment_path(@booking)
       redirect_to activity_booking_path(@activity,@booking)
    else
      render :new
    end

  end

  private

  def booking_params
    #params.require(:booking).permit(:amount)
  end

  def set_activity
    @activity = Activity.find(params[:activity_id])
  end

   def set_booking
     @booking = Booking.find(params[:id])
  end
end
