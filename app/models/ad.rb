class Ad < ApplicationRecord
  belongs_to :category
  belongs_to :renter, :class_name => 'User'
  has_many :comments
end
