class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.integer :user_id
      t.string :name
      t.text :description
      t.text :steps
      t.text :tools
      t.integer :difficulty
      t.string :img_url
      t.integer :servings

      t.timestamps null: false
    end
  end
end
