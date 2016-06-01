require 'rails_helper'

describe Recipe do
  let(:recipe) {Recipe.create(name: "recipe")}

  it "knows ingredients associated with instance of Recipe " do
    ingredient = Ingredient.create(name: "ingredient")
    recipe.ingredients << ingredient

    expect(recipe.name).to eq("recipe")
    expect(recipe.ingredients).to include(ingredient)
  end

  it "knows if the current user has favorited a recipe" do
    user = User.create(first_name: "user")
    favorite = Favorite.create(user_id: user.id, recipe_id: recipe.id)
    recipe.favorites << favorite
    expect(recipe.favorites.first.user_id).to eq(user.id)
  end

  it "invalid without a name" do
    recipe = Recipe.new(name: nil)
    recipe.valid?
    expect(recipe.errors[:name]).to eq(["can't be blank"])
  end
end
