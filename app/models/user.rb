
class User < ApplicationRecord
    has_many :ads, :foreign_key => 'renter_id'
    has_many :comments, :foreign_key => 'rentee_id'
    has_many :categories, through: :ads
    validates :user_name, presence: true, uniqueness: { case_sensitive: false }
    validates :email, presence: true, uniqueness: { case_sensitive: false }

  has_secure_password

end
