class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :oauth_token
      t.string :oauth_secret
      t.string :email

      t.timestamps
    end
  end
end
