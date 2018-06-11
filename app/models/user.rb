class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :activities, dependent: :destroy
  has_many :bookings, dependent: :destroy
  acts_as_followable
  acts_as_follower

  mount_uploader :picture, PhotoUploader
end
