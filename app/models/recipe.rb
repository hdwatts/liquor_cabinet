class Recipe < ActiveRecord::Base
  belongs_to :user
  has_many :recipes_tags
  has_many :favorites
  has_many :tags, through: :recipes_tags
  has_many :amounts
  has_many :ingredients, through: :amounts
  has_many :reviews
  accepts_nested_attributes_for :amounts

  def display_difficulty
    str = "#{self.difficulty}"
    case self.difficulty
      when 1
        str << " (No sweat)"
      when 2
        str << " (Easy)"
      when 3
        str << " (Medium)"
      when 4
        str << " (Hard)"
      when 5
        str << " (Experts Only)"
    end

    str
  end

  def amounts_attributes= (amount_attributes)
    amount_attributes.values.each do |amount_attribute|
      quantity = amount_attribute["quantity"]
      unit = amount_attribute["unit"]
      amount = Amount.find_or_create_by(quantity: quantity, unit: unit)
      amount.build_ingredient(amount_attribute["ingredient_attributes"])
      self.amounts << amount
      self.save
    end
  end

  def self.sort_by_popular
   @sorted = Recipe.all.sort_by do |recipe|
      recipe.favorites.count
    end
   @sorted.reverse
  end

  def self.sort_by_difficulty
    @sorted = Recipe.all.sort_by do |recipe|
      recipe.difficulty
    end
    @sorted
  end

  def self.sort_by_servings
    @sorted = Recipe.all.sort_by do |recipe|
      recipe.servings
    end
    @sorted
  end

  def self.sort_by_date
    @sorted = Recipe.all.sort_by do |recipe|
      recipe.created_at
    end
    @sorted.reverse
  end

end
