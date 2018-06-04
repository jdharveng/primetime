class ActivitiesController < ApplicationController


  def index
    @activities = Activity.all
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
end
