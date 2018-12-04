
class User < ApplicationRecord
    has_many :ads, :foreign_key => 'renter_id'
    has_many :comments, :foreign_key => 'rentee_id'
    has_many :categories, through: :ads

  has_secure_password 

end
