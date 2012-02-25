class Season < ActiveRecord::Base
  belongs_to :show
  has_many :episodes

  validates :number, :uniqueness => {:scope => :show_id}, :presence => true

  # returns true/false if whether a season has all episodes in specific language (eg. season is only english or not)
  def is_season_only(language)
    @episodes = self.episodes
    @episodes.count.eql?(@episodes.where(:language=>language).count)
  end
  
end
