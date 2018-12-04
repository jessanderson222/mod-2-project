class CreateAds < ActiveRecord::Migration[5.2]
  def change
    create_table :ads do |t|
      t.references :renter, foreign_key: {to_table: :users}
      t.references :category, foreign_key: true
      t.string :item_description
      t.string :image_path
      # t.integer :renter_id
      # t.integer :category_id

      t.timestamps
    end
  end
end
