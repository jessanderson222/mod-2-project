class Comment < ApplicationRecord
  belongs_to :rentee, :class_name => "User"
  belongs_to :ad
end
