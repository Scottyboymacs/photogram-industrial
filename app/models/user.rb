class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :followers, through: :follow_requests
  has_ many :leaders, through: :follow_requests
  has_many :interests, through: :follow_requests
end
