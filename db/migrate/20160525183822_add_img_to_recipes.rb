class AddImgToRecipes < ActiveRecord::Migration
  def change
    add_column :recipes, :img_upload, :string
  end
end
