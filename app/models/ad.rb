class Ad < ApplicationRecord
  belongs_to :category
  belongs_to :renter, :class_name => "User", foreign_key: :renter_id
  has_many :comments
end
