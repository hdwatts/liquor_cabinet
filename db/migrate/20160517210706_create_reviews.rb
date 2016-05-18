class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.user :belongs_to
      t.recipe :belongs_to
      t.string :comment
      t.string :img_url
      t.integer :rating

      t.timestamps null: false
    end
  end
end
