class Activity < ApplicationRecord
  belongs_to :category
  belongs_to :user
  has_many :reviews, through: :bookings

  validates :price, presence: true
  validates :title, presence: true
  validates :duration, presence: true

end
