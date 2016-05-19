class Amount < ActiveRecord::Base
  belongs_to :recipe
  belongs_to :ingredient

  accepts_nested_attributes_for :ingredient

  def ingredient_attributes=(ingredient_attributes)
    debugger
    ingredients_attributes.each do |ingredient_attribute|
      ingredient = Ingredient.find_or_create_by(name: ingredient_attribute["name"])
      self.ingredient = ingredient
      self.save
    end
  end
end
