class UsersFollowersController < ApplicationController

  before_filter :find_user
  
  def create
    @users_follower = @user.users_followers.build(:follower_id => params[:follower_id])
    if @users_follower.save
      flash[:notice] = "Following added"
    else
      flash[:alert] = "Following cannot be added"
    end
    redirect_to @user
  end


  def destroy
    @following = @user.users_followers.find(params[:id])
    @following.destroy
    flash[:notice] = "Following is deleted"
    redirect_to @user
  end
  
  private

  def find_user
    @user = User.find(params[:user_id])
  end
end

