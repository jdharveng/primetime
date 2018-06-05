class ActivitiesController < ApplicationController


  def index
    @activities = policy_scope(Activity).order(created_at: :desc)
  end

  def show

  end

  def new
  end

  def create


    authorize @activity
  end

  def edit
  end

  def update

    authorize @activity
  end

  def destroy
  end


  def filters
    skip_authorization
  end

  # def filter_time

  #   skip_authorization
  # end

  # def filter_money

  #   skip_authorization
  # end

end
