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

  def amounts_attributes= (amounts_attributes)
    amounts_attributes.values.each do |amounts_attributes_attribute|
      quantity = amounts_attributes_attribute["quantity"]
      unit = amounts_attributes_attribute["unit"]
      amount = Amount.find_or_create_by(quantity: quantity, unit: unit)
      amount.ingredient_attributes = amounts_attributes_attribute["ingredient_attributes"];
      self.amounts << amount
      self.save
    end
  end

  def self.sort_by_popularity
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
      if recipe.servings != nil
        recipe.servings
      else
        1
      end
    end
    @sorted
  end

  def self.sort_by_date
    @sorted = Recipe.all.sort_by do |recipe|
      recipe.created_at
    end
    @sorted.reverse
  end

  def self.search
    @search_results = Recipe.all.find_by(search_params)
  end

end
