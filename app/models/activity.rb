class Activity < ApplicationRecord
  belongs_to :category
  belongs_to :user
  has_many :reviews, through: :bookings
  has_many :bookings, dependent: :destroy

  validates :price, presence: true
  validates :title, presence: true
  validates :duration, presence: true
  validates :category, presence: true
  validates :description, presence: true
  validates :picture, presence: true

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  mount_uploader :picture, PhotoUploader
  monetize :price_cents
end
