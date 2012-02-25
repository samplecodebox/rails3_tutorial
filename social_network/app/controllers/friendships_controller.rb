class FriendshipsController < ApplicationController

  before_filter :find_user

  def create
    @friendship = @user.friendships.build(:friend_id => params[:friend_id])
    @friendship.save
    flash[:notice] = "Friendship added"
    redirect_to @user
  end


  def destroy
    @friendship  = @user.friendships.find(params[:id])
    #.find({:friend_id => params[:friend_id]})
    @friendship.destroy
    flash[:notice] ="Friendship deleted"
    redirect_to @user
  end

  private

  def find_user
    @user = User.find(params[:user_id])
  end

end
