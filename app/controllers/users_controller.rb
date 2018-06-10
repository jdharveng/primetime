class UsersController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show]

  def show
  skip_authorization
  @user = User.find(params[:id])
  end

end
