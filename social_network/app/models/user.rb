class User < ActiveRecord::Base

  has_many :friendships
  has_many :friends, :through => :friendships

  has_many :followings
  has_many :followees, :through => :followings
  
  validates :name, :presence => true

end
