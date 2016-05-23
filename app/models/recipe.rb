class Recipe < ActiveRecord::Base
  belongs_to :user
  has_many :recipes_tags
  has_many :favorites
  has_many :tags, through: :recipes_tags
  has_many :amounts
  has_many :ingredients, through: :amounts
  has_many :reviews, dependent: :destroy
  accepts_nested_attributes_for :amounts
  accepts_nested_attributes_for :tags

### DISPLAY
  def print_tag_names
    arr = self.tags.map do |tag|
      tag.name
    end

    if !arr.empty?
      arr.join(", ")
    else
      ""
    end
  end

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

  def tag_names=(tag_names)
    self.tags.clear
    tag_names.each do |tag_name|
      if tag_name != ""
        tag = Tag.find_or_create_by(name: tag_name)
        self.tags << tag
      end
    end

    self.save
  end

  def tag_names=(tag_names)
    self.tags.clear
    tag_names.each do |tag_name|
      if tag_name != ""
        tag = Tag.find_or_create_by(name: tag_name)
        self.tags << tag
      end
    end

    self.save
  end

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
  def self.filter_tag(tag)
    if t = Tag.find_by(name: tag)
      recipes = t.recipes
    else
      recipes = []
    end

    recipes
  end

  def self.sort_by_ajax(sort, tag)
    recipes = Recipe.all
    if tag != ""
      recipes = Recipe.filter_tag(tag)
    end

    case sort
      when "date"
        Recipe.sort_by_date(recipes)
      when "difficulty"
        Recipe.sort_by_difficulty(recipes)
      when "servings"
        Recipe.sort_by_servings(recipes)
      when "popularity"
        Recipe.sort_by_popularity(recipes)
      else
        Recipe.all
    end
  end

  def self.sort_by_popularity(recipes)
   @sorted = recipes.sort_by do |recipe|
      recipe.favorites.count
    end
   @sorted.reverse
  end

  def self.sort_by_difficulty(recipes)
    @sorted = recipes.sort_by do |recipe|
      recipe.difficulty
    end
    @sorted
  end

  def self.sort_by_servings(recipes)
    @sorted = recipes.sort_by do |recipe|
      if recipe.servings != nil
        recipe.servings
      else
        1
      end
    end
    @sorted
  end

  def self.sort_by_date(recipes)
    @sorted = recipes.sort_by do |recipe|
      recipe.created_at
    end
    @sorted.reverse
  end

  def self.search(search)
    if search.present?
        self.where('lower(name) LIKE ? OR lower(description) LIKE ?' , "%#{search.downcase}%", "%#{search.downcase}%").order("created_at DESC")
    else
      Recipe.all
    end
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
