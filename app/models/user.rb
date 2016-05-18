class User < ActiveRecord::Base
  has_many :recipes
  has_many :favorites
  has_many :reviews 
  has_secure_password
  validates_presence_of :username, :email, :birth_date

end
