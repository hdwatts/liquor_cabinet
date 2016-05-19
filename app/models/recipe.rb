class Recipe < ActiveRecord::Base
  belongs_to :user
  has_many :favorites
  has_many :tags
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

end
