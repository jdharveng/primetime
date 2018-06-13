class Activity < ApplicationRecord
  belongs_to :category
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_many :reviews, through: :bookings
  # define a method reviews
  # SELECT "reviews".* FROM "reviews" INNER JOIN "bookings" ON "reviews"."booking_id" =
  #{}"bookings"."id" WHERE "bookings"."activity_id" = $1
  # Review.join(:booking).where('bookings.activity_id=?', self.id)
  # BECAUSE self is the object where are calling the reviews

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

  def reviews_average
    sum = self.reviews.sum(:rating)
    count = self.reviews.count
    if count > 0
     sum.to_f/count
    else
      0
    end
  end
end
