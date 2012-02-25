class Show < ActiveRecord::Base
  has_many :seasons

  validates :name, :uniqueness => true, :presence => true
  
  scope :filter, lambda {|filter_options| 
    raise(ArgumentError, "Expected Hash, got #{filter_options.inspect}") unless filter_options.is_a?(Hash)
    ar_proxy = scoped
    filter_options.each {|key, value|
      next unless self.filter_names.include?(key.to_sym)
      next if value.blank?
      ar_proxy = ar_proxy.send(key, value)
    }
    ar_proxy
  }
  
  def self.filter_names
    self.scopes.map{|s| s.first} - [:filter, :find]
  end
  
  scope :newest, lambda{
    order("created_at desc").limit(1)
  }
  scope :oldest, lambda{
    order("created_at asc").limit(1)
  }
  
  scope :named, lambda{|name|
    where(:name => name)
  }

  # returns all the shows which have all episodes in the language request.

  def self.find_shows_for_language(language)
    Show.all.select{|show| show.is_show_only(language)}
  end
    

  # returns true/false if whether a show has all episodes in specific language (eg. show is only english or not)
  def is_show_only(language)
    @seasons = self.seasons
    @seasons.count.eql?(@seasons.select{|season| season.is_season_only(language)}.count)
  end
end
