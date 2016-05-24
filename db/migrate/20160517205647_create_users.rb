class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.date :birth_date
      t.text :bio
      t.string :img_url

      t.timestamps null: false
    end
  end
end
