class CreateAds < ActiveRecord::Migration[5.2]
  def change
    create_table :ads do |t|
      t.references :renter, foreign_key: true
      t.references :category, foreign_key: true 

      t.timestamps
    end
  end
end
