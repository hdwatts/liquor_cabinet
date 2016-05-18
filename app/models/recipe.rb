class Recipe < ActiveRecord::Base
  belongs_to :user
  has_many :favorites
  has_many :tags
  has_many :amounts
  has_many :ingredients, through: :amounts
  has_many :reviews
  
end
