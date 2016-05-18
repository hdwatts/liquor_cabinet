class CreateAmounts < ActiveRecord::Migration
  def change
    create_table :amounts do |t|
      t.integer :recipe_id
      t.integer :ingredient_id
      t.string :quantity
      t.string :unit

      t.timestamps null: false
    end
  end
end
