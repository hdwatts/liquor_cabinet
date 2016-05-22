class Recipe < ActiveRecord::Base
  belongs_to :user
  has_many :recipes_tags
  has_many :favorites
  has_many :tags, through: :recipes_tags
  has_many :amounts
  has_many :ingredients, through: :amounts
  has_many :reviews
  accepts_nested_attributes_for :amounts

### DISPLAY

  def display_difficulty
    str = "#{self.difficulty}"
    case self.difficulty
      when 1
        str << "<span>No sweat</span>"
      when 2
        str << "<span>Easy</span>"
      when 3
        str << "<span>Medium</span>"
      when 4
        str << "<span>Hard</span>"
      when 5
        str << "<span>Experts Only</span>"
    end

    str
  end

### RECIPE FORM 

  def amounts_attributes= (amounts_attributes)
    self.amounts.clear
    amounts_attributes.values.each do |amounts_attributes_attribute|
      if !amounts_attributes_attribute["ingredient_attributes"].nil? && amounts_attributes_attribute["ingredient_attributes"]["name"] != ""
        quantity = amounts_attributes_attribute["quantity"]
        unit = amounts_attributes_attribute["unit"]
        amount = Amount.find_or_create_by(quantity: quantity, unit: unit)
        amount.ingredient_attributes = amounts_attributes_attribute["ingredient_attributes"]
        self.amounts << amount
      end
    end

    self.save
  end

### INDEX SORT  

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

### USER FAVORITES METHODS
  def update_favorites(user)
    user_favorited?(user) ? unfavorite(user) : favorite(user)
  end

  def favorites_message(user)
    if user_favorited?(user)
      "<span class='added'>Saved to your favorites.</span>".html_safe
    else
      "<span class='removed'></span>".html_safe
    end
  end

  def favorites_count(user)
    if user_favorited?(user)
      self.favorites.count
    else
      self.favorites.count 
    end
  end

  def heart_class(user)
    if user_favorited?(user)
      "glyphicon glyphicon-heart red-heart"
    else
      "glyphicon glyphicon-heart grey-heart"
    end
  end

private
  def user_favorited?(user)
    self.favorites.where(user: user).any?
  end

  def favorite(user)
    self.favorites.create(user_id: user.id)
  end

  def unfavorite(user)
    self.favorites.find_by(user_id: user.id).destroy
  end

end
