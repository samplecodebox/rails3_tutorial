class CreateFriendships < ActiveRecord::Migration
  def change
    create_table :friendships, :id => false do |t|
      t.integer :user_id
      t.integer :friend_id
      t.timestamps
    end
  end
end
