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
    @booking = Booking.new
    @booking.user = current_user
    @booking.activity = @activity
    if @booking.activity.price == 0 || @booking.activity.payable == false
        @booking.state = "paid"
        authorize @booking
        if @booking.save
           redirect_to bookingtimer_booking_path(@booking)
        else
          render :new
        end
    else
        @booking.state = "pending"
        authorize @booking
        if @booking.save
           redirect_to activity_booking_path(@activity,@booking)
        else
          render :new
        end
    end
  end

  def update
    @booking = Booking.find(booking_params)
    @booking.state = "paid"
    @booking.save
    redirect_back(fallback_location: @booking)
    authorize @booking
  end


  private

  def booking_params
    params.require(:booking).permit(:state, :payment)
  end

  def set_activity
    @activity = Activity.find(params[:activity_id])
  end

   def set_booking
     @booking = Booking.find(params[:id])
  end
end
