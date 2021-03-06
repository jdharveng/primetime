class ActivitiesController < ApplicationController
  before_action :set_activity, only: [:show, :edit, :update, :destroy, :activitytimer]
  skip_before_action :authenticate_user!, only: [:show]
  require 'json'
  require 'open-uri'

  # GET /activities
  def index
    @activities = policy_scope(Activity)
    extract_money_params

    #user location parsed from Filters form
    user_location = JSON.parse(params["user-location"])
    ulat = user_location["lat"]
    ulng = user_location["lng"]
    @update_current_profile = User.update(current_user.id, {:latitude => ulat, :longitude => ulng})


    #filtering activities with Filters
    @activities_filtered = @activities.near([ulat,ulng],100)
    .where("duration <= ? AND price_cents BETWEEN ? AND ?", params[:time], @money_min, @money_max)

  end

  # GET /activities/1
  def show
   authorize @activity
   @activity = Activity.find(params[:id])
   @marker = [
      {
        lat: @activity.latitude,
        lng: @activity.longitude,
      }
    ]

  end


  # GET /activities/new
  def new
    @activity = Activity.new
    authorize @activity
  end

  # POST /activities/
  def create
    @activity = Activity.new(activity_params)
    @activity.user_id = current_user.id
    authorize @activity

    if @activity.save
      redirect_to @activity
    else
      render :new
    end

  end

  # GET /activities/1/edit
  def edit
    authorize @activity
  end

  # PATCH /activities/1
  def update
    authorize @activity
    @category = Category.find(@activity.category_id)

    if @activity.update(activity_params)
      redirect_to @activity
    else
      render :edit
    end
  end

  # DELETE /activities/1
  def destroy
    authorize @activity
    @activity.destroy
  end

  def filters
    skip_authorization
  end

  def myactivities
    @activities = Activity.where(user: current_user)
    authorize @activities
  end

  private

  def activity_params
    params.require(:activity).permit(:title, :description, :duration, :address, :price, :category_id, :picture, :payable)
  end

  def set_activity
    @activity = Activity.find(params[:id])
  end

  def extract_money_params
    @money_min = params[:money].split(",")[0].to_i*100
    @money_max = params[:money].split(",")[1].to_i*100
  end

end
