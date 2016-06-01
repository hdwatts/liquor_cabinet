require 'rails_helper'

describe User do
  # let(:user) {User.create(email: "eve@yo.com", first_name: "eve", last_name: "essex", birth_date: "1990-12-12", password: "asdf")}
  # let(:recipe1) {Recipe.create(name: "recipe1")}
  # let(:recipe2) {Recipe.create(name: "recipe2")}

  it "is invalid without a real email address" do
    user1 = User.new(email: "eve@gmail")
    user1.valid?
    expect(user1.errors[:email]).to eq(["is not an email"])
  end

  it "is invalid without a unique email address" do  
    user1 = User.create(email: "eve@yo.com", first_name: "eve", last_name: "essex", birth_date: "1990-12-12", password: "asdf")
    user2 = User.create(email: "eve@yo.com", first_name: "eve", last_name: "essex", birth_date: "1990-12-12", password: "asdf")
    user2.valid?
    expect(user2.errors[:email]).to eq(["has already been taken"])
  end

  it "is invalid without a birthdate, first and last name" do
    user1 = User.create()
    user1.valid?
    expect(user1.errors[:first_name]).to eq(["can't be blank"])
    expect(user1.errors[:last_name]).to eq(["can't be blank"])
    expect(user1.errors[:birth_date]).to eq(["can't be blank"])
  end

end