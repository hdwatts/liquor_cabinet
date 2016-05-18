class Ingredient < ActiveRecord::Base
  has_many :brand_ingredients
  has_many :brands, through: :brand_ingredients
  has_many :amounts
  has_many :recipes, through: :amounts
  
end
