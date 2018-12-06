class AddUserPicture < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :img_path, :string
  end
end
