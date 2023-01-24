class Photo < ApplicationRecord
  # belongs_to :owner
  belongs_to :owner, class_name: "User"
  has_many :likes
  has_many :comments
  has_many :fans, through: :likes
  has_many :discoverers, through: :follow_requests
end
