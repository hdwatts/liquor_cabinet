class Brand < ActiveRecord::Base
  has_many :brand_ingredients
  has_many :ingredients, through: :brand_ingredients
end
