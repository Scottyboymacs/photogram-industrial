class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :followers, through: :follow_requests
  has_ many :leaders, through: :follow_requests
  has_many :discoverys, through: :follow_requests
  has_many :likes
  has_many :follow_requests, class_name: "FollowRequest", foreign_key: "sender_id"
  has_many :comments, class_name: "Comment", foreign_key: "author_id"

  has_many :own_photos, class_name: "Photo", foreign_key: "owner_id"

end
