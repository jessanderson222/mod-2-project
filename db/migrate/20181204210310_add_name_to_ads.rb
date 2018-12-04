class AddNameToAds < ActiveRecord::Migration[5.2]
  def change
    add_column :ads, :name, :string
  end
end
