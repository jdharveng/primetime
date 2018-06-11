class FollowsController < ApplicationController

  def new
    skip_authorization
    follower = current_user
    followee = User.find(params[:format])
    if follower == followee
      flash[:error] = "You cannot follow yourself"
    else
      follower.follow(followee)
      flash[:notice] = "You are now following #{followee.first_name}"
    end

  end

end
