class BrandIngredient < ActiveRecord::Base
  belongs_to :ingredient
  belongs_to :brand 
end
