class PaymentsController < ApplicationController
   before_action :set_booking, only: [:new, :create]
   protect_from_forgery with: :null_session

  def new
    @activity = @booking.activity
    authorize @activity
  end

  def create
    @activity = @booking.activity
    authorize @activity

    customer = Stripe::Customer.create(
    source: params[:stripeToken],
    email:  params[:stripeEmail]
  )

  charge = Stripe::Charge.create(
    customer:     customer.id,   # You should store this customer id and re-use it.
    amount:       @booking.amount_cents,
    description:  "Payment for #{@booking.activity} for order #{@booking.id}",
    currency:     @booking.amount.currency
  )

  @booking.update(payment: charge.to_json, state: 'paid')
  redirect_to activity_path(@activity)

rescue Stripe::CardError => e
  flash[:alert] = e.message
  redirect_to new_booking_payment_path(@booking)
  end

private

  def set_booking
    @booking = current_user.bookings.where(state: 'pending').find(params[:booking_id])
  end

end

