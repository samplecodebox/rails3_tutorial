class Episode < ActiveRecord::Base

  belongs_to :season, :class_name => "Season", :foreign_key => "season_id"
  validates :name,  :uniqueness => {:scope => :season_id}, :presence => true

end
