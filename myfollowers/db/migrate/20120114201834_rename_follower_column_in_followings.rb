class RenameFollowerColumnInFollowings < ActiveRecord::Migration
  def change
    rename_column :followings, :follower_id, :user_id
  end
end
