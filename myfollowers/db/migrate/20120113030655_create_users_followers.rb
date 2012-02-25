class CreateUsersFollowers < ActiveRecord::Migration
  def change
    create_table :users_followers do |t|
      t.integer :user_id
      t.integer :follower_id

      t.timestamps
    end
  end
end
