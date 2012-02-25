class FollowingsController < ApplicationController

  before_filter :find_user
  
  def create
    @following = @user.followings.build(:followee_id => params[:followee_id])
    @following.save
    flash[:notice] = "Following is succesfully created"
    redirect_to @user
  end


  def destroy
    @following = @user.followings.find(params[:id])
    @following.destroy
    flash[:notice] = "Following is succcesfully deleted"
    redirect_to @user
  end

  private

  def find_user
    @user = User.find(params[:user_id])
  end
end
