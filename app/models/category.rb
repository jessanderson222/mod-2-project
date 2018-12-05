class Category < ApplicationRecord
  has_many :ads, dependent: :destroy
  has_many :renters, :class_name => "User", through: :ads
end
