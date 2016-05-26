class Recipe < ActiveRecord::Base
  belongs_to :user
  has_many :recipes_tags
  has_many :favorites
  has_many :tags, through: :recipes_tags
  has_many :amounts
  has_many :ingredients, through: :amounts
  has_many :reviews, dependent: :destroy
  mount_uploader :img_upload, ImageUploader
  accepts_nested_attributes_for :amounts
  accepts_nested_attributes_for :tags

  validates :name, presence: true
  validates :description, presence: true
  validates :steps, presence: true
  #validate :validate_ingredients

  def validate_ingredients
    if amounts.size < 1
      errors.add(:ingredients, "requires at least one ingredient")
    end
  end
### DISPLAY

  def servings
    serves = read_attribute(:servings)
    if serves == 6
      "6+"
    else
      serves ||= 1
    end
  end

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

  def amounts_attributes= (amounts_attributes)
    self.amounts.clear
    amounts_attributes.values.each do |amounts_attributes_attribute|
      if !amounts_attributes_attribute["ingredient_attributes"].nil? && amounts_attributes_attribute["ingredient_attributes"]["name"] != ""
        quantity = amounts_attributes_attribute["quantity"]
        unit = amounts_attributes_attribute["unit"]
        amount = Amount.create(quantity: quantity, unit: unit)
        amount.ingredient_attributes = amounts_attributes_attribute["ingredient_attributes"]
        self.amounts << amount
      end
    end

    self.save
  end

### INDEX SORT
  def self.filter_tag(tag, recipes)
    recipes.select do |recipe|
      recipe.tags.detect { |r_tag| r_tag.name.downcase == tag.downcase }
    end

  end

  def self.filter_ingredients(ingredient, recipes)
    recipes.select do |recipe|
      recipe.ingredients.detect { |r_tag| r_tag.name.downcase == ingredient.downcase }
    end
  end

  def self.sort_by_ajax(recipes, sort, tag, ingredient, order)
    if tag != "" && !tag.nil?
      recipes = Recipe.filter_tag(tag, recipes)
    end

    if ingredient != "" && !ingredient.nil?
      recipes = Recipe.filter_ingredients(ingredient, recipes)
    end

    case sort
      when "date"
        if order == "default"
          recipes = Recipe.sort_by_date(recipes)
          recipes.reverse
        else
          Recipe.sort_by_date(recipes)
        end
      when "difficulty"
        if order == "default"
          Recipe.sort_by_difficulty(recipes)
        else
          recipes = Recipe.sort_by_difficulty(recipes)
          recipes.reverse
        end
      when "servings"
        if order == "default"
          Recipe.sort_by_servings(recipes)
        else
          recipes = Recipe.sort_by_servings(recipes)
          recipes.reverse
        end
      when "popularity"
        if order == "default"
          Recipe.sort_by_popularity(recipes)
        else
          recipes = Recipe.sort_by_popularity(recipes)
          recipes.reverse
        end
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
        recipe.servings.to_i
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
        Recipe.joins(:ingredients).joins(:tags).where('lower(ingredients.name) LIKE ? OR lower(tags.name) LIKE ? OR lower(recipes.name) LIKE ? OR lower(recipes.description) LIKE ?' , "%#{search.downcase}%", "%#{search.downcase}%", "%#{search.downcase}%", "%#{search.downcase}%").order("created_at DESC").distinct()
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
      "<span class='removed'>Removed from your favorites.</span>".html_safe
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

  def similar_recipes
    similar_ing = []
    similar_tag = []
    i = self.ingredients.ids
    t = self.tags.ids

    recipes = Amount.select('recipe_id', 'count(recipe_id) AS recipe_count').where("ingredient_id in (?)", i).group('recipe_id').having("COUNT(recipe_id) >= 2").order("recipe_count DESC").limit(3)
    tags = RecipesTag.select('recipe_id', 'count(recipe_id) AS recipe_count').where("tag_id in (?)", t).group('recipe_id').having("COUNT(recipe_id) >= 2").order("recipe_count DESC").limit(3)

    recipes.each do |r_id|
      similar_ing << Recipe.find(r_id.recipe_id) if r_id.recipe_id != self.id
    end
    tags.each do |t_id|
      similar_tag << Recipe.find(t_id.recipe_id) if t_id.recipe_id != self.id
    end

    [similar_ing, similar_tag]
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
