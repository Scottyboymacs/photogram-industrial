class Photo < ApplicationRecord
  # belongs_to :owner
  belongs_to :owner, class_name: "User"
  has_many :likes
  has_many :comments
  has_many :fans, through: :likes
  has_many :discoverers, through: :follow_requests

# app/models/photo.rb

scope :past_week, -> { where(created_at: 1.week.ago...) }

scope :by_likes, -> { order(likes_count: :desc) }

end
