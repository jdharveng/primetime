class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :activities
  has_many :bookings
  has_many :followers, class_name: 'Following', foreign_key: 'follower_id'
  has_many :followees, class_name: 'Following', foreign_key: 'followee_id'
end
