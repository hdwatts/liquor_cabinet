require 'rails_helper'

RSpec.describe "Recipe Controller", type: :controller do

  it "redirects to recipe page after created" do
    post :create, recipe: {name: "name"}
    expect(response).to redirect_to(recipe_path)
  end

end
