class CreateSeasons < ActiveRecord::Migration
  def self.up
    create_table :seasons do |t|
      t.integer :number
      t.integer :show_id

      t.timestamps
    end
  end

  def self.down
    drop_table :seasons
  end
end
