class ActivitiesController < ApplicationController
  before_action :set_activity, only: [:show, :edit, :update, :destroy]

  # GET /activities
  def index
    # @activities = Activity.all
    @activities = policy_scope(Activity).order(created_at: :desc)
  end

  # GET /activities/1
  def show
  end

  # GET /activities/new
  def new
    @activity = Activity.new
  end

  # POST /activities/
  def create
    @activity = Activity.new(activity_params)
    @activity.user_id = current_user.id
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
    if @activity.update(acitivity_params)
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

  private

  def activity_params
    params.require(:activity).permit(:title, :description, :duration, :address, :price)
  end

  def set_activity
    @activity = Activity.find(params[:id])
  end

end
