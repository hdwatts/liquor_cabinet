class AddImageUploadToUser < ActiveRecord::Migration
  def change
    add_column :users, :img_upload, :string
  end
end
