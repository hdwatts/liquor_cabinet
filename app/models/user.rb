class User < ActiveRecord::Base
  has_many :recipes
  has_many :favorites
  has_many :reviews 

end
