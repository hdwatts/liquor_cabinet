class CreateBrandIngredients < ActiveRecord::Migration
  def change
    create_table :brand_ingredients do |t|
      t.integer :ingredient_id
      t.integer :brand_id
      
      t.timestamps null: false
    end
  end
end
