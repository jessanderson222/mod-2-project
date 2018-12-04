class Category < ApplicationRecord
  has_many :ads
  has_many :renters, :class_name => "User", through: :ads
end
